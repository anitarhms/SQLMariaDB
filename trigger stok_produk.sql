   create trigger stok_produk_setelah_transaksi
   after insert on tbl_detail_transaksi
   for each row 
   update tbl_produk 
   set jml_produk = jml_produk - new.jml_pembelian
   where id= new.produk_id;
   