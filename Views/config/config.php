<?php 
ob_start(); //Activa el búfer de salida. (Se llamará a la función cuando se vacíe (envíe) el búfer de salida).
session_start();

$timezone = date_default_timezone_set("Europe/London");

$con = mysqli_connect("localhost", "root", "", "clockin"); //Parámetros conexion 

if(mysqli_connect_errno()) 
{
	echo "Failed to connect: " . mysqli_connect_errno();
}

?>
