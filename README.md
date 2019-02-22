# SoalShift_modul1_D12

05111740000138 - Ahmad Naufal H

05111740000095 - Shawn Timothy Mulya P


PENJELASAN

No1

Anda diminta tolong oleh teman anda untuk mengembalikan filenya yang telah dienkripsi oleh seseorang menggunakan bash script, file yang dimaksud adalah nature.zip. Karena terlalu mudah kalian memberikan syarat akan membuka seluruh file tersebut jika pukul 14:14 pada tanggal 14 Februari atau hari tersebut adalah hari jumat pada bulan Februari.
Hint: Base64, Hexdump

untuk menyelesaikan soal ini, pertama download dulu file nature.zip nya, lalu extract manual ataupun dengan terminal.
lalu buat sebuah folder untuk tempat menyimpan output
kemudian masuk ke terminal dan buat file dengan format .sh berisi


#!/bin/bash
a=0
for gambar in /home/absolutlubis/Documents/soalshift1/nature/*.jpg
do
base64 -d $gambar | xxd -r > /home/absolutlubis/Documents/soalshift1/bukagambar$
a=$((a+1))
done


disini dijelaskan pertama membuat variabel a dengan nilai 0 untuk loop, a=$((a+1))
lalu menggunakan variabel gambar untuk masuk ke forlder nature yang telah di extract tadi
lalu mendecrypt semua file yang ada di gambar dengan command base64 dan xxd -r lalu output nya diletakkan di folder yang telah dibuat (untuk ini folder bukagambar)
agar loop berhenti gunakan done




No2

   Anda merupakan pegawai magang pada sebuah perusahaan retail, dan anda diminta untuk memberikan laporan berdasarkan file WA_Sales_Products_2012-14.csv. Laporan yang diminta berupa:
        a. Tentukan negara dengan penjualan(quantity) terbanyak pada tahun 2012.
        b. Tentukan tiga product line yang memberikan penjualan(quantity) terbanyak pada soal poin a.
        c. Tentukan tiga product yang memberikan penjualan(quantity) terbanyak berdasarkan tiga product line yang didapatkan pada soal poin b.
   
   untuk menyelesaikannya.
