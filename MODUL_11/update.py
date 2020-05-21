from datetime import date, datetime, timedelta
import mysql.connector

cnx = mysql.connector.connect(user='root', database='perbankan')
cursor = cnx.cursor()

delete_transaksi=("UPDATE transaksi SET jenis_transaksi=%s WHERE no_transaksi=%s")
value=("debit","34")
cursor.execute(delete_transaksi,value)

cnx.commit()

print("Data berhasil di ubah")
