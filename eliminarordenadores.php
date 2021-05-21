<?php
include("seguridadbaja.php");
include ("conectardb.php");
$codigo_ordenador = $_GET["codigo_ordenador"];

if ($_GET["eliminar"]==1) {
?>
	<script language="javascript">
		if (confirm("¿Está seguro que desea eliminar el registro?"))
			{
			location.href='eliminarordenadores.php?eliminar=0&validar_elim=1&codigo_ordenador=<?php echo $codigo_ordenador ?>';
			}
		else
			{
			alert("No se eliminó el registro");
			location.href='aplicacion.php';
			}
	</script>
	<?php
}
	else if ($_GET["validar_elim"]==1) {
		$delete = "DELETE FROM ordenadores WHERE codigo_ordenador = '$codigo_ordenador'";
		$sql_elim=mysqli_query($conexion, $delete);

		$comprobacion = mysqli_affected_rows( $conexion );

		if (($comprobacion) == 0 ) {
			die ("<h2>Ha ocurrido un problema eliminando el registro</h2>");
		}

		?>

		<script language="javascript">
		location.href='aplicacion.php';
		</script>

<?php
	}
?>