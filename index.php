<!DOCTYPE html>
<html class="bg-black">
    <head>
        <meta charset="UTF-8">
        <title>Gestion de Avisos</title>
        <meta content='width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no' name='viewport'>
        <link href="css/bootstrap.min.css" rel="stylesheet" type="text/css" />
        <link href="css/font-awesome.min.css" rel="stylesheet" type="text/css" />
        <link href="css/AdminLTE.css" rel="stylesheet" type="text/css" />
    </head>
    <body class="bg-black">

        <div class="form-box" id="login-box">
            <div class="header">LOGIN</div>
            <form action="validacion.php" method="post">
                <div class="body bg-gray">
                    <div class="form-group">
                        <input type="text" name="usuario2" class="form-control" placeholder="Usuario" id="usuario2"/>
                    </div>
                    <div class="form-group">
                        <input type="password" name="clave" class="form-control" placeholder="Contraseña" id="clave"/>
                    </div>          
                    <div class="form-group"></div>
                </div>
                <div class="footer">                                                               
                    <button type="submit" class="btn bg-olive btn-block">ACCEDER</button>  
                </div>
            </form>
        </div>
        <script src="http://ajax.googleapis.com/ajax/libs/jquery/2.0.2/jquery.min.js"></script>
        <script src="js/bootstrap.min.js" type="text/javascript"></script>        
    </body>
</html>