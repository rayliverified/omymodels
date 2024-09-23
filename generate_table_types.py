import os
import subprocess
import sys


def init_database():
    """Calls the sql-up.sh script to reset the database."""
    try:
        # Path to the sql-up.sh script relative to the Python script
        script_dir = os.path.dirname(os.path.abspath(__file__))
        sql_up_script = os.path.join(script_dir, "..", "database", "sql-up.sh")

        # Ensure sql-up.sh is executable
        subprocess.run(["chmod", "+x", sql_up_script], check=True)

        # Run the script
        subprocess.run([sql_up_script], check=True, text=True)
        print("Database reset and migrations applied successfully using sql-up.sh.")
    except subprocess.CalledProcessError as e:
        print("Error resetting database with sql-up.sh:")
        print(e)
        sys.exit(1)


def export_mysql_schema(user, password, host, database, output_file):
    """Exports the MySQL schema to a SQL file using mysqldump."""
    command = [
        "mysqldump",
        f"--user={user}",
        f"--host={host}",
        "--no-data",
        "--skip-add-drop-table",
        "--skip-add-locks",
        "--skip-comments",
        "--skip-triggers",
        "--skip-routines",
        "--no-create-db",
        "--skip-dump-date",
        "--skip-tz-utc",
        database,
    ]

    try:
        with open(output_file, "w") as f:
            subprocess.run(
                command, stdout=f, stderr=subprocess.PIPE, check=True, text=True
            )
        print(f"Schema exported to {output_file}")
    except subprocess.CalledProcessError as e:
        print("Error exporting schema:")
        print(e.stderr)
        sys.exit(1)


def clean_ddl(input_file, output_file):
    """Cleans up the SQL DDL to remove MySQL-specific syntax and undesired code."""
    with open(input_file, "r") as f:
        lines = f.readlines()

    cleaned_lines = []
    skip_block = False
    for line in lines:
        stripped_line = line.strip()

        # Skip MySQL-specific comments and commands
        if stripped_line.startswith("/*!") and stripped_line.endswith("*/;"):
            continue
        if stripped_line.startswith("SET "):
            continue
        # Remove lines starting with '--'
        if stripped_line.startswith("--"):
            continue
        # Remove ENGINE and CHARSET options if desired
        if "ENGINE=" in line:
            line = line.split("ENGINE=")[0].rstrip(" ,\n") + ";\n"
        # Remove CONSTRAINT lines
        if stripped_line.startswith("CONSTRAINT"):
            continue
        # Remove UNIQUE KEY lines
        if stripped_line.startswith("UNIQUE KEY"):
            continue
        # Remove PRIMARY KEY lines
        if stripped_line.startswith("PRIMARY KEY"):
            continue

        # Start skipping blocks that begin with /*!50001 CREATE VIEW
        if stripped_line.startswith("/*!"):
            skip_block = True
            continue

        # Stop skipping when we reach the end of the block
        if skip_block and stripped_line.endswith("*/;"):
            skip_block = False
            continue

        # Skip lines while we're in a block to be removed
        if skip_block:
            continue

        cleaned_lines.append(line)

    with open(output_file, "w") as f:
        f.writelines(cleaned_lines)
    print(f"Cleaned DDL saved to {output_file}")


def adjust_type_mappings():
    """Adjusts type mappings in OhMyModels for MySQL data types."""
    from omymodels.models.pydantic import types

    # Map 'tinyint(1)' to 'bool'
    types.types_mapping.update({"tinyint(1)": "bool"})


def generate_pydantic_models(ddl_file, models_output_file):
    """Generates Pydantic models using OhMyModels."""
    adjust_type_mappings()
    from omymodels import create_models

    with open(ddl_file, "r") as f:
        ddl = f.read()
    result = create_models(ddl, models_type="pydantic", no_auto_snake_case=True)
    models_code = result["code"]
    with open(models_output_file, "w") as f:
        f.write(models_code)
    print(f"Pydantic models generated and saved to {models_output_file}")


if __name__ == "__main__":
    user = "root"
    password = ""
    host = "localhost"
    database = "nocd_v2"

    """Automates the table models generation."""
    schema_file = "V001__tables_baseline.sql"
    cleaned_schema_file = "V001__tables_baseline_cleaned.sql"
    models_output_file = "models.py"

    print("Running...")

    clean_ddl(schema_file, cleaned_schema_file)
    generate_pydantic_models(cleaned_schema_file, models_output_file)
