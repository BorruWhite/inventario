<?php
session_start();
session_destroy();
print "<head><META HTTP-EQUIV=REFRESH CONTENT='0; URL=index.php'></HEAD>";
?>