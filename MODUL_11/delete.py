from datetime import date, datetime, timedelta
import mysql.connector

cnx = mysql.connector.connect(user='root', database='perbankan')
cursor = cnx.cursor()

delete_transaksi=("DELETE FROM transaksi WHERE no_transaksi=35")
cursor.execute(delete_transaksi)

cnx.commit()

print("Data berhasil dihapus")
