<?php
	include("conectardb.php");

	$sql = sprintf("SELECT * FROM administradores WHERE usuario='%s' AND clave='%s'",
            mysqli_real_escape_string($conexion, $_POST['usuario2']),
            mysqli_real_escape_string($conexion, $_POST['clave']));

	$result=mysqli_query($conexion, $sql);

	$row=mysqli_fetch_array ($result);

	$usuario=$row['usuario'];

	$cuenta=mysqli_num_rows ($result);

    print mysqli_error($conexion); 

	if (empty($_POST['usuario2']) or empty($_POST['clave']) or $cuenta==0) {
	print "<h2>Ha ocurrido un error</h2>";
	}
	else {
	print "<head><META HTTP-EQUIV=REFRESH CONTENT='0; URL=iniciarsesion.php?usuario=$usuario'></HEAD>";
	}
?>
