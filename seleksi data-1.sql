-- menampilkan data tanggal transaksi,nama pelanggan,nama produk,harga satuan,jumlah pembelian, dan harga bayar--

select tbl_transaksi.tgl_transaksi as 'Tanggal', tbl_pelanggan.nama_pelanggan as 'Pelanggan', tbl_produk.nama_produk as 'Produk',
tbl_produk.hrg_satuan as 'Harga', tbl_detail_transaksi.jml_pembelian as 'Jumlah Beli', tbl_produk.hrg_satuan*tbl_detail_transaksi.jml_pembelian as 'Harga Bayar'
from tbl_produk, tbl_transaksi, tbl_detail_transaksi, tbl_pelanggan 
where tbl_produk.id=tbl_detail_transaksi.produk_id and  tbl_transaksi.id = tbl_detail_transaksi.transaksi_id and tbl_pelanggan.id = tbl_transaksi.pelanggan_id;