<?php
include("../controlers/includes/header.php");

if(isset($_POST['cancel'])) {
	header("Location: settings.php");
}

if(isset($_POST['close_account'])) {
	$close_query = mysqli_query($con, "UPDATE users SET user_closed='yes' WHERE username='$userLoggedIn'");
	session_destroy();
	header("Location: register.php");
}

?>

<div class="main_column column">

	<h4>Cerrar Cuenta</h4>

	¿Está seguro de que quiere cerrar su cuenta?<br><br>
	Cerrar tu cuenta ocultará tu perfil y toda tu actividad a los demás usuarios.<br><br>
	Puede reabrir su cuenta en cualquier momento simplemente iniciando sesión.<br><br>

	<form action="close_account.php" method="POST">
		<input type="submit" name="close_account" id="close_account" value="Sí, cierra la cuenta!" class="danger settings_submit">
		<input type="submit" name="cancel" id="update_details" value="Me lo he pensado mejor" class="info settings_submit">
	</form>

</div>