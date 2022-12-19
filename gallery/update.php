<?php

header("Access-Control-Allow-Origin: *");

include "imgDbConn.php";

$dir          =  dirname(__FILE__); //path

$list = array(); //main array

$testArray = [];

$newOrder = json_decode(stripslashes($_POST['order']));

if (is_dir($dir)) {
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

    //$fetch_images = mysqli_query($con, "SELECT * FROM images_list ORDER BY order ASC");
    $fetch_images = mysqli_query($con, "SELECT * FROM images_list");

    //$row = mysqli_fetch_assoc($fetch_images);
    if (mysqli_fetch_assoc($fetch_images) == null) {
        foreach ($newOrder as $order) {
            $sql = "INSERT INTO images_list (`id`, `order`) VALUES ( '$order->name','$order->index')";

            if ($con->query($sql) === TRUE) {

                array_push($testArray, "New record created successfully");
            } else {
                array_push($testArray, ".$sql" . "<br>" . $con->error);
            }
        }
    } else {
        foreach ($newOrder as $order) {
            $sql = "UPDATE images_list SET `order` = '$order->index' WHERE `id` = '$order->name'";

            if ($con->query($sql) === TRUE) {

                array_push($testArray, "New record created successfully");
            } else {
                array_push($testArray, ".$sql" . "<br>" . $con->error);
            }
        }
    }


    // $return_array = array('files' => $list);
    //$return_data = array('data' => $newOrder);
    $return_test = array('data' => $testArray);
    //echo var_dump($_POST);
    //echo $newOrder;
    //echo json_encode($return_array);
    //echo json_encode($return_data);
    echo json_encode($return_test);
    //echo json_encode($row);
    //$fetch_images = mysqli_query($con, "SELECT * FROM images_list");
    //echo json_encode($fetch_images);
}
