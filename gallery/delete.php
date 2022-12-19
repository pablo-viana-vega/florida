<?php
header('Access-Control-Allow-Origin: *');

include "imgDbConn.php";

$path = '';
if (isset($_POST['path'])) {
   $path = $_POST['path'];
}

$sql = "DELETE FROM images_list WHERE `id`= '$path'";

$fetch_images = mysqli_query($con, $sql);


if (mysqli_query($con, $sql)) {
   echo "Record deleted successfully";
} else {
   echo "Error deleting record: " . mysqli_error($con) . " " . $path;
}

$con->close();


/*
if(isset($_POST['path'])){
   $path = $_POST['path'];

   // Check file exist or not
   if( file_exists($path) ){
      // Remove file
      unlink($path);

      // Set status
      echo 'Imagem excluida!';
   }else{
      // Set status
      echo 'Nao foi possivel excluir';
   }
   die;
} */
