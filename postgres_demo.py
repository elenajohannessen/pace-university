# Sample of Python / PostgreSQL 
# ACID is implemented

# pip3 install psycopg2
# pip3 install tabulate

import psycopg2
from tabulate import tabulate

print("Beginning")



con = psycopg2.connect(
    host="localhost",
    database="project_db",
    user="postgres",
    password="postgres")

print(con)