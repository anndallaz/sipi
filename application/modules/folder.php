<?php

		$path = './application/modules/';
		$data = array('mod_alat_tangkap/','mod_ikan/','mod_jenis_kapal/','mod_kapal/','mod_kelompok/','mod_kelompok_pembeli/','mod_keranjang/','mod_pembeli/','mod_pemilik/','mod_pengguna/','mod_profil/','mod_retribusi/','mod_satuan/','mod_transaksi/');
		$views = 'views';
		$controllers = 'controllers';
		$models = 'models';
		for($i=0;$i<=13;$i++){
				mkdir($path.$data[$i]);
				mkdir($path.$data[$i].$views);
				mkdir($path.$data[$i].$controllers);
				mkdir($path.$data[$i].$models);
			}

