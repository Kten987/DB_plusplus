import mysql.connector

mydb = mysql.connector.connect(
    host="localhost",
    user='root',
    password='Taolaisowa123',
    database="store_cms_plusplus"
)
mycursor = mydb.cursor()

def update_sold(id,up_sold):
    str = f"update laptop set sold = '{up_sold}' WHERE id='{id}';"
    mycursor.execute(str)
    mydb.commit()
    mycursor.execute(f"select * from laptop where id = '{id}';")
    myresult = mycursor.fetchall()
    print(myresult)

update_sold('6',"120")
