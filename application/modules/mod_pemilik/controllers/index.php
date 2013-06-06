<?php
$path = './../../'
$data = array('mod_alat_tangkap','mod_ikan','mod_jenis_kapal','mod_kapal','mod_kelompok','mod_kelompok_pembeli','mod_keranjang','mod_pembeli','mod_pemilik','mod_pengguna','mod_profil','mod_retribusi','mod_satuan','mod_transaksi');
while($data<15){
	mkdir($path.$data);
}