INSERT INTO operasional.produk (nama_produk, harga, stok) 
VALUES ('Laptop Lenovo', 8000000, 16), ('Keyboard Wirless', 250000, 20), ('Headset Wirless', 400000, 20)

INSERT INTO hrd.jabatan (nama_jabatan, gaji_pokok)
VALUES ('Sales Executive', 5500000), ('Store Manager', 8000000), ('Crew Store', 4000000)

INSERT INTO hrd.karyawan (nama_lengkap, kota, id_jabatan)
VALUES ('Budi Hartono', 'Bekasi', 1), ('Indra Sutoyo', 'Jakarta', 2), ('Nanang Subianto', 'Bekasi', 3), ('Hendra Widodo', 'Jakarta', 3)

INSERT INTO operasional.penjualan (id_produk, id_karyawan, jumlah, harga_satuan)
VALUES
	(1, 1, 2, 12000000),
	(2, 3, 2, 1500000),
	(4, 4, 3, 2500000),
	(3, 2, 1, 80000000)