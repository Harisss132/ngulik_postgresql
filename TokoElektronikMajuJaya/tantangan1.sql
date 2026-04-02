/* disini merupakan tantangan untuk melihat hasil laporan penjualan per karyawan */

SELECT
	k.nama_lengkap,
	j.nama_jabatan,
	COALESCE(SUM(p.jumlah), 0) AS total_produk_terjual
FROM hrd.karyawan k
JOIN hrd.jabatan j ON k.id_jabatan = j.id_jabatan
LEFT JOIN operasional.penjualan p ON k.id_karyawan = p.id_karyawan
GROUP BY k.id_karyawan, k.nama_lengkap, j.nama_jabatan
ORDER BY total_produk_terjual DESC;