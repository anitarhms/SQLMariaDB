create trigger perubahan_harga
before update on tbl_produk 
for each row 
insert into tbl_barang_log
set barang_id = old.id,
harga_lama = old.hrg_satuan,
harga_baru=new.hrg_satuan,
waktu_perubahan = now(); 