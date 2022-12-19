<?php

header("Access-Control-Allow-Origin: *");



//header("Access-Control-Allow-Origin: *");

//header('Content-Type: application/json');

include "imgDbConn.php";

$sql = "SELECT * FROM images_list ORDER BY `order` DESC";

$fetch_images = mysqli_query($con, $sql);

$list = array();

/* if ($con->query($sql) === TRUE) {

    echo "yes";
} else {
    echo $con->errno; //json_encode($con->connect_errno);
} */

while ($row = mysqli_fetch_assoc($fetch_images)) {
    $id = $row['id'];
    $order = $row['order'];
    $data = array(
        'file' => $id,
        'order' => $order
    );
    array_push($list, $data);
}


$return_array = array('files' => $list);

echo json_encode($return_array);

//$dir          =  dirname(__FILE__); //path

//$list = array(); //main array

/* if (is_dir($dir)) {
    if ($dh = opendir($dir)) {
        while (($file = readdir($dh)) != false) {

            if ($file == "." or $file == "..") {
                //...
            } else { //create object with two fields
                $list3 = array(
                    'file' => $file,
                    'size' => filesize($file)
                );
                array_push($list, $list3);
            }
        }
    }

    //$return_array = array('files' => $fetch_images);

    //echo json_encode($return_array);
    //echo json_encode($fetch_images);
}
 */