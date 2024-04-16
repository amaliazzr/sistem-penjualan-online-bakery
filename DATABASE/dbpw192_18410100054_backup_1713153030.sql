

CREATE TABLE `admin` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(200) NOT NULL,
  `password` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

INSERT INTO admin VALUES("1","admin","$2y$10$AIy0X1Ep6alaHDTofiChGeqq7k/d1Kc8vKQf1JZo0mKrzkkj6M626");



CREATE TABLE `bom_produk` (
  `kode_bom` varchar(100) NOT NULL,
  `kode_bk` varchar(100) NOT NULL,
  `kode_produk` varchar(100) NOT NULL,
  `nama_produk` varchar(200) NOT NULL,
  `kebutuhan` varchar(200) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4;

INSERT INTO bom_produk VALUES("B0001","M0004","P0001","Roti Sobek","3");
INSERT INTO bom_produk VALUES("B0001","M0001","P0001","Roti Sobek","4");
INSERT INTO bom_produk VALUES("B0001","M0004","P0001","Roti Sobek","3");
INSERT INTO bom_produk VALUES("B0002","M0001","P0002","Maryam","3");
INSERT INTO bom_produk VALUES("B0002","M0004","P0002","Maryam","4");
INSERT INTO bom_produk VALUES("B0002","M0004","P0002","Maryam","4");
INSERT INTO bom_produk VALUES("B0003","M0001","P0003","Kue tart coklat","5");
INSERT INTO bom_produk VALUES("B0003","M0002","P0003","Kue tart coklat","2");
INSERT INTO bom_produk VALUES("B0003","M0007","P0003","Kue tart coklat","300");
INSERT INTO bom_produk VALUES("B0004","M0001","P0004","Baked Cheese Cake Bread","5");
INSERT INTO bom_produk VALUES("B0004","M0002","P0004","Baked Cheese Cake Bread","2");
INSERT INTO bom_produk VALUES("B0004","M0004","P0004","Baked Cheese Cake Bread","3");
INSERT INTO bom_produk VALUES("B0005","M0001","P0005","Donuts (6 pcs)","5");
INSERT INTO bom_produk VALUES("B0005","M0002","P0005","Donuts (6 pcs)","2");
INSERT INTO bom_produk VALUES("B0005","M0003","P0005","Donuts (6 pcs)","1");
INSERT INTO bom_produk VALUES("B0005","M0004","P0005","Donuts (6 pcs)","1");
INSERT INTO bom_produk VALUES("B0005","M0005","P0005","Donuts (6 pcs)","1");
INSERT INTO bom_produk VALUES("B0006","M0001","P0006","Grains Pan Bread","5");
INSERT INTO bom_produk VALUES("B0006","M0002","P0006","Grains Pan Bread","2");
INSERT INTO bom_produk VALUES("B0007","M0001","P0007","Black Forest","5");
INSERT INTO bom_produk VALUES("B0007","M0002","P0007","Black Forest","2");
INSERT INTO bom_produk VALUES("B0007","M0003","P0007","Black Forest","1");
INSERT INTO bom_produk VALUES("B0007","M0005","P0007","Black Forest","3");
INSERT INTO bom_produk VALUES("B0008","M0001","P0008","Choco Fresh Cream","5");
INSERT INTO bom_produk VALUES("B0008","M0002","P0008","Choco Fresh Cream","2");
INSERT INTO bom_produk VALUES("B0008","M0003","P0008","Choco Fresh Cream","1");
INSERT INTO bom_produk VALUES("B0008","M0005","P0008","Choco Fresh Cream","3");
INSERT INTO bom_produk VALUES("B0009","M0001","P0009","Tiramisu Cake","5");
INSERT INTO bom_produk VALUES("B0009","M0002","P0009","Tiramisu Cake","2");
INSERT INTO bom_produk VALUES("B0009","M0003","P0009","Tiramisu Cake","1");
INSERT INTO bom_produk VALUES("B0009","M0004","P0009","Tiramisu Cake","3");



CREATE TABLE `customer` (
  `kode_customer` varchar(100) NOT NULL,
  `nama` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `username` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  `telp` varchar(200) NOT NULL,
  PRIMARY KEY (`kode_customer`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

INSERT INTO customer VALUES("C0002","Rafi Akbar","a.rafy@gmail.com","rafi","$2y$10$/UjGYbisTPJhr8MgmT37qOXo1o/HJn3dhafPoSYbOlSN1E7olHIb.","0856748564");
INSERT INTO customer VALUES("C0003","Nagita Silvana","bambang@gmail.com","Nagita","$2y$10$47./qEeA/y3rNx3UkoKmkuxoAtmz4ebHSR0t0Bc.cFEEg7cK34M3C","087804616097");
INSERT INTO customer VALUES("C0004","Nadiya","nadiya@gmail.com","nadiya","$2y$10$6wHH.7rF1q3JtzKgAhNFy.4URchgJC8R.POT1osTAWmasDXTTO7ZG","0898765432");
INSERT INTO customer VALUES("C0005","sarah","sarah@gmail.com","sarahzh","$2y$10$DFGecTWyRWQZFc4K/MGWledq8Noi7UhwXaXOFwaakb1muhovwGej6","081234567890");



CREATE TABLE `inventory` (
  `kode_bk` varchar(100) NOT NULL,
  `nama` varchar(200) NOT NULL,
  `qty` varchar(200) NOT NULL,
  `satuan` varchar(200) NOT NULL,
  `harga` int(11) NOT NULL,
  `tanggal` date NOT NULL,
  PRIMARY KEY (`kode_bk`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

INSERT INTO inventory VALUES("M0001","Tepung","68","Kg","1000","2020-07-26");
INSERT INTO inventory VALUES("M0002","Pengembang","-2","Kg","1000","2020-07-27");
INSERT INTO inventory VALUES("M0003","Cream","8","Kg","3000","2020-07-26");
INSERT INTO inventory VALUES("M0004","Keju","76","Kg","4000","2020-07-26");
INSERT INTO inventory VALUES("M0005","Coklat","-5","Kg","5000","2020-07-27");
INSERT INTO inventory VALUES("M0006","Ikan Tuna","3","kg","34000","2024-04-12");
INSERT INTO inventory VALUES("M0007","Kacang Almond","500","gram","100000","2024-04-12");



CREATE TABLE `keranjang` (
  `id_keranjang` int(11) NOT NULL AUTO_INCREMENT,
  `kode_customer` varchar(100) NOT NULL,
  `kode_produk` varchar(100) NOT NULL,
  `nama_produk` varchar(100) NOT NULL,
  `qty` int(11) NOT NULL,
  `harga` int(11) NOT NULL,
  PRIMARY KEY (`id_keranjang`)
) ENGINE=InnoDB AUTO_INCREMENT=28 DEFAULT CHARSET=utf8mb4;

INSERT INTO keranjang VALUES("16","C0003","P0002","Maryam","5","15000");
INSERT INTO keranjang VALUES("17","C0003","P0003","Kue tart coklat","2","100000");



CREATE TABLE `produk` (
  `kode_produk` varchar(100) NOT NULL,
  `nama` varchar(100) NOT NULL,
  `image` text NOT NULL,
  `deskripsi` text NOT NULL,
  `harga` int(11) NOT NULL,
  PRIMARY KEY (`kode_produk`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

INSERT INTO produk VALUES("P0001","Tuna Mayo Croissant","66196c93aeac7.jpg","																				Roti isi daging ikan tuna dan mayonnaise															","25000");
INSERT INTO produk VALUES("P0002","Souffle Piece Cheese Cake","66196e761e142.jpg","				1 potong kue keju lembut			","15000");
INSERT INTO produk VALUES("P0003","Almond Croissant","66196ed543d62.jpg","				Croissant dengan taburan kacang almond
									","12000");
INSERT INTO produk VALUES("P0004","Baked Cheese Cake Bread","66196ff253ff8.png","Roti kue keju oven
			","12000");
INSERT INTO produk VALUES("P0005","Donuts (6 pcs)","66197096950ae.jpg","Donat setengah lusin varian bebas pilih","65000");
INSERT INTO produk VALUES("P0006","Grains Pan Bread","661970d7ca5ec.jpg","
			","20000");
INSERT INTO produk VALUES("P0007","Black Forest","6619712360b13.jpg","
			","300000");
INSERT INTO produk VALUES("P0008","Choco Fresh Cream","6619717e7d857.jpg","
			","350000");
INSERT INTO produk VALUES("P0009","Tiramisu Cake","661971a78ef3d.jpg","
			","250000");



CREATE TABLE `produksi` (
  `id_order` int(11) NOT NULL AUTO_INCREMENT,
  `invoice` varchar(200) NOT NULL,
  `kode_customer` varchar(200) NOT NULL,
  `kode_produk` varchar(200) NOT NULL,
  `nama_produk` varchar(200) NOT NULL,
  `qty` int(11) NOT NULL,
  `harga` int(11) NOT NULL,
  `status` varchar(200) NOT NULL,
  `tanggal` date NOT NULL,
  `provinsi` varchar(200) NOT NULL,
  `kota` varchar(200) NOT NULL,
  `alamat` varchar(200) NOT NULL,
  `kode_pos` varchar(200) NOT NULL,
  `terima` varchar(200) NOT NULL,
  `tolak` varchar(200) NOT NULL,
  `cek` int(11) NOT NULL,
  PRIMARY KEY (`id_order`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8mb4;

INSERT INTO produksi VALUES("8","INV0001","C0002","P0003","Kue tart coklat","1","100000","Pesanan Baru","2020-07-27","Jawa Timur","Surabaya","Jl.Tanah Merah Indah 1","60129","2","1","0");
INSERT INTO produksi VALUES("9","INV0002","C0002","P0001","Roti Sobek","3","10000","Pesanan Baru","2020-07-27","Jawa Barat","Bandung","Jl.Jati Nangor Blok C, 10","30712","0","0","1");
INSERT INTO produksi VALUES("10","INV0003","C0003","P0002","Maryam","2","15000","0","2020-07-27","Jawa Tengah","Yogyakarta","Jl.Malioboro, Blok A 10D","30123","1","0","0");
INSERT INTO produksi VALUES("11","INV0003","C0003","P0003","Kue tart coklat","1","100000","0","2020-07-27","Jawa Tengah","Yogyakarta","Jl.Malioboro, Blok A 10D","30123","1","0","0");
INSERT INTO produksi VALUES("12","INV0003","C0003","P0001","Roti Sobek","1","10000","0","2020-07-27","Jawa Tengah","Yogyakarta","Jl.Malioboro, Blok A 10D","30123","1","0","0");
INSERT INTO produksi VALUES("13","INV0004","C0004","P0002","Maryam","1","15000","0","2020-07-26","Jawa Timur","Sidoarjo","Jl.KH Syukur Blok C 18 A","50987","1","0","0");
INSERT INTO produksi VALUES("14","INV0005","C0005","P0002","Maryam","1","15000","0","2424-04-12","Jawa Tengah","Kota Semarang","Kos Amanah, Tembalang","50275","1","0","0");
INSERT INTO produksi VALUES("15","INV0006","C0005","P0003","Kue tart coklat","1","100000","0","2424-04-12","Jawa Tengah","Kota Semarang","Kos Amanah, Tembalang","50275","1","0","1");
INSERT INTO produksi VALUES("16","INV0007","C0005","P0001","Roti Sobek","1","10000","Pesanan Baru","2424-04-12","Jawa Tengah","Kota Semarang","Kos Amanah, Tembalang","50275","0","0","1");
INSERT INTO produksi VALUES("17","INV0008","C0005","P0001","Tuna Mayo Croissant","1","25000","Pesanan Baru","2424-04-15","Jawa Tengah","Kota Semarang","Kos Amanah, Tembalang","50275","0","0","0");
INSERT INTO produksi VALUES("18","INV0009","C0005","P0008","Choco Fresh Cream","1","350000","Pesanan Baru","2424-04-15","Jawa Tengah","Kota Semarang","Kos Amanah, Tembalang","50275","0","0","0");
INSERT INTO produksi VALUES("19","INV0010","C0005","P0005","Donuts (6 pcs)","1","65000","Pesanan Baru","2424-04-15","Jawa Tengah","Kota Semarang","Kos Amanah, Tembalang","50275","0","0","0");



;




CREATE TABLE `report_cancel` (
  `id_report_cancel` int(11) NOT NULL AUTO_INCREMENT,
  `id_order` varchar(100) NOT NULL,
  `kode_produk` varchar(100) NOT NULL,
  `jumlah` varchar(100) NOT NULL,
  `tanggal` date NOT NULL,
  PRIMARY KEY (`id_report_cancel`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;




CREATE TABLE `report_inventory` (
  `id_report_inv` int(11) NOT NULL AUTO_INCREMENT,
  `kode_bk` varchar(100) NOT NULL,
  `nama_bahanbaku` varchar(100) NOT NULL,
  `jml_stok_bk` int(11) NOT NULL,
  `tanggal` varchar(11) NOT NULL,
  PRIMARY KEY (`id_report_inv`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;




CREATE TABLE `report_omset` (
  `id_report_omset` int(11) NOT NULL AUTO_INCREMENT,
  `invoice` varchar(100) NOT NULL,
  `jumlah` int(11) NOT NULL,
  `total_omset` int(11) NOT NULL,
  `tanggal` date NOT NULL,
  PRIMARY KEY (`id_report_omset`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;




CREATE TABLE `report_produksi` (
  `id_report_prd` int(11) NOT NULL AUTO_INCREMENT,
  `invoice` varchar(100) NOT NULL,
  `kode_produk` varchar(100) NOT NULL,
  `nama_produk` varchar(100) NOT NULL,
  `qty` int(11) NOT NULL,
  `tanggal` date NOT NULL,
  PRIMARY KEY (`id_report_prd`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;




CREATE TABLE `report_profit` (
  `id_report_profit` int(11) NOT NULL AUTO_INCREMENT,
  `kode_bom` varchar(100) NOT NULL,
  `invoice` varchar(100) NOT NULL,
  `kode_produk` varchar(100) NOT NULL,
  `jumlah` varchar(11) NOT NULL,
  `total_profit` varchar(11) NOT NULL,
  `tanggal` date NOT NULL,
  PRIMARY KEY (`id_report_profit`),
  UNIQUE KEY `kode_bom` (`kode_bom`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;


