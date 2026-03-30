CREATE SCHEMA operasional;

create table operasional.produl (
id_produk INTEGER GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
nama_produk varchar(255) not null,
harga DECIMAL(15, 2) not null default 0,
stok INT not null default 0,
created_at timestamp default current_timestamp
);

create table operasional.penjualan (
id_penjualan INTEGER GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
jumlah INTEGER not null check(jumlah > 0),
tgl_transaksi timestamp default current_timestamp,
harga_satuan decimal(15, 2) not null,
total_harga decimal(15, 2) GENERATED ALWAYS AS (jumlah * harga_satuan) STORED,
id_produk INTEGER not null,
constraint fk_produk
foreign key (id_produk)
references operasional.produk(id_produk),
id_karyawan INTEGER not null,
constraint fk_karyawan_hrd
foreign key (id_karyawan)
references hrd.karyawan(id_karyawan)
);