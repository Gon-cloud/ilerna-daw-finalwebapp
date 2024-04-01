<?php 
include("../controlers/includes/header.php");
include("../controlers/includes/classes/User.php");
include("../controlers/includes/classes/Message.php");
include("../controlers/includes/classes/Post.php");
require '../controlers/includes/handlers/clockin_handler.php';

 ?>

<script>
  function disableSubmitButton() {
    document.getElementById("sbutton").disabled = true;
  }

  function enableSubmitButton() {
    document.getElementById("sbutton").disabled = false;
  }

</script>

	<div class="user_details column">
		<a href="<?php echo $user; ?>">  <img src="<?php echo $user['profile_pic']; ?>"> </a>

		<div class="user_details_left_right">
			<a href="<?php echo $user; ?>">
			<?php 
			echo $user['first_name'] . " " . $user['last_name']."<br>";

			 ?>
			</a>
			<br>
			<?php echo "Comentarios: " . $user['num_posts']. "<br>"; 	

			?>
		</div>

	</div>

	<div class="main_column column">
		<button class="button1" onclick="document.getElementById('form-clockins').style.display='block'" > Fichar </button>
		<div>
			<div id="form-clockins" style="display:none" class="clockin_box">
				<br>
				<br>
				<h2 class="h501"> Fichar </h2>
				<br>
				<form method="POST" action="index.php"  onreset="disableSubmitButton()" onsubmit="enableSubmitButton()" >
					<select name="country_region" type="country_region"  id="country_region" placeholder="Región(País)">
					<!-- ... lista de países desarrollados y regiones donde este la empresa cliente ... -->
					<option value="">Región(País)</option>
					<option value="Madrid (España)">Madrid (España)</option>
					<option value="Barcelona (España)">Barcelona (España)</option>
					<option value="Málaga (España)">Málaga (España)</option>
					<option value="Valencia (España)">Valencia (España)</option>
					<option value="Sevilla (España)">Sevilla (España)</option>
					<option value="Zaragoza (España)">Zaragoza (España)</option>
					<option value="Lisboa (Portugal)">Lisboa (Portugal)</option>
					<option value="Oporto (Portugal)">Oporto (Portugal)</option>
					<option value="Faro (Portugal)">Faro (Portugal)</option>
					<option value="Paris (Francia)">Paris (Francia)</option>
					<option value="Tolouse (Francia)">Tolouse (Francia)</option>
					<option value="Niza (Francia)">Niza (Francia)</option>
					<option value="Berlín (Alemania)">Berlín (Alemania)</option>
					<option value="Hamburgo (Alemania)">Hamburgo (Alemania)</option>
					<option value="Düsseldorf (Alemania)">Düsseldorf (Alemania)</option>
					</select><br><br>
					<input type="place" name="place" placeholder="Lugar de trabajo" value="" >
					<br><br>
					<select name="location" type="location" id="location" placeholder="Ubicación">
					<option value="">Modalidad de trabajo</option>
					<option value="Oficina de Coworking">Oficina de Coworking</option>
					<option value="Trabajando desde casa">Trabajando desde casa</option>
					<option value="Trabajando en la oficina">Trabajando en la oficina</option>
					</select>
					<input type="hidden" name="enviado" value="1">
					<br><br>
					<input type="submit" id="sbutton" class="button_clockin2" name="clockin_button" value="Agregar fichaje" >
				</form>
			</div>
				<br>
				<br>
			<?php	

				//Obtener los últimos 30 registros de la tabla clockins para el usuario actual
				require '../controlers/includes/handlers/clockin_fetcher.php';

				// Verificar si se encontraron registros
				if ($result > -1) {
				// Mostrar la tabla con los resultados
				echo "<table class='tabla_clockins'>";
				echo "<tr><th> Fecha </th><th> País/Región </th><th> Modalidad de Trabajo </th><th> Lugar </th></tr>";
				while($row = $query_datos_clockins -> fetch_assoc()) {
					echo "<tr><td>" . $row["clockin_date"] . "</td><td>" . $row["country_region"] . "</td><td>" . $row["clockin_location"] . "</td><td>" . $row["place"] . "</td></tr>";
				}
				echo "</table>";
				} else {
				echo "No se han encontrado registros para el usuario actual<br>";
				}

			?>
						
		</div>

	</div>
</body>
</html>