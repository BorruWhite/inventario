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
                                <span>IMPRESORAS/ESCÁNERES</span>
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
    @$sql="SELECT * FROM ordenadores WHERE codigo_ordenador = '$_GET[codigo_ordenador]'";
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
    
?>

<form name="form1" method="post" action="editarordenadores.php">
<input type="hidden" name="codigo_ordenador" value='<?php echo $_GET["codigo_ordenador"]?>'/>

<h1>Editar Ordenador</h1><br>

    <p>Microprocesador:</p>
    <input type="text" class="form-control" value="<?php echo $row['micro'] ?>" name ="micro" /><br>

    <p>RAM:</p>
    <input type="text" class="form-control" value="<?php echo $row['ram'] ?>" name ="ram" /><br>

    <p>IP:</p>
    <input type="text" class="form-control" value="<?php echo $row['ip'] ?>" name ="ip" maxlength="15" /><br>

    <p>Sistema Operativo:</p>
    <input type="text" class="form-control" value="<?php echo $row['sistema_operativo'] ?>" name ="sistema_operativo" /><br>

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
        <option <?php if(isset($slt_pol)) {echo $slt_pol;} else{}?> value="pol">Policía Local</option>
        <option <?php if(isset($slt_pro)) {echo $slt_pro;} else{}?> value="pro">Prodis</option>
        <option <?php if(isset($slt_rec)) {echo $slt_rec;} else{}?> value="rec">Recaudación</option>
        <option <?php if(isset($slt_sed)) {echo $slt_sed;} else{}?> value="sed">Sedesa</option>
        <option <?php if(isset($slt_soc)) {echo $slt_soc;} else{}?> value="soc">Servicios Sociales</option>
        <option <?php if(isset($slt_urb)) {echo $slt_urb;} else{}?> value="urb">Urbanismo</option>
        </select>
        <br>

    <p>Usuario:</p>
    <input type="text" class="form-control" value="<?php echo $row['nombre_usuario'] ?>" name="nombre_usuario"/><br>

    <p>Observaciones:</p>
    <input type="text" class="form-control" value="<?php echo $row['observaciones'] ?>" name="observaciones"/><br>

<input name="enviar" type="submit" class="btn-success" id="enviar" value="enviar">

<?php
if ($_SERVER["REQUEST_METHOD"] == "POST") {

    $micro = $_REQUEST['micro'];
    $ram = $_REQUEST['ram'];
    $ip = $_REQUEST['ip'];
    $sistema_operativo = $_REQUEST['sistema_operativo'];
    $observaciones = $_REQUEST['observaciones'];
    $nombre_usuario = $_REQUEST['nombre_usuario'];
    $codigo_edificio = $_REQUEST['codigo_edificio'];
    $codigo_ordenador = $_POST["codigo_ordenador"];

    if ($observaciones == " ") {
        $update="UPDATE ordenadores 
        SET codigo_ordenador='$codigo_ordenador', micro='$micro', ram='$ram', ip='$ip', sistema_operativo='$sistema_operativo', observaciones=NULL, nombre_usuario='$nombre_usuario', codigo_edificio='$codigo_edificio'
        WHERE codigo_ordenador = '$codigo_ordenador'";
    }
    elseif ($ip == " "){
        $update="UPDATE ordenadores 
        SET codigo_ordenador='$codigo_ordenador', micro='$micro', ram='$ram', ip=NULL, sistema_operativo='$sistema_operativo', observaciones='$observaciones', nombre_usuario='$nombre_usuario', codigo_edificio='$codigo_edificio'
        WHERE codigo_ordenador = '$codigo_ordenador'";
    }
        else {
            $update="UPDATE ordenadores 
            SET codigo_ordenador='$codigo_ordenador', micro='$micro', ram='$ram', ip='$ip', sistema_operativo='$sistema_operativo', observaciones='$observaciones', nombre_usuario='$nombre_usuario', codigo_edificio='$codigo_edificio'
            WHERE codigo_ordenador = '$codigo_ordenador'";
        }
  
    $resultadoupdate = mysqli_query( $conexion, $update );
    $comprobacion = mysqli_affected_rows( $conexion );
    mysqli_error($conexion);    

    if (($comprobacion) == 0 ) {
        die ("<h2>No se ha actualizado el registro correctamente</h2>");
    }

?>

<SCRIPT>
    window.location = "aplicacion.php"
</SCRIPT>

<?php

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
					"oLanguage": { "sEmptyTable": "No hay registros disponibles", "sInfo": "Hay _TOTAL_ registros. Mostrando de (_START_ a _END_)", "sLoadingRecords": "Por favor espera - Cargando...", "sSearch": "Filtro:", "sLengthMenu": "Mostrar _MENU_", "oPaginate": { "sLast": "�ltima p�gina", "sFirst": "Primera", "sNext": "Siguiente", "sPrevious": "Anterior" } },
					"bPaginate": true,
					"bLengthChange": true,
                    "bFilter": true,
					"bAutoWidth": true
                });
            });
        </script>
</body>
</html>