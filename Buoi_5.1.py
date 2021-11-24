import mysql.connector

mydb = mysql.connector.connect(
    host="localhost",
    user='root',
    password='Taolaisowa123',
    database="store_cms_plusplus"
)
mycursor = mydb.cursor()

def insert(input_name,input_link,input_maker,input_type):
    str2 = f"insert into laptop (name,url,maker,type) values ('{input_name}','{input_link}','{input_maker}','{input_type}');"
    mycursor.execute(str2)
    mydb.commit()
    myresult1 = mycursor.fetchall()
    print(myresult1)

def search():
    print("Mời bạn nhập tên sản phẩm cần tìm: ")
    search_name = input()
    str1 = f"select * from laptop where name = '{search_name}' ;"
    mycursor.execute(str1)
    myresult = mycursor.fetchall()
    print(myresult)

insert('thinkpad','abc','lenovo','abc')
search()
