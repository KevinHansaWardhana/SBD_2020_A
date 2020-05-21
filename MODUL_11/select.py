from datetime import date, datetime, timedelta
import mysql.connector

cnx = mysql.connector.connect(user='root', database='perbankan')
cursor = cnx.cursor()
query = ("SELECT id_nasabahFK,jenis_transaksi,tanggal,jumlah FROM transaksi WHERE YEAR(tanggal)=2020")
cursor.execute(query)
for (id_nasabahFK,jenis_transaksi,tanggal,jumlah)in cursor:
    print("nasabah dengan ID {} melakukan transaksi {} pada {:%d %b %Y} sejumlah {}".format(id_nasabahFK,jenis_transaksi,tanggal,jumlah))     
cursor.close()
cnx.close()
