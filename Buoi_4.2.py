import mysql.connector

mydb = mysql.connector.connect(
    host="localhost",
    user='root',
    password='Taolaisowa123',
    database="store_cms_plusplus"
)
mycursor = mydb.cursor()

def getCounterByMaker():
    str = "select maker, count(maker) 'quantity' from laptop group by maker order by quantity desc;"
    mycursor.execute(str)
    myresult = mycursor.fetchall()
    for x in myresult:
        maker = x[0]
        quantity = x[1]
        print(f" Maker: {maker}, Quantity: {quantity}")

getCounterByMaker()