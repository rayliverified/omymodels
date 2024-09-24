import subprocess
import sys


def export_mysql_schema(user, host, database, output_file):
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
        if stripped_line.startswith("FULLTEXT KEY"):
            continue
        # Remove KEY lines
        if stripped_line.startswith("KEY "):
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

        # Handle GENERATED columns
        if "GENERATED" in line:
            generated_index = line.index("GENERATED")
            line = line[:generated_index].rstrip() + ",\n"

        # Handle enum fields
        if "enum(" in line:
            enum_start = line.find("enum(")
            enum_end = find_closing_parenthesis(line, enum_start)
            if enum_end != -1:
                line = line[: enum_end + 1] + ",\n"

        # Handle set fields
        if "set(" in line:
            set_start = line.find("set(")
            set_end = find_closing_parenthesis(line, set_start)
            if set_end != -1:
                line = line[: set_end + 1] + ",\n"

        cleaned_lines.append(line)

    with open(output_file, "w") as f:
        f.writelines(cleaned_lines)
    print(f"Cleaned DDL saved to {output_file}")


def find_closing_parenthesis(s, start):
    count = 0
    for i in range(start, len(s)):
        if s[i] == "(":
            count += 1
        elif s[i] == ")":
            count -= 1
            if count == 0:
                return i
    return -1  # No matching closing parenthesis found


def adjust_type_mappings():
    """Adjusts type mappings in OhMyModels for MySQL data types."""
    from omymodels.models.pydantic import types

    # Map 'tinyint(1)' to 'bool'
    types.types_mapping.update({"tinyint(1)": "bool"})
    types.types_mapping.update({"enum": "str"})


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
    host = "localhost"
    database = "nocd_v2"

    """Automates the table models generation."""
    schema_file = "V001__tables_baseline.sql"
    cleaned_schema_file = "V001__tables_baseline_cleaned.sql"
    models_output_file = "models.py"

    # export_mysql_schema(user, host, database, schema_file)
    clean_ddl(schema_file, cleaned_schema_file)
    generate_pydantic_models(cleaned_schema_file, models_output_file)
