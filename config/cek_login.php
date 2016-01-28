
<?php

	include"konek.php";
	
	$password = md5($_POST['password']);
	
	$login=mysql_query("SELECT * FROM pegawai WHERE id_pegawai='$_POST[nip]' AND password='$password'");
	$r=mysql_fetch_array($login);
	$ada=mysql_num_rows($login);
	
	if($ada == 1) {
		session_start();
		session_register("id_pegawai");
		session_register("nama_pegawai");
		session_register("pass_pegawai");
		session_register("jabatan");
	
		$_SESSION[id_pegawai]=$r[id_pegawai];
		$_SESSION[nama_pegawai]=$r[nama_pegawai];
		$_SESSION[pass_pegawai]=$r[password];
		$_SESSION[jabatan]=$r[jabatan];

		if($r[jabatan] == $r[jabatan]){
			header('location:../'.$r[jabatan]);
		}
	}
	
?>