import mysql.connector

mydb = mysql.connector.connect(
    host="localhost",
    user='root',
    password='Taolaisowa123',
    database="store_cms_plusplus"
)
mycursor = mydb.cursor()

def show(data):
  for x in data:
    id = x[0]
    name = x[1]
    maker = x[3]
    type = x[4]
    ram = x[5]
    cpu = [6]
    ssd = x[7]
    hdd = x[8]
    price = x[9]
    card = x[10]
    screen_resolution = x[11]
    screen_size = x[12]
    sold = x[13]
    print(f"id: {id} , name: {name}, maker: {maker}, type: {type}, ram: {ram}, cpu: {cpu}, ssd: {ssd}, hdd: {hdd}, price: {price}, card: {card}, screen_resolution: {screen_resolution}, screen_size: {screen_size}, sold: {sold} ")


#print("Bạn muốn tìm kiếm theo yếu tố gì: ")
#ip = input()


def found_maker():
  print("Moi ban nhap vao tu khoa tim kiem: ")
  ip_maker = input()
  print("Ket qua")
  str_maker = f"SELECT * FROM laptop where maker='{ip_maker}';"
  mycursor.execute(str_maker)
  myresult = mycursor.fetchall()
  show(myresult)

def found_type():
  print("Moi ban nhap vao tu khoa tim kiem: ")
  ip_type = input()
  print("Ket qua")
  str_type = f"SELECT * FROM laptop where type='{ip_type}';"
  mycursor.execute(str_type)
  myresult = mycursor.fetchall()
  show(myresult)

def found_screen_resolution():
  print("Moi ban nhap vao tu khoa tim kiem: ")
  ip_screen_resolution = input()
  print("Ket qua")
  str_screen_resolution = f"SELECT * FROM laptop where screen_resolution='{ip_screen_resolution}';"
  mycursor.execute(str_screen_resolution)
  myresult = mycursor.fetchall()
  show(myresult)

def found_sold():
  print("Danh sách laptop giá > 10000000 và số lượng đã bán >= 30")
  str_sold = f"SELECT * FROM laptop where price>10000000 and sold>=30;"
  mycursor.execute(str_sold)
  myresult = mycursor.fetchall()
  show(myresult)

def found_price():
  print("Moi ban nhap vao khoang gia: ")
  ip_price_min = input()
  print("Đến: ")
  ip_price_max = input()
  print("Ket qua")
  str_price = f"SELECT * FROM laptop where price between '{ip_price_min}' and {ip_price_max};"
  mycursor.execute(str_price)
  myresult = mycursor.fetchall()
  show(myresult)

print("Ban muon tim kiem theo: ")
ip = input()
if ip=="maker":
  found_maker()
if ip=="type":
  found_type()
if ip=="screen_resolution":
  found_screen_resolution()
if ip=="sold":
  found_sold()
if ip=="price()":
  found_price()


