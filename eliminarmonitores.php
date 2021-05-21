<?php
include("seguridadbaja.php");
include ("conectardb.php");
$codigo_monitor = $_GET["codigo_monitor"];
if ($_GET['eliminar']==1) {
?>
<script language="javascript">
	if (confirm("¿Está seguro que desea eliminar el registro?"))
		{
		location.href='eliminarmonitores.php?eliminar=0&validar_elim=1&codigo_monitor=<?php echo $codigo_monitor ?>';
		}
	else
		{
		alert("No se eliminó el registro");
		location.href='monitores.php';
		}
	</script>
	<?php
}
	if ($_GET["validar_elim"]==1) {
	$delete = "DELETE FROM monitores WHERE codigo_monitor = '$codigo_monitor'";
	$sql_elim=mysqli_query($conexion, $delete);

	$comprobacion = mysqli_affected_rows( $conexion );

    if (($comprobacion) == 0 ) {
        die ("<h2>Ha ocurrido un problema eliminando el registro</h2>");
    }

	?>

	<script language="javascript">
	location.href='monitores.php?eliminar=1';
	</script>

<?php
	}
?>