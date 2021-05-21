<?php

session_start();

	$_SESSION["inicio"]=1;

	$_SESSION["authbajo"]="SI";

	$usuario=$_SESSION["usuario"];

	header ("Location: aplicacion.php");

?>