/* disini merupakan tantangan untuk identifikasi stok krisis*/

SELECT DISTINCT ON (pr.nama_produk)
	pr.nama_produk,
	k.nama_lengkap,
	pr.stok,
	p.tgl_transaksi
FROM operasional.produk pr
LEFT JOIN operasional.penjualan p ON pr.id_produk = p.id_produk
LEFT JOIN hrd.karyawan k ON p.id_karyawan = k.id_karyawan
WHERE pr.stok < 15
ORDER BY pr.nama_produk, p.tgl_transaksi DESC;