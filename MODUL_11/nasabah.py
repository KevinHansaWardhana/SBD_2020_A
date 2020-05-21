import mysql.connector

cnx = mysql.connector.connect(user='root', database='perbankan')
cursor = cnx.cursor()
cursor.execute("""SELECT * FROM nasabah
               WHERE nasabah.id_nasabah IN(select transaksi.id_nasabahFK
                FROM transaksi where tanggal between '2009-11-10' AND '2009-12-06')""")
nasabah = cursor.fetchall()
for x in nasabah:
  print(x)

cursor.close()
cnx.close()
