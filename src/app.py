import pandas as pd
from sqlalchemy import create_engine, text


# Read DB path from environment variable
DB_PATH = './data/database.db'
DB_URL = f'sqlite:///{DB_PATH}'

# Set list of database modifying queries so we can easily catch and
# handle the returns easily later.
modifications = ['INSERT', 'UPDATE', 'DELETE']

# Connect to the existing SQLite database
def connect():
    try:
        engine = create_engine(DB_URL)
        engine.connect()
        print("✅ Connected to existing SQLite database.")
        return engine
    except Exception as e:
        print(f"❌ Error connecting to database: {e}")
        return None

# Run student-defined queries from queries.sql
def run_queries_from_file(engine, filepath):
    try:
        with open(filepath, 'r') as file:
            content = file.read()

        # Split the query file into a line array
        query_lines = content.split('\n')

        # Remove empty elements
        query_lines = [l for l in query_lines if len(l) > 0]

        # Remove comments
        query_lines = [l for l in query_lines if '--' not in l]

        # Join back to single string
        queries = ' '.join(query_lines)

        # Now split on semicolon to recover individual queries
        queries = queries.split(';')

        # Loop to submit the queries, omitting the last - it will always be empty due
        # to splitting on the last queries ';'.
        for i, query in enumerate(queries[:-1], start=1):

            print(f"\n🔎 Query {i}:\n{query}")

            try:
                if any(modification in query for modification in modifications):

                    with engine.connect() as connection:
                        result = connection.execute(text(query))
                        connection.commit()
                        print(f"{result.rowcount} rows updated")

                else:
                    df = pd.read_sql(query, con=engine)
                    print(df.head())

            except Exception as e:
                print(f"❌ Error in Query {i}: {e}")


    except Exception as e:
        print(f"❌ Error processing queries from {filepath}: {e}")


# Entry point
if __name__ == "__main__":
    engine = connect()
    if engine:
        run_queries_from_file(engine, './src/sql/queries.sql')