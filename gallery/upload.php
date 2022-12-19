<?php
header('Access-Control-Allow-Origin: *');



include "imgDbConn.php";


$sql = "INSERT INTO images_list (`id`, `order`) VALUES ( '$order->name','$order->index')";

$sqlOrder = "SELECT * FROM images_list ORDER BY `order` DESC";

$fetch_images = mysqli_query($con, $sqlOrder);

$row = mysqli_fetch_assoc($fetch_images);


//header('Access-Control-Allow-Credentials: true');
//header('Access-Control-Allow-Headers: Content-Type, Content-Range, Content-Disposition, Content-Description');
$target_dir = dirname(__FILE__) . '/gallery';
$ext = pathinfo($_FILES["file"]["name"], PATHINFO_EXTENSION);
$_FILES["file"]["name"] = date("Y-m-d-H:i:s");
$name = $_FILES["file"]["name"];
$order = $row['order'] + 1;
$sql = "INSERT INTO images_list (`id`, `order`) VALUES ( '$name.$ext','$order')";
$target_file = basename($_FILES["file"]["name"] . '.' . $ext);
$uploadOk = 1;
$imageFileType = strtolower(pathinfo($target_file, PATHINFO_EXTENSION));
// Check if image file is a actual image or fake image
/*if(isset($_POST["submit"])) {
  $check = getimagesize($_FILES["fileToUpload"]["tmp_name"]);
  if($check !== false) {
    echo "File is an image - " . $check["mime"] . ".";
    $uploadOk = 1;
  } else {
    echo "File is not an image.";
    $uploadOk = 0;
  }
}*/
if ( $con->query($sql) === FALSE && $uploadOk == 0 ) {
  echo "Erro";
  echo $con->error;
  // if everything is ok, try to upload file
} else {
  echo "New record created successfully";
  if (move_uploaded_file($_FILES["file"]["tmp_name"], $target_file)) {
    echo "O arquivo " . htmlspecialchars(basename($_FILES["file"]["name"])) . " enviado com successo.";
  } else {
    echo "Ocorreu um erro.";
    echo $target_file;
  }
}
