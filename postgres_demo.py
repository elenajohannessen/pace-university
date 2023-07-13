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

#For isolation: SERIALIZABLE
con.set_isolation_level(3)

#For atomicity
con.autocommit = False

try:
    cur = con.cursor()
    # QUERY
    cur.execute("insert into depot(dep,addr, volume) select 'dd1', addr, volume from depot where dep = 'd1'")
    cur.execute("update stock set dep = 'dd1' where dep = 'd1'")
    cur.execute("delete from depot where dep = 'd1'")

except (Exception, psycopg2.DatabaseError) as err:
    print(err)
    print("Transactions could not be completed so database will be rolled back before start of transactions")
    con.rollback()
finally:
    if con:
        con.commit()
        cur.close
        con.close
        print("PostgreSQL connection is now closed")

print("End")