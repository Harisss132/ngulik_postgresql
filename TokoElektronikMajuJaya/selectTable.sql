/* Mengambil semua operasional.produk dan operasional.penjualan */

SELECT * FROM operasional.produk;
SELECT * FROM operasional.penjualan;

/* Mengambil semua hrd.jabatan dan hrd.karyawan */

SELECT * FROM hrd.jabatan;
SELECT * FROM hrd.karyawan;

/* join table operasional.produk, operasional.penjualan. hrd.karyawan */

SELECT
p.tgl_transaksi,
k.nama_lengkap AS nama_kasir,
pr.nama_produk,
p.jumlah,
p.total_harga
FROM operasional.penjualan p
JOIN hrd.karyawan k ON p.id_karyawan = k.id_karyawan
JOIN operasional.produk pr ON p.id_produk = pr.id_produk;

/* INNER JOIN menggunakan ON dan USING */

SELECT
k.nama_lengkap,
j.nama_jabatan,
j.gaji_pokok
FROM hrd.karyawan k
INNER JOIN hrd.jabatan j ON k.id_jabatan = j.id_jabatan;

SELECT
k.nama_lengkap,
j.nama_jabatan,
j.gaji_pokok
FROM hrd.karyawan k
INNER JOIN hrd.jabatan j USING(id_jabatan);

/* LEFT JOIN menggunakan ON dan USING*/

SELECT
pr.nama_produk,
pr.stok,
p.jumlah,
p.harga_satuan,
p.total_harga
FROM operasional.penjualan p
LEFT JOIN operasional.produk pr ON p.id_produk = pr.id_produk;

SELECT
pr.nama_produk,
pr.stok,
p.jumlah,
p.harga_satuan,
p.total_harga
FROM operasional.penjualan p
LEFT JOIN operasional.produk pr USING (id_produk);

/* RIGHT JOIN menggunakan ON dan USING */

SELECT
k.nama_lengkap,
j.nama_jabatan,
j.gaji_pokok
FROM hrd.karyawan k
RIGHT JOIN hrd.jabatan j ON k.id_jabatan = j.id_jabatan;

SELECT
k.nama_lengkap,
j.nama_jabatan,
j.gaji_pokok
FROM hrd.karyawan k
RIGHT JOIN hrd.jabatan j USING(id_jabatan);