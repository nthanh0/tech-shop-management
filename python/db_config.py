import pyodbc

con_str = (
    "Driver={ODBC Driver 17 for SQL Server};" # Ưu tiên driver này nếu có, nếu không giữ nguyên {SQL Server}
    "Server=.\\SQLEXPRESS;"
    "Database=ShopManagement;"
    "Trusted_Connection=yes;"
    "MARS_Connection=Yes;"
)

def get_connection():
    return pyodbc.connect(con_str)

def get_json_results(cursor):
    if cursor.description is None:
        return []
    res = []
    keys = [i[0] for i in cursor.description]
    # Dùng fetchall() xong là cursor này coi như xong nhiệm vụ
    rows = cursor.fetchall()
    for val in rows:
        res.append(dict(zip(keys, val)))
    return res