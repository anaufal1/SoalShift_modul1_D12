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
   Karena pada file setiap kolom dipisahkan oleh koma, maka perlu dipisah dahulu setiap kolomnya menggunakan fungsi split. Setelah itu, dicari total quantity dari setiap negara pada tahun 2012 dengan memasukkan setiap quantity dari satu negara ke dalam array “quantity”.Kemudian dari setiap anggota array quantity, dicari nilai yang paling besar dengan membandingkan semua anggota dari array quantity, dan ditampilkan beserta indexnya ( nama negaranya )

Untuk mencari tiga product line dengan quantity terbanyak, maka setiap perlu menambahkan quantity untuk setiap product linenya. Hal ini berlaku untuk setiap product line dengan negara United States dan dijual pada tahun 2012. Kemudian setiap quantity dari product line dimasukkan ke array “productline”.

Untuk mencari tiga productline, pertama diinisialisasikan 6 variabel, tiga untuk jumlah quantity (prod1, prod2, prod3) , dan tiga untuk nama productline (maxprod1, maxprod2, maxprod3). Kemudian untuk setiap nilai anggota array productline dibandingkan.

Sama dengan langkah-langkah sebelumnya, untuk mencari product dengan quantity terbanyak, perlu menambahkan setiap quantity untuk productnya. Kemudian setiap product dimasukkan ke sebuah array yang bernama product. Product yang ditambahkan hanya berlaku untuk product dengan negara dari poin a (“United States”) , product line dari poin b (“Personal accessories, Camping Equipment, Outdoor protection), dan tahun 2012. Kemudian setiap anggota array product dibandingkan sehingga didapat tiga product dengan quantity terbanyak.

no.3

    Buatlah sebuah script bash yang dapat menghasilkan password secara acak sebanyak 12 karakter yang terdapat huruf besar, huruf kecil, dan angka. Password acak tersebut disimpan pada file berekstensi .txt dengan ketentuan pemberian nama sebagai berikut:
        a. Jika tidak ditemukan file password1.txt maka password acak tersebut disimpan pada file bernama password1.txt
        b. Jika file password1.txt sudah ada maka password acak baru akan disimpan pada file bernama password2.txt dan begitu seterusnya.
        c. Urutan nama file tidak boleh ada yang terlewatkan meski filenya dihapus.
        d. Password yang dihasilkan tidak boleh sama.
        
   penyelesaian
   Hal yang dilakukan pertama kali yaitu menghitung sekaligus memasukkan isi file password.txt kedalam array (count). Hal ini berguna untuk menentukan file keberapa ketika sebuah password terbuat. Selain itu juga bisa untuk membandingkan setiap password agar tidak ada yang sama.

Untuk generate password sendiri menggunakan command ini : pass=head /dev/urandom | tr -dc A-Za-z0-9 | head -c 12

Urandom digunakan untuk meng-generate sembarang karakter. Namun karena output yang dihasilkan berupa pseudorandom number, maka perlu diterjemahkan (translate) ke karakter. Maka diperlukan command tr. Tr akan menerjemahkannya kedalam huruf atau angka. Karena kita hanya memerlukan 12 karakter, maka ditambahkan head -c 12.

Setelah password baru terbentuk, dilakukan looping untuk melihat apakah ada password yang ada sebelumnya. Jika ada, maka dilakukan generate lagi. Jika tidak, maka password akan dimasukkan ke file password[i].txt dengan I adalah indeks yang ada.

4.      4. Lakukan backup file syslog setiap jam dengan format nama file “jam:menit tanggal-bulan-tahun”. Isi dari file backup terenkripsi dengan konversi huruf (string manipulation) yang disesuaikan dengan jam dilakukannya backup misalkan sebagai berikut:
        a. Huruf b adalah alfabet kedua, sedangkan saat ini waktu menunjukkan pukul 12, sehingga huruf b diganti dengan huruf alfabet yang memiliki urutan ke 12+2 = 14.
        b. Hasilnya huruf b menjadi huruf n karena huruf n adalah huruf ke empat belas, dan seterusnya. 
        c. setelah huruf z akan kembali ke huruf a
        d. Backup file syslog setiap jam.
        e. dan buatkan juga bash script untuk dekripsinya.

