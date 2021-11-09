import mysql.connector

mydb = mysql.connector.connect(
    host="localhost",
    user='root',
    password='Taolaisowa123',
    database="store_cms_plusplus"
)
mycursor = mydb.cursor()

def getStatisticByMaker():
    str = "select maker, sum(sold), sum(sold*price) 'totalMoney' from laptop group by maker ;"
    mycursor.execute(str)
    myresult = mycursor.fetchall()
    for x in myresult:
        maker = x[0]
        sold = x[1]
        totalMoney = x[2]
        print(f" Maker: {maker}, Sold: {sold}, totalMoney: {totalMoney}")   

getStatisticByMaker()