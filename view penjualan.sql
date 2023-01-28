-- membuat view v_penjualan yang berisi nama pelanggan, nama produk, harga satuan produk, jumlah pembelian, harga bayar--
-- tanggal tranksaksi 2019-10-22

create view v_penjualan as
select tbl_pelanggan.nama_pelanggan as 'Pelanggan', 
tbl_produk.nama_produk as 'Produk',
tbl_produk.hrg_satuan as 'Harga',
tbl_detail_transaksi.jml_pembelian as 'Jumlah Beli',
tbl_produk.hrg_satuan*tbl_detail_transaksi.jml_pembelian as 'Harga Bayar'
from tbl_detail_transaksi, tbl_pelanggan, tbl_produk, tbl_transaksi 
where tbl_transaksi.id = tbl_detail_transaksi.transaksi_id  and tbl_produk.id = tbl_detail_transaksi.produk_id and 
tbl_pelanggan.id = tbl_transaksi.pelanggan_id and 
tbl_transaksi.tgl_transaksi ='2019-10-22';

select * from v_penjualan;
