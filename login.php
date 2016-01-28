<?php
	session_start();
	if(isset($_SESSION[nama_pegawai]) and isset($_SESSION[pass_pegawai])){
		header('location:'.$_SESSION[jabatan]);
	}else{
	
?>
<!DOCTYPE HTML>
<html>
<head>
<title>Login form</title>
<body>
		<form name="login-form" class="login-form" action="config/cek_login.php" method="post">
			
		   	<span>Masukan NIP dan Password</span>
			<input type="username" name="nip" class="input username" placeholder="NIP" required="">
		    <input type="password" name="password" class="input password" placeholder="Password" required="">

		    <input type="submit" name="submit" value="Login" class="button" />
		
		</form>
			
</body>
</html>

	
<?php
	}
?>
