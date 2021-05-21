<?php
include("seguridadbaja.php");
include("conectardb.php");
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
                            <div class="box-header">
                            </div>
                            <div class="box-body table-responsive">
                                <form name="form1" method="post" action="altasdispositivos.php">

                                    <h1>Nueva Impresora o Escáner</h1><br>

                                    <p>Marca y modelo:</p>
                                    <input type="text" class="form-control" name="marca_modelo" /><br>

                                    <p>IP:</p>
                                    <input type="text" class="form-control" name="ip" /><br>

                                    <p>Edificio:</p>
                                    <select impresoras_escaneres class="form-control" name="codigo_edificio" />
                                    <option selected="selected">-- Seleccione el edificio --</option>
                                    <option value="ayt">Ayuntamiento</option>
                                    <option value="bib">Biblioteca</option>
                                    <option value="cem">CEMID</option>
                                    <option value="cim">Centro de la Mujer</option>
                                    <option value="cul">Cultura</option>
                                    <option value="juv">Juventud y deportes</option>
                                    <option value="mer">Mercado</option>
                                    <option value="mus">Museo</option>
                                    <option value="pol">Policía Local</option>
                                    <option value="pro">Prodis</option>
                                    <option value="rec">Recaudación</option>
                                    <option value="sed">Sedesa</option>
                                    <option value="soc">Servicios Sociales</option>
                                    <option value="urb">Urbanismo</option>
                                    </select>

                                    <br><br><br>

                                    <input name="enviar" type="submit" class="btn-success" id="enviar" value="enviar">
                                </form>
                                <br><br>

                                <?php
                                if ($_SERVER["REQUEST_METHOD"] == "POST") {

                                    $marca_modelo = $_REQUEST['marca_modelo'];
                                    $ip = $_REQUEST['ip'];
                                    $codigo_edificio = $_REQUEST['codigo_edificio'];

                                    $select = "SELECT * FROM impresoras_escaneres WHERE codigo_edificio = '$codigo_edificio';";

                                    if ($cuenta2 = mysqli_query($conexion, $select)) {
                                        $cuenta3 = mysqli_num_rows($cuenta2);
                                        $ultimo = $cuenta3 + 1;
                                        $codigo_impresora_escaner = $codigo_edificio . ".3-" . $ultimo;

                                        if ($ip == NULL) {
                                            $insert = "INSERT INTO impresoras_escaneres (codigo_impresora_escaner, marca_modelo, codigo_edificio) 
                                            VALUES ('$codigo_impresora_escaner', '$marca_modelo', '$codigo_edificio');";
                                        } else {
                                            $insert = "INSERT INTO impresoras_escaneres (codigo_impresora_escaner, marca_modelo, ip, codigo_edificio) 
                                            VALUES ('$codigo_impresora_escaner', '$marca_modelo', '$ip', '$codigo_edificio');";
                                        }

                                        $resultadoinsert = mysqli_query($conexion, $insert);
                                        $comprobacion = mysqli_affected_rows($conexion);
                                        $resultadoselect = mysqli_query($conexion, $select);

                                        if (($comprobacion) == 0) {
                                            die("<h2>La inserción no es válida</h2>");
                                        }

                                ?>

                                        <SCRIPT>
                                            window.location = "dispositivo.php"
                                        </SCRIPT>

                                <?php
                                        mysqli_free_result($resultadoselect);
                                        mysqli_close($conexion);
                                    }
                                }
                                ?>

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
                "aaSorting": [
                    [0, "desc"]
                ],
                "oLanguage": {
                    "sEmptyTable": "No hay registros disponibles",
                    "sInfo": "Hay _TOTAL_ registros. Mostrando de (_START_ a _END_)",
                    "sLoadingRecords": "Por favor espera - Cargando...",
                    "sSearch": "Filtro:",
                    "sLengthMenu": "Mostrar _MENU_",
                    "oPaginate": {
                        "sLast": "�ltima p�gina",
                        "sFirst": "Primera",
                        "sNext": "Siguiente",
                        "sPrevious": "Anterior"
                    }
                },
                "bPaginate": true,
                "bLengthChange": true,
                "bFilter": true,
                "bAutoWidth": true
            });

        });
    </script>
</body>

</html>