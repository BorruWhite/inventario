<?php
include("seguridadbaja.php");
include ("conectardb.php");
$codigo_impresora_escaner = $_GET['codigo_impresora_escaner'];
if ($_GET['eliminar']==1) {
?>
<script language="javascript">
	if (confirm("¿Está seguro que desea eliminar el registro?"))
		{
		location.href='eliminardispositivos.php?eliminar=0&validar_elim=1&codigo_impresora_escaner=<?php echo $codigo_impresora_escaner ?>';
		}
	else
		{
		alert("No se eliminó el registro");
		location.href='dispositivo.php';
		}
	</script>
	<?php
}
	if ($_GET['validar_elim']==1) {
	$delete = "DELETE FROM impresoras_escaneres WHERE codigo_impresora_escaner = '$codigo_impresora_escaner'";
	$sql_elim=mysqli_query($conexion, $delete);

	$comprobacion = mysqli_affected_rows( $conexion );

    if (($comprobacion) == 0 ) {
        die ("<h2>Ha ocurrido un problema eliminando el registro</h2>");
    }

	?>

	<script language="javascript">
	location.href='dispositivo.php?eliminar=1';
	</script>

<?php
	}
?>