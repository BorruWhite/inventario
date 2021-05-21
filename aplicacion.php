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
                                <h3 class="box-title">ORDENADORES</h3>
                            </div>

                            <div class="box-body table-responsive">
                                <table id="example1" class="table table-bordered table-striped">
                                    <thead>
                                        <tr>
                                            <th width="12%">CODIGO</th>
                                            <th width="10%">MICROPROCESADOR</th>
                                            <th width="13%">RAM</th>
                                            <th width="15%">IP</th>
                                            <th width="16%">SISTEMA OPERATIVO</th>
                                            <th width="16%">EDIFICIO</th>
                                            <th width="16%">USUARIO</th>
                                            <th width="16%">OBSERVACIONES</th>
                                            <th width="5%"></th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                        <?php

                                        $consulta = "SELECT * FROM ordenadores O, edificios E
                                        WHERE O.codigo_edificio = E.codigo_edificio";

                                        $resultado = mysqli_query($conexion, $consulta);

                                        while ($fila = $resultado->fetch_assoc()) {
                                        ?><tr>
                                                <td> <?php echo $fila['codigo_ordenador']; ?></td>
                                                <td> <?php echo $fila['micro']; ?></td>
                                                <td> <?php echo $fila['ram']; ?></td>
                                                <td> <?php echo $fila['ip']; ?></td>
                                                <td> <?php echo $fila['sistema_operativo']; ?></td>
                                                <td> <?php echo $fila['departamento']; ?></td>
                                                <td> <?php echo $fila['nombre_usuario']; ?></td>
                                                <td> <?php echo $fila['observaciones']; ?></td>
                                                <td><a href='editarordenadores.php?codigo_ordenador=<?php echo $fila["codigo_ordenador"] ?>' class="btn btn-default" title="Modificar"><i class="fa fa-edit"></i></a>
                                                    <a href='eliminarordenadores.php?codigo_ordenador=<?php echo $fila["codigo_ordenador"] ?>&eliminar=1' class="btn btn-default" title="Eliminar"><i class="fa fa-trash-o"></i></a>
                                                </td>
                                            </tr>
                                        <?php
                                        }
                                        ?>

                                </table>

                                <?php
                                mysqli_free_result($resultado);
                                mysqli_close($conexion);
                                ?>

                                </tbody>

                                </table>

                            </div>
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