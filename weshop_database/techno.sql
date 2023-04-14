-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 03 Bulan Mei 2021 pada 00.50
-- Versi server: 10.4.17-MariaDB
-- Versi PHP: 8.0.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `techno`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `banner`
--

CREATE TABLE `banner` (
  `banner_id` int(10) NOT NULL,
  `banner` varchar(100) NOT NULL,
  `gambar` varchar(150) NOT NULL,
  `link` varchar(500) NOT NULL,
  `status` enum('on','off') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `banner`
--

INSERT INTO `banner` (`banner_id`, `banner`, `gambar`, `link`, `status`) VALUES
(6, 'ARBIT', 'banner arbit plug.png', 'index.php?page=detail&barang_id=3', 'on'),
(7, 'BARDI', 'bardi banner.png', 'index.php?page=detail&barang_id=8', 'on');

-- --------------------------------------------------------

--
-- Struktur dari tabel `barang`
--

CREATE TABLE `barang` (
  `barang_id` int(10) NOT NULL,
  `kategori_id` int(10) NOT NULL,
  `nama_barang` varchar(250) NOT NULL,
  `spesifikasi` text NOT NULL,
  `gambar` varchar(300) NOT NULL,
  `harga` int(10) NOT NULL,
  `stok` tinyint(1) NOT NULL,
  `status` enum('on','off') NOT NULL,
  `link_scrap` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `barang`
--

INSERT INTO `barang` (`barang_id`, `kategori_id`, `nama_barang`, `spesifikasi`, `gambar`, `harga`, `stok`, `status`, `link_scrap`) VALUES
(1, 3, 'PORTABLE PLUG 16A', '<p>BARDI Smart Portable Plug adalah steker pintar yang bisa dimati-nyalakan melalui aplikasi. Dengan plug ini, segala perangkat dengan daya listrik 220v dapat diputus-sambung arus sesuai keinginan.<br /><br />Plug BARDI memiliki fitur pemantauan pemakaian listrik dengan kapasitas maximum 16 Ampere. Plug ini juga memiliki keamanan maksimal dengan child safety agar anak tidak dapat menusuk masuk soket dan lengkap dengan fitur grounding standard Eropa.<br /><br />Plug BARDI sangat mudah dipasang, tinggal dihubungkan ke soket EU yang paling umum di Indonesia dan ukuran plug yang minimalis memastikan posisi lubang lain tidak akan terhalang.</p>', 'Smart-Plug-Wifi.jpg', 125000, 9, 'on', ''),
(2, 3, 'SMART WALL SOCKET EU – 16A – WHT/BLK', '<p>BARDI Smart Wall Socket adalah soket pintar yang bisa dimati-nyalakan melalui aplikasi. Dengan soket ini, segala perangkat dengan daya listrik 220v dapat di putus sambung arus sesuai keinginan.<br /><br />Soket BARDI memiliki adaptor universal dengan kapasitas maximum 16 Ampere. Soket BARDI sangat mudah dipasang, dudukan dan kabel sama persis dengan kotak kontak tradisional sehingga bisa dapat langsung di tukar tanpa penarikan kabel atau mengubah dudukan.</p>', 'Wall-Socket-EU.png', 190000, 10, 'on', ''),
(3, 3, 'RBIT Wifi Smart Plug Socket 16A with Power Meter Works Alexa Google IFTTT Siri Smart Life / Tuya', '<p>Kontrol peralatan electronik melalui handphone dan perintah suara dari mana saja dan kapan saja!<br /><br />Support Android / iOS , Download APP &quot;Smart Life&quot; atau &quot;Tuya&quot; , With precise power monitor<br /><br />Functions:<br />+ kontrol on &amp; off secara wireless dimana saja kapan saja<br />+ terhubung menggunakan wifi<br />+ energy monitoring, sehingga dapat memantau konsumsi listrik<br />+ dapat diatur timer kapan harus on dan off secara otomatis<br />+ kompatibel dengan voice control<br />+ kompatibel dengan IOS / ANDROID<br /><br />Overload Protection : Yes<br />Input Voltage: AC :100V/250V<br />MAX.Current : 16A<br />Max Watts : 3520 Watts<br />Wireless Standards : 2.4Ghz 802.11 b/g/n<br />Working Temperature : .-20?~80?<br />Working Humidity : 50%~90%<br />Warranty : 1 Year<br />Product size : mini 43x43x83mm<br /><br />Package include :<br />- 1x Smart Wifi EU Plug 16A with precise power monitor<br />- 1x Manual book<br /><br />smart home</p>', '45996324_786a1d39-77a8-404d-bad9-2585c8ec5a1c_2048_2048.jfif', 130000, 5, 'on', ''),
(6, 4, 'ARBIT Smart WiFi Door Lock', '<p>Posisi Handle Pintu dapat diputar ke kiri atau kekanan</p><p>Spec :</p><ul><li>Bahan / Material: Allumunium Alloy</li><li>Fingerprint Sensor : Semiconductor</li><li>Sistem Unlock: Fingerprint, RFID, Password, dan Mobile App , manual key</li><li>Wifi Protocol : 2.4 Ghz</li></ul><p>5 Cara untuk unlock :</p><ul><li>Fingerprint</li><li>RFID Card</li><li>PIN</li><li>Manual Key ( Dari bawah )</li><li>Remote unlock dari applikasi</li></ul>', 'Rumah-Pintar_Marketplace-Product-09.jpg', 2200000, 6, 'on', ''),
(7, 4, 'DOOR LOCK IP54', '<p>BARDI Smart Door Lock with Handle adalah gagang pintu berikut kunci yang bisa di kunci dan buka melalui aplikasi, kunci RFID, pin, kunci tradisional dan fingerprint.<br /><br />Kunci ini dilengkapi dengan waterproof IP54 yaitu dapat kena tampias hujan tapi tidak tahan terhadap curahan hujan (splash proof bukan waterproof).<br /><br />Kunci pintu BARDI dilengkapi dengan Batre yang dapat di cas, maka tinggal bobok pintu dan pasang saja tanpa perlu ada penarikan kabel, batre apabila di gunakan 10 kali dalam sehari dapat bertahan 6 bulan.</p>', 'DOOR-LOCK.jpg', 1850000, 5, 'on', ''),
(8, 2, 'SMART BULB 9W – RGBWW', '<p>BARDI Smart LED Bulb 9W RGBWW adalah bohlam pintar yang bisa dimati-nyalakan, diubah warna dan diatur kecerahan melalui aplikasi selama terkoneksi wifi/hotspot.<br /><br />Lampu ini memiliki kecerahan maksimal di 900 lumens dan bisa diredupkan hingga 90 lumens, kombinasi warna RGB hingga 16 juta warna dan gradasi putih dari 2700k (warm white) hingga 6500k (cool white).<br /><br />Bohlam ini sangat mudah di pasang, tinggal di putar kepada ulir E27, fitting lampu paling umum di Indonesia.</p><p> </p>', 'Smart-Light-Bulb-9W-RGBWW.jpg', 115000, 10, 'on', ''),
(9, 4, 'ARBIT - Smart Home WiFi Door Lock Without Handle Fingerprint TUYA - Hitam Non Glass', '<p>Variant :<br />- Hitam : Cocok untuk pintu kayu, sliding door, aluminium frame door, dll (tebal 3.5cm keatas)<br />*pastikan kusen dan pintu memiliki rata yang sama<br />- Silver : untuk pintu Kaca borderless / frameless (tebal 8-12mm)<br /><br />Spec :<br />- Bahan / Material: Zinc Alloy<br />- LCD Screen : 0.96 inch<br />- Stainless steel Mortise with Hook System : 7mm 304 stainless steel hook<br />- Kapasitas Fingerprint: 200pcs<br />- Code capacity: 30 groups, support 6-12 digitals<br />- IC card capacity: 500 groups<br />- Language: English and Chinese<br />- Working Temp.: -20oC-55oC<br />- Door thickness: 8-12mm for Pintu Kaca ( Variant Silver), 3.5cm keatas unttuk pintu kayu (Variant Hitam)<br />- Wifi Protocol : 2.4 Ghz<br />- Apps : Smart Life atau TUYA<br /><br />4 Cara untuk unlock :<br />1. Fingerprint<br />2. RFID Card<br />3. PIN<br />4. Remote unlock dari applikasi<br /><br />Feature :<br />- FAST RESPONSE FINGERPRINT. Sensor fingerprint yang dapat merespon kurang dari setengah detik<br />- BATERAI TAHAN LAMA. Diperkirakan dapat bertahan hingga 1 tahun dengan penggunaan 10x sehari<br />- BUAT PASSWORD SEMENTARA. Buat hingga puluhan password yang berlaku sementara melalui mobile app<br />- ANTI SPY PASSWORD. Masukan password palsu hingga 24 digit dan kombinasikan dengan password sesungguhnya<br />- Support long distance remote control via APP, like Open the door remotely, share temporary password and dynamic password, and RFID cards manage.<br />- Support fingerprint, password, RFID card, mechanical key unlock, make your home smarter.<br />- Low Battery Alarm function:When the battery is running out, it will automatically issue &quot;didi&quot;prompt tone.<br />- Equipped with USB emergency charging port.<br /><br />Package include?d<br />Main panel x1<br />Side panel x 1<br />RFID card x 2<br />Accessories bag x 1<br />Manual Book x 1<br /><br />Garansi : 1 Tahun</p>', '100289386_2a753113-5c3e-4d0d-a280-fc2bb6ae96e0_2048_2048 (1).png', 3899000, 10, 'on', ''),
(10, 2, 'ARBIT Smart WiFi LED Bulb (9W)', '<p>E27 Wifi Smart Bulb Led 9W RGB+CW+WW A60 (950 Lumens)</p><p>Cahaya Terang! Bisa diatur temperature favorite mu : Warm White (Kuning) atau Cool White (Putih) bahkan warna warni</p><p>SMART FUNCTIONS:</p><ul><li>Kontrol bohlam pintar melalui handphone dan perintah suara dari mana saja dan kapan saja!</li><li>Kamu juga dapat mengatur tingkat kecerahan bohlam.</li><li>Mengganti warna lampu sesuai yang diinginkan</li><li>Set timer kapan lampu dapat menyala atau mati secara otomatis</li><li>Tidak perlu hub / gateway</li><li>Dapat di kontrol melalui voice assistance</li></ul>', 'Rumah-Pintar_Marketplace-Product-01.jpg', 170000, 4, 'on', ''),
(11, 2, 'SMART BULB 12W – RGBWW', '<p>BARDI Smart LED Bulb 12W RGBWW adalah bohlam pintar yang bisa dimati-nyalakan, diubah warna dan diatur kecerahan melalui aplikasi selama terkoneksi wifi/hotspot.<br /><br />Lampu ini memiliki kecerahan maximal di 1050 lumens dan bisa di redupkan hingga 110 lumens, kombinasi warna RGB hingga 16 juta warna dan gradasi putih dari 2700k (warm white) hingga 6500k (cool white).<br /><br />Bohlam ini sangat mudah di pasang, tinggal di putar kepada ulir E27, fitting lampu paling umum di Indonesia.</p>', 'Smart-Light-Bulb-12W-RGBWW.jpg', 125000, 2, 'on', ''),
(12, 2, 'SMART BULB 9W – Dim CCT', '<p>BARDI Smart LED Bulb 9W WW adalah bohlam pintar yang bisa dimati-nyalakan, diubah putih ke kuning dan di atur kecerahannya melalui aplikasi selama terkoneksi wifi/hotspot.<br /><br />Lampu ini memiliki kecerahan maximal di 810 lumens dan bisa di redupkan hingga 80 lumens, dapat diatur gradasi warna putih dari 2700k (warm white) hingga 6500k (cool white).<br /><br />Bohlam ini sangat mudah di pasang, tinggal di putar kepada ulir E27, fitting lampu paling umum di Indonesia.</p>', 'Smart-Light-Bulb-9W-Dim-CCT.jpg', 100000, 9, 'on', ''),
(13, 2, 'Mi LED Smart Bulb', '<p>Spesifikasi :<br />Tipe Port: E27<br />Pancaran Cahaya: 800lm<br />Suhu Warna: 1700K-6500K<br />Masa Pakai LED: Sekitar 25,000 Jam<br />Koneksi Nirkabel Wi-Fi IEEE 802.11 b/g/n 2.4GHz<br />Nilai input: 220-240V~50/60Hz<br />Nilai Daya: 10W<br /><br />- Beri Sentuhan warna pada rumahmu<br />16 juta warna | kecerahan dan suhu warna dapat disesuaikan | Pengontrolan yang cerdas | Pencahayaan yang di kustomisasi<br /><br />- 16 JUTA WARNA KEMUNGKINAN YANG TAK TERBATAS<br />Pencahayaan warna RGB dan konfigurasi bohlam 4000k memungkinkan mi LED Smart Bulb untuk memberikan warna yang tepat untuk mood apa pun.<br /><br />Cahaya biru membantu kamu untuk lebih rileks, cahaya pink sangat cocok untuk malam yang romantis. kamu dapat menemukan cahaya yang tepat untuk setiap suasana<br /><br />- Dirancang untuk fungsional<br />MI LED Smart Bulb dirancang sebagai bola lampu yang praktis, mulai dari bentuknya hingga material yang dipilih dengan cermat. Eksterior berpola silang yang sederhana memberikan tampilan yang lembut pada bohlam, yang juga memastikan panas dapat dengan mudah hilang. Filter luar terbuat dari bahan penyebar cahaya yang sangat transparan, dan struktur aluminum yang tertutup plastik memungkinan pembuangan panas yang lebih banyak lagi, sehingga masa pakai bohlam menjadi lebih panjang.<br /><br />- Kecerahan cahaya yang bisa diatur sesuka kamu<br />Menerangi seluruh ruangan dengan kecerahan setinggi 800 lumens, kecerahan dapat dengan mudah diatur dari 80 hingga 800 lumen, sehingga kamu bisa mendapatkan kecerahan yang tepat di sepanjang hari.</p>', 'pms_1550644986.94648143.png', 300000, 8, 'on', ''),
(14, 2, 'Mi LED Smart Bulb Essential', '<p>Mi Smart LED Bulb Essential<br />Hiasi rumah Anda dengan warna<br />16 juta warna | Kecerahan dan temperatur warna yang dapat disesuaikan | Smart control<br /><br />Kecerahan dan temperatur warna dapat disesuaikan<br />untuk memenuhi kebutuhan harian Anda<br />Mode Daylight memungkinkan Anda bebas menyesuaikan kecerahan dan temperatur warna Mi Light Bulb<br />Mulai dari cahaya putih yang sejuk dan terang hingga cahaya kuning yang hangat dan nyaman.<br />Atur pencahayaan Anda agar sesuai dengan skenario apa pun dalam kehidupan sehari-hari.<br /><br />Kontrol suara didukung, aktifkan pencahayaan yang memesona hanya dengan beberapa kata<br />Mi LED Smart Bulb mendukung kontrol suara dengan Amazon Alexa dan Google Assistant. Nyalakan lampunya, ganti warna, sesuaikan kecerahan dan temperatur warna atau aktifkan Smart Environment hanya dengan beberapa kata.<br /><br />Smart control, mudah dioperasikan<br />Bola lampu ini memiliki modul Wi-Fi bawaan yang langsung menyambung<br />ke aplikasi Mi Home lewat jaringan WiFi mana pun,<br />tanpa perlu mengatur gateway. Hanya dalam beberapa langkah mudah,<br />Anda bisa mengaktifkan mode Color, Flow, dan Daylight,<br />serta pengaturan lanjutan seperti sakelar berwaktu dan lampu tunda,<br />untuk lebih menyesuaikan Mi LED Smart Bulb dengan gaya hidup Anda.<br /><br />Sambungkan ke Mi smart device<br />Menyambung ke gateway memungkinkan Anda menautkan<br />Mi LED Smart Bulb Essential dengan smart Mi device lainnya,<br />seperti Sensor Jendela dan Pintu Mi, dan mengatur lampu<br />agar otomatis menyala saat Anda membuka pintu.<br />Saat tersambung ke Sensor Gerak Mi, lampu akan<br />otomatis menyala saat gerakan terdeteksi.<br />Memudahkan dan mewarnai hidup Anda di saat bersamaan.<br /><br />Pilihan ramah lingkungan dengan lampu yang<br />sangat efisien dan konsumsi daya rendah<br />Dilengkapi profil listrik dan optik yang dioptimalkan, sehingga menghasilkan efisiensi pencahayaan<br />yang lebih tinggi dan konsumsi daya yang lebih rendah.<br />Hingga 950 lumen pada 9 watt, setara dengan lampu pijar konvensional 69 watt.<br /><br />Garansi Resmi TAM Indonesia 1 Tahun</p>', 'pms_1591069351.59547018.png', 200000, 5, 'on', ''),
(15, 2, 'Sharp 32', '<p>Layar 32&quot;</p><p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam venenatis aliquam sagittis. Aliquam tristique neque elit, at ullamcorper ante sollicitudin quis. Fusce dictum sollicitudin aliquam. Aenean ut mi pretium, porta leo eget, consectetur nulla. Cras ut turpis ullamcorper, pharetra mi interdum, varius velit. Donec sagittis urna et dolor fringilla, fringilla hendrerit sapien vulputate. Nulla vel commodo leo. Ut sit amet eleifend nisl, vitae dictum tortor. Praesent ac vestibulum erat. Sed nec ligula vitae dui ornare vulputate. Vestibulum ante sem, elementum nec vestibulum in, pretium vitae arcu. Aenean ultricies commodo bibendum. Proin tempus, erat eget euismod luctus, lorem sapien laoreet ipsum, ut scelerisque ante mi non erat. Integer efficitur semper massa.</p><p>Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Fusce eget feugiat felis. Donec aliquam odio arcu, ac sollicitudin nisi volutpat vitae. Nulla facilisi. Nam ex leo, molestie nec augue id, rutrum cursus enim. Nullam tempus iaculis velit. Praesent feugiat velit faucibus magna tristique sollicitudin. Mauris eu lectus velit. Phasellus sagittis diam velit, a hendrerit risus euismod at. Nullam at dignissim massa, vitae facilisis eros. Lorem ipsum dolor sit amet, consectetur adipiscing elit. In gravida sagittis hendrerit. Cras id arcu ornare sem feugiat malesuada quis auctor orci. Curabitur euismod finibus sagittis.</p>', 'sharp-32-led-32LE265i.png', 2750000, 10, 'off', ''),
(16, 1, 'Google Nest Mini + BARDI Smart Light Bulb 9W RGBWWww', 'kata', 'WhatsApp Image 2021-05-03 at 00.09.00.jpeg', 125000, 1, 'on', '');

-- --------------------------------------------------------

--
-- Struktur dari tabel `kategori`
--

CREATE TABLE `kategori` (
  `kategori_id` int(10) NOT NULL,
  `kategori` varchar(150) NOT NULL,
  `status` enum('on','off') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `kategori`
--

INSERT INTO `kategori` (`kategori_id`, `kategori`, `status`) VALUES
(1, 'Nest + Smart Lamp', 'on'),
(2, 'Smart Lamp', 'on'),
(3, 'Smart Socket', 'on'),
(4, 'Smart Door Lock', 'on');

-- --------------------------------------------------------

--
-- Struktur dari tabel `konfirmasi_pembayaran`
--

CREATE TABLE `konfirmasi_pembayaran` (
  `konfirmasi_id` int(10) NOT NULL,
  `pesanan_id` int(10) NOT NULL,
  `nomor_rekening` varchar(20) NOT NULL,
  `nama_account` varchar(150) NOT NULL,
  `tanggal_transfer` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `konfirmasi_pembayaran`
--

INSERT INTO `konfirmasi_pembayaran` (`konfirmasi_id`, `pesanan_id`, `nomor_rekening`, `nama_account`, `tanggal_transfer`) VALUES
(1, 2, '0008888', 'Jeong', '2016-06-19'),
(2, 3, '0008888', 'Lee', '2016-06-19'),
(3, 4, '0008888', 'Jeong', '2016-06-19');

-- --------------------------------------------------------

--
-- Struktur dari tabel `kota`
--

CREATE TABLE `kota` (
  `kota_id` int(10) NOT NULL,
  `kota` varchar(150) NOT NULL,
  `tarif` int(10) NOT NULL,
  `status` enum('on','off') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `kota`
--

INSERT INTO `kota` (`kota_id`, `kota`, `tarif`, `status`) VALUES
(1, 'Jakarta', 6000, 'on'),
(2, 'Bandung', 8000, 'on'),
(3, 'Surabaya', 11000, 'on'),
(4, 'Semarang', 9000, 'on');

-- --------------------------------------------------------

--
-- Struktur dari tabel `pesanan`
--

CREATE TABLE `pesanan` (
  `pesanan_id` int(10) NOT NULL,
  `kota_id` int(10) NOT NULL,
  `user_id` int(10) NOT NULL,
  `nama_penerima` varchar(150) NOT NULL,
  `nomor_telepon` varchar(15) NOT NULL,
  `alamat` varchar(300) NOT NULL,
  `tanggal_pemesanan` datetime NOT NULL,
  `status` tinyint(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `pesanan`
--

INSERT INTO `pesanan` (`pesanan_id`, `kota_id`, `user_id`, `nama_penerima`, `nomor_telepon`, `alamat`, `tanggal_pemesanan`, `status`) VALUES
(2, 2, 2, 'Jeong', '00000', 'Jl. XXXXX', '2016-10-08 06:11:24', 1),
(3, 3, 6, 'Lee', '0000', 'Jl. aaaa', '2016-10-08 10:48:45', 2),
(4, 1, 6, 'Lee', '0000', 'Jl. AAA', '2016-10-08 12:01:55', 2);

-- --------------------------------------------------------

--
-- Struktur dari tabel `pesanan_detail`
--

CREATE TABLE `pesanan_detail` (
  `pesanan_id` int(10) NOT NULL,
  `barang_id` int(10) NOT NULL,
  `quantity` tinyint(2) NOT NULL,
  `harga` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `pesanan_detail`
--

INSERT INTO `pesanan_detail` (`pesanan_id`, `barang_id`, `quantity`, `harga`) VALUES
(2, 6, 1, 2900000),
(3, 13, 1, 2700000),
(3, 1, 1, 7800000),
(3, 11, 1, 10100000),
(4, 7, 2, 6134000),
(4, 12, 1, 7250000);

-- --------------------------------------------------------

--
-- Struktur dari tabel `user`
--

CREATE TABLE `user` (
  `user_id` int(10) NOT NULL,
  `level` varchar(30) NOT NULL,
  `nama` varchar(150) NOT NULL,
  `email` varchar(160) NOT NULL,
  `alamat` varchar(400) NOT NULL,
  `phone` varchar(15) NOT NULL,
  `password` varchar(300) NOT NULL,
  `status` enum('on','off') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `user`
--

INSERT INTO `user` (`user_id`, `level`, `nama`, `email`, `alamat`, `phone`, `password`, `status`) VALUES
(2, 'superadmin', 'admin', 'admin@weshop.com', 'jl weshop', '08889999', '1b3231655cebb7a1f783eddf27d254ca', 'on'),
(6, 'customer', 'customer', 'customer1@aaa.com', 'jl.Customer Weshop', '088888', '5f4dcc3b5aa765d61d8327deb882cf99', 'on'),
(7, 'customer', 'fadillah wahyu', 'fadillahzx404@gmail.com', 'Kp.ketapang jl.thamrin rt.02 rw.03 no.3 cipondoh\r\nKonveksi', '+6281387077566', '1b3231655cebb7a1f783eddf27d254ca', 'on');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `banner`
--
ALTER TABLE `banner`
  ADD PRIMARY KEY (`banner_id`);

--
-- Indeks untuk tabel `barang`
--
ALTER TABLE `barang`
  ADD PRIMARY KEY (`barang_id`),
  ADD KEY `kategori_id` (`kategori_id`);

--
-- Indeks untuk tabel `kategori`
--
ALTER TABLE `kategori`
  ADD PRIMARY KEY (`kategori_id`);

--
-- Indeks untuk tabel `konfirmasi_pembayaran`
--
ALTER TABLE `konfirmasi_pembayaran`
  ADD PRIMARY KEY (`konfirmasi_id`),
  ADD KEY `pesanan_id` (`pesanan_id`);

--
-- Indeks untuk tabel `kota`
--
ALTER TABLE `kota`
  ADD PRIMARY KEY (`kota_id`);

--
-- Indeks untuk tabel `pesanan`
--
ALTER TABLE `pesanan`
  ADD PRIMARY KEY (`pesanan_id`),
  ADD KEY `kota_id` (`kota_id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indeks untuk tabel `pesanan_detail`
--
ALTER TABLE `pesanan_detail`
  ADD KEY `pesanan_id` (`pesanan_id`),
  ADD KEY `barang_id` (`barang_id`);

--
-- Indeks untuk tabel `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`user_id`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `banner`
--
ALTER TABLE `banner`
  MODIFY `banner_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT untuk tabel `barang`
--
ALTER TABLE `barang`
  MODIFY `barang_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT untuk tabel `kategori`
--
ALTER TABLE `kategori`
  MODIFY `kategori_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT untuk tabel `konfirmasi_pembayaran`
--
ALTER TABLE `konfirmasi_pembayaran`
  MODIFY `konfirmasi_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT untuk tabel `kota`
--
ALTER TABLE `kota`
  MODIFY `kota_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT untuk tabel `pesanan`
--
ALTER TABLE `pesanan`
  MODIFY `pesanan_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT untuk tabel `user`
--
ALTER TABLE `user`
  MODIFY `user_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- Ketidakleluasaan untuk tabel pelimpahan (Dumped Tables)
--

--
-- Ketidakleluasaan untuk tabel `barang`
--
ALTER TABLE `barang`
  ADD CONSTRAINT `barang_ibfk_1` FOREIGN KEY (`kategori_id`) REFERENCES `kategori` (`kategori_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ketidakleluasaan untuk tabel `konfirmasi_pembayaran`
--
ALTER TABLE `konfirmasi_pembayaran`
  ADD CONSTRAINT `konfirmasi_pembayaran_ibfk_1` FOREIGN KEY (`pesanan_id`) REFERENCES `pesanan` (`pesanan_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ketidakleluasaan untuk tabel `pesanan`
--
ALTER TABLE `pesanan`
  ADD CONSTRAINT `pesanan_ibfk_1` FOREIGN KEY (`kota_id`) REFERENCES `kota` (`kota_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `pesanan_ibfk_2` FOREIGN KEY (`user_id`) REFERENCES `user` (`user_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ketidakleluasaan untuk tabel `pesanan_detail`
--
ALTER TABLE `pesanan_detail`
  ADD CONSTRAINT `pesanan_detail_ibfk_1` FOREIGN KEY (`pesanan_id`) REFERENCES `pesanan` (`pesanan_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `pesanan_detail_ibfk_2` FOREIGN KEY (`barang_id`) REFERENCES `barang` (`barang_id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
