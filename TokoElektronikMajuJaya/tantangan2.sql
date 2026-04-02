/* disini merupakan tantangan untuk melihat hasil penjualan dari toko toko yang ada di kota*/

SELECT
	k.kota,
	COALESCE(SUM(p.jumlah), 0) AS produk_terjual_perkota,
	COALESCE(SUM(p.total_harga), 0) AS total_penjualan_perkota
FROM hrd.karyawan k
LEFT JOIN operasional.penjualan p ON k.id_karyawan = p.id_karyawan
GROUP BY kota
ORDER BY total_penjualan_perkota DESC;