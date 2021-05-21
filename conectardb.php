<?php

$servidor = "localhost";
$usuario = "root";
$contrasenya = "";
$BD="inventario";

$conexion = mysqli_connect( $servidor, $usuario, $contrasenya );

//Control de errores
if( mysqli_connect_errno() != 0 ){
    die("Error de conexión: " . mysqli_connect_error() );
}

if ( mysqli_select_db($conexion, $BD) == false )
    die("Fallo al seleccionar la BD.<br><br>");
    
$tildes = mysqli_query($conexion, "SET NAMES 'utf8'" ); 

?>