<?php

$host = "sql741.main-hosting.eu"; /* Host name */
$user = "u534485265_flux"; /* User */
$password = "FluxDb1234!"; /* Password */
$dbname = "u534485265_fluxdb"; /* Database name */

$con = new mysqli($host, $user, $password, $dbname);
// Check connection
if (!$con) {
    //echo "error";
    die("Connection failed: " . mysqli_connect_error());
} else {
    //echo 'conected';
}
