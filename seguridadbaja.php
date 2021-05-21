<?php

session_start();

if (!isset($_SESSION["authbajo"]) || $_SESSION["authbajo"] != "SI") { ?>

	<center>Acceso denegado</center><br>

	<center>Esta intentando acceder a un area restringida</center><br>

	<center>Debe registrarse para poder acceder</center><br>

	<center>Espere mientras se carga la página</center><br>

<?php

	print "<head><META HTTP-EQUIV=REFRESH CONTENT='3; URL=index.php'></HEAD>";

	exit();

}
?>