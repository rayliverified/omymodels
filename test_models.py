import datetime
import random
import string
from typing import Any, Dict, List, Type

import mysql.connector
from pydantic import BaseModel

# Database connection details
DB_HOST = "localhost"
DB_USER = "root"
DB_NAME = "nocd_v2"


def get_db_connection():
    return mysql.connector.connect(
        host=DB_HOST, user=DB_USER, password="", database=DB_NAME
    )


def generate_sample_data(model: Type[BaseModel]) -> Dict[str, Any]:
    sample_data = {}
    for field_name, field in model.__fields__.items():
        field_info = field.field_info
        if field_info.default is not None:
            sample_data[field_name] = field_info.default
        elif field_info.default_factory is not None:
            sample_data[field_name] = field_info.default_factory()
        elif field.type_ == int:
            sample_data[field_name] = random.randint(1, 1000)
        elif field.type_ == float:
            sample_data[field_name] = random.uniform(1.0, 100.0)
        elif field.type_ == str:
            sample_data[field_name] = "".join(
                random.choices(string.ascii_letters, k=10)
            )
        elif field.type_ == bool:
            sample_data[field_name] = random.choice([True, False])
        elif field.type_ == datetime.datetime:
            sample_data[field_name] = datetime.datetime.now()
        elif field.type_ == List[Any] or field.type_ == Dict[Any, Any]:
            sample_data[field_name] = {}
        else:
            sample_data[field_name] = None
    return sample_data


def get_column_name(field):
    if field.field_info.extra.get("alias"):
        return field.field_info.extra["alias"]
    return field.name


def test_model(model: Type[BaseModel]):
    table_name = model.__name__
    sample_data = generate_sample_data(model)

    # Write to database
    with get_db_connection() as connection:
        cursor = connection.cursor()
        columns = ", ".join(
            [get_column_name(field) for field in model.__fields__.values()]
        )
        placeholders = ", ".join(["%s"] * len(sample_data))
        sql = f"INSERT INTO {table_name} ({columns}) VALUES ({placeholders})"
        cursor.execute(sql, list(sample_data.values()))
        connection.commit()
        inserted_id = cursor.lastrowid

    # Read from database
    with get_db_connection() as connection:
        cursor = connection.cursor(dictionary=True)
        sql = f"SELECT * FROM {table_name} WHERE id = %s"
        cursor.execute(sql, (inserted_id,))
        result = cursor.fetchone()

    # Parse into model
    try:
        parsed_model = model(**result)
        print(f"Test passed for {table_name} {parsed_model}")
    except Exception as e:
        print(f"Test failed for {table_name}: {str(e)}")

    # Clean up: delete the inserted row
    with get_db_connection() as connection:
        cursor = connection.cursor()
        sql = f"DELETE FROM {table_name} WHERE id = %s"
        cursor.execute(sql, (inserted_id,))
        connection.commit()


def main():
    models = [
        cls
        for cls in globals().values()
        if isinstance(cls, type) and issubclass(cls, BaseModel) and cls != BaseModel
    ]

    for model in models:
        test_model(model)


if __name__ == "__main__":
    main()
