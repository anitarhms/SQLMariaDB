create table tbl_barang_log (
id int not null auto_increment,
barang_id int not null,
harga_lama int not null,
harga_baru int not null,
waktu_perubahan datetime,
primary key (id));