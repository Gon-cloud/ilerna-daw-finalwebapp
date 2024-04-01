<?php 
require 'config/config.php';
require '../controlers/includes/handlers/register_handler.php';
require '../controlers/includes/handlers/login_handler.php';
?>

<html>
<head>
	<title>Bienvenido a ClockIn!</title>
	<link rel="stylesheet" type="text/css" href="../additional_resources/css/register_style.css">
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/2.1.3/jquery.min.js"></script>
	<script src="../additional_resources/js/register.js"></script>
</head>
<body>

	<?php  

	if(isset($_POST['register_button'])) {
		echo '
		<script>

		$(document).ready(function() {
			$("#first").hide();
			$("#second").show();
		});

		</script>

		';
	}

	?>

	<div class="wrapper">

		<div class="login_box">

			<div class="login_header">
				<h1>ClockIn</h1>
				Conéctese o regístrese más abajo!
			</div>
			<br>
			<div id="first">

				<form action="register.php" method="POST">
					<input type="email" name="log_email" placeholder="Dirección email" value="<?php 
					if(isset($_SESSION['log_email'])) {
						echo $_SESSION['log_email'];
					} 
					?>" required>
					<br>
					<input type="password" name="log_password" placeholder="Contraseña">
					<br>
					<?php if(in_array("Email or password was incorrect<br>", $error_array)) echo  "Email o contraseña incorrectos<br>"; ?>
					<input type="submit" name="login_button" value="Entrar">
					<br>
					<a href="#" id="signup" class="signup">¿Necesita una cuenta? ¡Regístrese aquí!</a>

				</form>

			</div>

			<div id="second">

				<form action="register.php" method="POST">
					<input type="text" name="reg_fname" placeholder="Nombre" value="<?php 
					if(isset($_SESSION['reg_fname'])) {
						echo $_SESSION['reg_fname'];
					} 
					?>" required>
					<br>
					<?php if(in_array("Your first name must be between 2 and 25 characters<br>", $error_array)) echo "El nombre debe tener entre 2 y 25 carácteres! <br>"; ?>
					
					
					<input type="text" name="reg_lname" placeholder="Apellidos" value="<?php 
					if(isset($_SESSION['reg_lname'])) {
						echo $_SESSION['reg_lname'];
					} 
					?>" required>
					<br>
					<?php if(in_array("Your last name must be between 2 and 25 characters<br>", $error_array)) echo "Los apellidos deben tener entre 2 y 25 carácteres!<br>"; ?>

					<input type="email" name="reg_email" placeholder="Email" value="<?php 
					if(isset($_SESSION['reg_email'])) {
						echo $_SESSION['reg_email'];
					} 
					?>" required>
					<br>

					<input type="email" name="reg_email2" placeholder="Confirma email" value="<?php 
					if(isset($_SESSION['reg_email2'])) {
						echo $_SESSION['reg_email2'];
					} 
					?>" required>
					<br>
					<?php if(in_array("Email already in use<br>", $error_array)) echo "El email ya esta en uso!<br>"; 
					else if(in_array("Invalid email format<br>", $error_array)) echo "Formato no valido!<br>";
					else if(in_array("Emails don't match<br>", $error_array)) echo "Los emails no coinciden<br>"; ?>

					<input type="password" name="reg_password" placeholder="Contraseña" required>
					<br>
					<input type="password" name="reg_password2" placeholder="Confirma  contraseña" required>
					<br>
					<?php if(in_array("Your passwords do not match<br>", $error_array)) echo "Las contraseñas no coinciden!<br>"; 
					else if(in_array("Your password can only contain english characters or numbers<br>", $error_array)) echo "Solo puede contener caracteres alfanumericos<br>";
					else if(in_array("Your password must be betwen 5 and 30 characters<br>", $error_array)) echo "La contraseña debe tener entre 2 y 30 carácteres!<br>"; ?>

					<input type="submit" name="register_button" value="Registrar">
					<br>

					<?php if(in_array("<span style='color: #14C800;'>You're all set! Go ahead and login!</span><br>", $error_array)) echo "<span style='color: #14C800;'> ¡Todo listo!¡Ya puedes entrar! </span><br>"; ?>
					<a href="#" id="signin" class="signin">¿Ya tiene una cuenta?¡Conéctese aquí!</a>
				</form>
			</div>

		</div>

	</div>

</body>
</html>