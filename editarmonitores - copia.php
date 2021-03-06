<?php
include("seguridadbaja.php");
include ("conectardb.php");
?>
<!DOCTYPE html>
<html>
    <head>
    <title>INVENTARIO</title>
    <meta content='width=device-width, initial-scale=1, maximum-scale=1, user-scalable=yes' name='viewport'>
        <link href="css/bootstrap.min.css" rel="stylesheet" type="text/css" />
        <link href="css/font-awesome.min.css" rel="stylesheet" type="text/css" />
        <link href="css/ionicons.min.css" rel="stylesheet" type="text/css" />
        <link href="css/datatables/dataTables.bootstrap.css" rel="stylesheet" type="text/css" />
        <link href="css/AdminLTE.css" rel="stylesheet" type="text/css" />
    </head>
    <body class="skin-blue">
        <header class="header">
            <a href="aplicacion.php" class="logo">
                INVENTARIO
            </a>
            <nav class="navbar navbar-static-top" role="navigation">
          <a href="#" class="navbar-btn sidebar-toggle" data-toggle="offcanvas" role="button">
                    <span class="sr-only">Toggle navigation</span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                </a>
               
            </nav>
        </header>
        <div class="wrapper row-offcanvas row-offcanvas-left">
            <aside class="left-side sidebar-offcanvas">                
                <section class="sidebar">                 
                       <ul class="sidebar-menu">
                  <li class="treeview">
                            <a href="#">
                                <i class="fa fa-laptop"></i>
                                <span>ORDENADORES</span>
                                <i class="fa fa-angle-left pull-right"></i>
                            </a>
                            <ul class="treeview-menu">
                                <li><a href="aplicacion.php"><i class="fa fa-angle-double-right"></i> Consulta</a></li>
                                <li><a href="altasordenadores.php"><i class="fa fa-angle-double-right"></i> Alta</a></li>
                              </ul>
                        </li>
                        <li class="treeview">
                            <a href="#">
                                <i class="fa fa-laptop"></i>
                                <span>MONITORES</span>
                                <i class="fa fa-angle-left pull-right"></i>
                            </a>
                            <ul class="treeview-menu">
                                <li><a href="monitores.php"><i class="fa fa-angle-double-right"></i> Consulta</a></li>
                                <li><a href="altasmonitores.php"><i class="fa fa-angle-double-right"></i> Alta</a></li>
                              </ul>
                        </li>
                        <li class="treeview">
                            <a href="#">
                                <i class="fa fa-laptop"></i>
                                <span>IMPRESORAS/ESC??NERES</span>
                                <i class="fa fa-angle-left pull-right"></i>
                            </a>
                            <ul class="treeview-menu">
                                <li><a href="dispositivo.php"><i class="fa fa-angle-double-right"></i> Consulta</a></li>
                                <li><a href="altasdispositivos.php"><i class="fa fa-angle-double-right"></i> Alta</a></li>
                              </ul>
                        </li>     
                </section>
            </aside>
            <aside class="right-side">                
                <section class="content">
                    <div class="row">
                        <div class="col-xs-12">
                            <div class="box">

    <?php
    if (isset($_GET['codigo_monitor'])){
    $sql="SELECT * FROM monitores WHERE codigo_monitor = '$_GET[codigo_monitor]'";
    $result=mysqli_query ($conexion, $sql);
    $row=mysqli_fetch_array ($result);
    switch ($row['codigo_edificio']) {
        case "ayt":
            $slt_ayt="selected";
            break;
        case "bib":
            $slt_bib="selected";
            break;
        case "cem":
            $slt_cem="selected";
            break;
        case "cim":
            $slt_cim="selected";
            break;
        case "cul":
            $slt_cul="selected";
            break;
        case "juv":
            $slt_juv="selected";
            break;
        case "mer":
            $slt_mer="selected";
            break;          
        case "mus":
            $slt_mus="selected";
            break;
        case "pol":
            $slt_pol="selected";
            break;
        case "pro":
            $slt_pro="selected";
            break;
        case "rec":
            $slt_rec="selected";
            break;
        case "sed":
            $slt_sed="selected";
            break;
        case "soc":
            $slt_soc="selected";
            break;
        case "urb":
            $slt_urb="selected";
            break;
    }
}
    ?>

<form name="form1" method="post" action="editarmonitores.php">
<input type="hidden" name="codigo_monitor" value='<?php echo $_GET["codigo_monitor"]?>'/>

<h1>Editar Monitor</h1><br>

    <p>Marca y modelo:</p>
    <input type="text" class="form-control" name="marca_modelo" value="<?php echo $row['marca_modelo'] ?>" required/><br>
    
    <p>Pulgadas:</p>
    <input type="number" class="form-control" name="pulgadas" maxlength="2" value="<?php echo $row['pulgadas'] ?>" required/><br>

    <p>Edificio:</p>
    <select ordenadores class="form-control" name="codigo_edificio"/>
        <option <?php if(isset($slt_ayt)) {echo $slt_ayt;} else{}?> value="ayt">Ayuntamiento</option>
        <option <?php if(isset($slt_bib)) {echo $slt_bib;} else{}?> value="bib">Biblioteca</option>
        <option <?php if(isset($slt_cem)) {echo $slt_cem;} else{}?> value="cem">CEMID</option>
        <option <?php if(isset($slt_cim)) {echo $slt_cim;} else{}?> value="cim">Centro de la Mujer</option>
        <option <?php if(isset($slt_cul)) {echo $slt_cul;} else{}?> value="cul">Cultura</option>
        <option <?php if(isset($slt_juv)) {echo $slt_juv;} else{}?> value="juv">Juventud y deportes</option>
        <option <?php if(isset($slt_mer)) {echo $slt_mer;} else{}?> value="mer">Mercado</option>
        <option <?php if(isset($slt_mus)) {echo $slt_mus;} else{}?> value="mus">Museo</option>
        <option <?php if(isset($slt_pol)) {echo $slt_pol;} else{}?> value="pol">Polic??a Local</option>
        <option <?php if(isset($slt_pro)) {echo $slt_pro;} else{}?> value="pro">Prodis</option>
        <option <?php if(isset($slt_rec)) {echo $slt_rec;} else{}?> value="rec">Recaudaci??n</option>
        <option <?php if(isset($slt_sed)) {echo $slt_sed;} else{}?> value="sed">Sedesa</option>
        <option <?php if(isset($slt_soc)) {echo $slt_soc;} else{}?> value="soc">Servicios Sociales</option>
        <option <?php if(isset($slt_urb)) {echo $slt_urb;} else{}?> value="urb">Urbanismo</option>
        </select>
        <br>

    <p>Usuario:</p>
    <input type="text" class="form-control" name="nombre_usuario" value="<?php echo $row['nombre_usuario'] ?>"/><br><br><br>


<input name="enviar" type="submit" class="btn-success" id="enviar" value="enviar">

<?php
if ($_SERVER["REQUEST_METHOD"] == "POST") {

    $marca_modelo = $_REQUEST['marca_modelo'];
    $pulgadas = $_REQUEST['pulgadas'];
    $nombre_usuario = $_REQUEST['nombre_usuario'];
    $codigo_edificio = $_REQUEST['codigo_edificio'];
    $codigo_monitor = $_POST["codigo_monitor"];

    $select="SELECT * FROM monitores M, edificios E
    WHERE M.codigo_edificio = E.codigo_edificio
    AND M.codigo_edificio = '$codigo_edificio'
    AND M.codigo_monitor NOT LIKE '$codigo_monitor';";

    if ($cuenta2=mysqli_query ($conexion, $select)) {
    $cuenta3=mysqli_num_rows ($cuenta2);
    $ultimo=$cuenta3+1;
    $codigo_monitor2=$codigo_edificio.".2-".$ultimo;

    $update="UPDATE monitores 
    SET codigo_monitor='$codigo_monitor2', marca_modelo='$marca_modelo', pulgadas='$pulgadas', nombre_usuario='$nombre_usuario', codigo_edificio='$codigo_edificio'
    WHERE codigo_monitor = '$codigo_monitor'";

    $resultadoupdate = mysqli_query( $conexion, $update );
    $comprobacion = mysqli_affected_rows( $conexion );
    $resultadoselect = mysqli_query( $conexion, $select );
    mysqli_error($conexion);    

    if (($comprobacion) == 0 ) {
        die ("<h2>No se ha actualizado el registro correctamente</h2>");
    }
}

?>

<script>
    window.location = "monitores.php"
</script>

<?php
mysqli_free_result($resultadoselect);
mysqli_free_result($result);
mysqli_close($conexion);
    }

?>

</form>
                            </div>
                        </div>
                    </div>

                </section>
            </aside>
        </div>

        <script src="http://ajax.googleapis.com/ajax/libs/jquery/2.0.2/jquery.min.js"></script>
        <script src="js/bootstrap.min.js" type="text/javascript"></script>
        <script src="js/plugins/datatables/jquery.dataTables.js" type="text/javascript"></script>
        <script src="js/plugins/datatables/dataTables.bootstrap.js" type="text/javascript"></script> 
        <script src="js/AdminLTE/app.js" type="text/javascript"></script>
        <script type="text/javascript">

            $(function() {
                $('#example1').dataTable({
					"aaSorting": [[ 0, "desc" ]],	
					"oLanguage": { "sEmptyTable": "No hay registros disponibles", "sInfo": "Hay _TOTAL_ registros. Mostrando de (_START_ a _END_)", "sLoadingRecords": "Por favor espera - Cargando...", "sSearch": "Filtro:", "sLengthMenu": "Mostrar _MENU_", "oPaginate": { "sLast": "???ltima p???gina", "sFirst": "Primera", "sNext": "Siguiente", "sPrevious": "Anterior" } },
					"bPaginate": true,
					"bLengthChange": true,
                    "bFilter": true,
					"bAutoWidth": true
                });
            });
        </script>
</body>
</html>