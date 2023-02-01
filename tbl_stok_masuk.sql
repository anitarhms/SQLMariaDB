create table tbl_stok_masuk (
id int not null,
produk_id int not null, 
jml_produk_masuk int not null,
tgl_stok_masuk date,
primary key (id),
foreign key (produk_id) references tbl_produk(id));
