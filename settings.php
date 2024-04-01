<?php 
include("../controlers/includes/header.php");
include("../controlers/includes/handlers/settings_handler.php");
?>

<div class="main_column column">

	<h4>Configuración cuenta</h4>
	<?php
	echo "<img src='" . $user['profile_pic'] ."' class='small_profile_pic'>";
	?>
	<br><br>
	<a href="upload.php">Cambie su imagen de perfil</a> <br><br><br>

	Modifique los valores y haga clic en "Actualizar detalles".

	<?php
	$user_data_query = mysqli_query($con, "SELECT first_name, last_name, email FROM users WHERE username='$userLoggedIn'");
	$row = mysqli_fetch_array($user_data_query);

	$first_name = $row['first_name'];
	$last_name = $row['last_name'];
	$email = $row['email'];
	?>

	<form action="settings.php" method="POST">
		Nombre: <input type="text" name="first_name" value="<?php echo $first_name; ?>" id="settings_input"><br>
		Apellidos: <input type="text" name="last_name" value="<?php echo $last_name; ?>" id="settings_input"><br>
		Email: <input type="text" name="email" value="<?php echo $email; ?>" id="settings_input"><br>

		<?php echo $message; ?>

		<input type="submit" name="update_details" id="save_details" value="Actualizar detalles" class="info settings_submit"><br>
	</form>

	<h4>Cambiar contraseña</h4>
	<form action="settings.php" method="POST">
		Contraseña actual: <input type="password" name="old_password" id="settings_input"><br>
		Nueva contraseña: <input type="password" name="new_password_1" id="settings_input"><br>
		Confirmación nueva contraseña: <input type="password" name="new_password_2" id="settings_input"><br>

		<?php echo $password_message; ?>

		<input type="submit" name="update_password" id="save_details" value="Actualizar contraseña" class="info settings_submit"><br>
	</form>

	<h4>Cerrar cuenta</h4>
	<form action="settings.php" method="POST">
		<input type="submit" name="close_account" id="close_account" value="Cerrar cuenta" class="danger settings_submit">
	</form>


</div>