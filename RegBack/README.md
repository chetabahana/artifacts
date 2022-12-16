<p align="center"> 
<a href="https://chetabahana.com/">
<img src="https://chetabahana.files.wordpress.com/2018/04/logoweb.png" alt="Chetabahana.com | Situs Belanja Jual-Beli Barang & Promo Aneka Produk Fashion, Busana Muslim, Bayi & Anak-anak, Kecantikan, Tas, Sepatu, Peralatan Rumah Tangga, Elektronik, Makanan & Minuman Kemasan, dll. Soon The E-Shop Market Leader Will Be Owned Here!"></a><br />
<a href="https://github.com/MarketLeader">  
WE ARE GOING TO WIN THE MARKET!
</a><br /><br />
</p>


# Cloud-Site-API
:hand: Selamat datang di [Halaman Project](https://github.com/MarketLeader) untuk sesi [**Google Sites API**](https://github.com/MarketLeader/Google-Sites-API).

Sesi ini adalah sesi pertama publikasi [**Tim Chetabahana**](https://github.com/chetabahana) dari sesi utama yaitu: [_Toko-Chetabahana_](https://github.com/MarketLeader/Toko-Chetabahana) sebelum menginjak ke sesi kedua [ Google-Content-API ](https://github.com/MarketLeader/Google-Content-API) dan sesi ketiga  yaitu [ Google-AdWords-API ](https://github.com/MarketLeader/Google-AdWords-API).

Di sesi ini kami akan publikasikan cara untuk memampilkan produk unggulan dari [Toko Online Chetabahana](https://chetabahana.com/)  secara dinamis di [_Situs Google Toko Chetabahana_](http://toko.chetabahana.com/) dari [Google Site](http://sites.google.com/) via [Google Sites API](https://developers.google.com/google-apps/sites/docs/developers_guide).

## Pilosopi
Philosofi utamanya adalah untuk optimasi tampilan produk secara periodik di situs bantu spt:
- Pemilahan produk unggulan: Trend, Merek Dagang, Harga dan Ketersediaan (stok).
- Kualitas conten: Relevansi, Atribut, Properti, Deskripsi, dan Resolusi Gambar.
- Atribut produk: Kategori (Taxonomi), Navigasi (Breadcrumbs).
- Struktur data: Microdata, Improve Data, Struktur HTML.
- Atribut lainnya spt Rating di Sosmed, penjual dll

## Manfaat
- Meningkatkan peluang penelusuran
- Mengoptimalkan sales return
- Kemandirian dalam strategi
- Efisiensi biaya iklan
- Kesinambungan

## Proses
Proses diatur dengan alur sbb:
- [Proses ke-1](https://github.com/MarketLeader/Google-Sites-API#google-sites-api): Mulai dari akses ke daftar produk, menyaring data sampai sunting untuk tampilkan produk.
- [Proses ke-2](https://github.com/MarketLeader/Google-Content-API#google-content-api): Mulai dari akses ke saran produk, memilah barang sampai input menjadi database produk.
- [Proses ke-3](https://github.com/MarketLeader/Google-AdWords-API#google-adwords-api): Mulai dari akses ke database produk, kinerja penjualan sampai optimasi setelan promosi.
- [Proses ke-4](#proses): Mengatur konfigurasi, penjadwalan, lalu-lintas data, dan analisa hasil dari semua proses.
<p align="center"> 
<a href="https://chetabahana.com/product?l=60&o=produk&group=389"><img src="https://user-images.githubusercontent.com/36441664/39101424-8c18e932-46c3-11e8-9eb7-cb5fcaac9540.png" alt="produk pakaian dari Toko Online Chetabahana.com"></a>Gambar-1: Contoh Struktur Data untuk <a href="https://chetabahana.com/product?l=60&o=produk&group=389">produk pakaian dari Toko Online Chetabahana</a> dalam kompetisi di Google Search
</p>

## Struktur
Struktur dari alur dijalankan dengan [_asas terbalik_](https://en.wikipedia.org/wiki/Algorithm) sbb:
```
Proses ke-4: Proses simpan atribut (Top_dir)
|-----README.md (yg sedang ada baca)
|-----Proses ke-3: Proses kelola atribut (kelola_atribut)
      |----README.md
      |----Proses ke-2: Proses data terkini (data_terkini)
           |----README.md
      |----Proses ke-1: Proses buka arsip (buka_arsip)
           |----README.md
```
- Proses ke-1: Proses buka arsip.
- Proses ke-2: Proses data terkini. 
- Proses ke-3: Proses kelola atribut.
- Proses ke-4: Proses simpan atribut.

## Repositori
Hirarki ke Top Directory (Top_dir) dari Repositori ([_Repo_](https://help.github.com/articles/create-a-repo/)):
- Proses buka arsip: [Top_dir/kelola_atribut/buka_arsip](https://github.com/MarketLeader/Google-Sites-API/tree/master/kelola_atribut/buka_arsip). Dokumentasi [_wiki_](https://help.github.com/articles/about-github-wikis/) nya [_disini_](https://github.com/MarketLeader/Google-Sites-API/wiki)
- Proses data_terkini: [Top_dir/kelola_atribut/data_terkini](https://github.com/MarketLeader/Google-Sites-API/tree/master/kelola_atribut/data_terkini). Dokumentasinya [_disini_](https://github.com/MarketLeader/Google-Sites-API/wiki)
- Proses kelola atribut: [Top_dir/kelola_atribut](https://github.com/MarketLeader/Google-Sites-API/tree/master/kelola_atribut). Dokumentasinya [_disini_](https://github.com/MarketLeader/Google-Sites-API/wiki)
- Proses simpan atribut: [Top_dir](https://github.com/MarketLeader/Google-Sites-API) (yang ini). Dokumentasinya [_disini_](https://github.com/MarketLeader/Google-Sites-API/wiki)

## License
Project ini dipublikasikan dengan lisensi berikut:  
[Apache License 2.0](https://github.com/MarketLeader/Toko-Chetabahana/blob/master/LICENSE)

## Pustaka
<p align="center"> 
<a href="https://chetabahana.com/#after_header1_3"><img src="https://user-images.githubusercontent.com/36441664/38942532-44c87736-4359-11e8-9ad4-56f7d2b68ced.png" alt="Alokasi Pustaka Online Chetabahana"></a>Gambar-2: Alokasi Pustaka Online <a href=https://chetabahana.com>Chetabahana</a>
</p>

Disarankan untuk disimak sebelum melangkah lebih jauh:  
- [Cara Buka Toko Online WinMarket dan Optimasi Internal](https://chetabahana.blogspot.com/)
- [Cara Optimasi Eksternal Toko dengan Shop SEO](https://chetabahana.wordpress.com/)
- [Channel Youtube Chetabahana](https://www.youtube.com/channel/UCZlPku9beXzdROCknYLuRNg?view_as=subscriber)
- [e-Books Chetabahana](https://www.scribd.com/user/401259110/Chetabahana)

## Penutup
Berikut ini beberapa catatan sebagai penutup:  
- Projek ini diprioriostaskan bagi peminat [e-Commerce di Indonesia](https://www.youtube.com/watch?v=dd__L8Jh2c4&t=25s) 🇮🇩
- Status masih pengembangan dan pengetesan implementasi
- Syarat untuk bergabung silahkan [Daftar ID Chetabahana](https://www.chetabahana.com/layanan/mendaftarkan-produk.html)
- Ingin [berdonasi](https://notepad-plus-plus.org/donate/donate-action.html)? welcome untuk bergabung.

Terimakasih atas kunjungannya.  
Met menyimak.. :pray:  

SALAM Sukses!  
:copyright: [**Chetabahana Project**](https://github.com/MarketLeader)  
[![profile for Chetabahana on Stack Exchange, a network of free, community-driven Q&amp;A sites](https://stackexchange.com/users/flair/5054985.png)](https://stackoverflow.com/users/4058484/chetabahana?tab=profile)   
