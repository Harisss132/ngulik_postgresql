CREATE SCHEMA hrd;

create table hrd.jabatan (
id_jabatan INTEGER GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
nama_jabatan varchar(255) not null,
gaji_pokok DECIMAL(15, 2) not null default 0
);

create table hrd.karyawan (
id_karyawan INTEGER GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
nama_lengkap varchar(255) not null,
kota varchar(255) not null,
id_jabatan INTEGER not null,
constraint fk_jabatan
foreign key (id_jabatan)
references hrd.jabatan(id_jabatan)
);
