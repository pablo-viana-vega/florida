<?php

include 'ImageResize.php';
//use \Gumlet\ImageResize;

$directory = "gallery";

include "gallery/imgDbConn.php";

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
/* $images = glob($directory . "/*.*");
rsort($images); */

/* $imageOptmized=[];

foreach($images as $key => $image){
    if(@is_array(getimagesize($image))){
        $imageOptmized[$key] = new \Gumlet\ImageResize($image);
        $imageOptmized[$key]->quality_jpg = 10;
        $imageOptmized[$key]->save($image);
        print_r('image '.$image);
        $imageOptmized[$key]=$image;
        print_r('image '.$imageOptmized);
    }

}
var_dump($imageOptmized); */


/* foreach ($images as $image){
    if(@is_array(getimagesize($image))){
        $image_name=$images['image']['name'];
        $tmp_name=$images['image']['tmp_name'];

        $directory_name='gallery';     //folder where image will upload
        $file_name=$directory_name.$image_name;
        move_uploaded_file($tmp_name, $file_name);

        $compress_file="compress_".$image_name;
        $compressed_img=$directory_name.$compress_file;
        $compress_image=compressImage($file_name,$compressed_img);
        unlink($directory_name);            //delete original file
    }
}





function compressImage($source_image,$compress_image){
    $image_info=getimagesize($source_image);
    if ($image_info['mime']=='image/jpeg') {
        $source_image=imagecreatefromjpeg($source_image);
        imagejpeg($source_image,$compress_image,60);             //for jpeg or gif, it should be 0-100
    }
    elseif ($image_info['mime']=='image/png') {
        $source_image=imagecreatefrompng($source_image);
        imagepng($source_image,$compress_image,3);                //for png it should be 0 to 9
    }
    return $compress_image;
} */




?>
<!DOCTYPE html>
<html>

<head>

    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">

    <meta name="twitter:card" content="summary_large_image" />
    <meta name="twitter:image:src" content="">
    <meta property="og:image" content="">
    <meta name="twitter:title" content="Galeria">
    <meta name="viewport" content="width=device-width, initial-scale=1, minimum-scale=1">
    <link rel="shortcut icon" href="assets/images/logo-transpbrilho-mdio-g-128x56.png" type="image/x-icon">
    <meta name="description" content="">


    <title>Galeria</title>
    <link rel="stylesheet" href="assets/web/assets/mobirise-icons/mobirise-icons.css">
    <link rel="stylesheet" href="assets/web/assets/mobirise-icons2/mobirise2.css">
    <link rel="stylesheet" href="assets/web/assets/mobirise-icons-bold/mobirise-icons-bold.css">
    <link rel="stylesheet" href="assets/tether/tether.min.css">
    <link rel="stylesheet" href="assets/bootstrap/css/bootstrap.min.css">
    <link rel="stylesheet" href="assets/bootstrap/css/bootstrap-grid.min.css">
    <link rel="stylesheet" href="assets/bootstrap/css/bootstrap-reboot.min.css">
    <link rel="stylesheet" href="assets/animatecss/animate.min.css">
    <link rel="stylesheet" href="assets/popup-overlay-plugin/style.css">
    <link rel="stylesheet" href="assets/dropdown/css/style.css">
    <link rel="stylesheet" href="assets/socicon/css/styles.css">
    <link rel="stylesheet" href="assets/theme/css/style.css">
    <link rel="preload" href="https://fonts.googleapis.com/css?family=Montserrat:100,200,300,400,500,600,700,800,900,100i,200i,300i,400i,500i,600i,700i,800i,900i&display=swap" as="style" onload="this.onload=null;this.rel='stylesheet'">
    <noscript>
        <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Montserrat:100,200,300,400,500,600,700,800,900,100i,200i,300i,400i,500i,600i,700i,800i,900i&display=swap">
    </noscript>
    <link rel="preload" as="style" href="assets/mobirise/css/mbr-additional.css">
    <link rel="stylesheet" href="assets/mobirise/css/mbr-additional.css" type="text/css">
    <meta name="google-site-verification" content="qOqNU4U7yM5HrH6nDy2yw41oPGl60cjLDyOGriMWsbw" />




</head>

<body>
    <a href="https://api.whatsapp.com/send?l=pt&phone=555199970008"><img src="https://i.imgur.com/ryESuZ5.png" style="height:80px; position:fixed; bottom: 25px; right: 25px; z-index:99999;" data-selector="img"></a>
    <section class="header1 cid-tlBaKf2D9l mbr-parallax-background" id="aheader1-4g">




        <div class="mbr-overlay" style="opacity: 0.4; background-color: rgb(31, 29, 26);"></div>

        <div class="container-fluid">
            <div class="row justify-content-center">
                <div class="col-12 col-lg-11">
                    <h1 class="mbr-section-title mbr-fonts-style mb-0 align-center display-1">
                        <strong>Galeria</strong>
                    </h1>



                </div>
            </div>
        </div>
    </section>

    <section data-bs-version="5.1" class="mbr-section content4 cid-tlBpFaKfS7" id="content4-4v">



        <div class="container">
            <div class="media-container-row">
                <div class="title col-12 col-md-8">



                </div>
            </div>
        </div>
    </section>

    <section class="gallery1 cid-tlBpvElAQ6" id="gallery1-4s">
        <div>
            <div class="row galleria" style="/*background: lightgray;gap: 20px; justify-content: center;*/">
                <?php foreach ($list as $image) : ?>

                    <div class="col-12 col-lg-2 col-md-6 col-sm-6 image" style='background-image:url("<?php echo $directory . "/" . $image['file'] ?>"); background-size: cover; background-position: center center; background-repeat: no-repeat;height: 20em;'>
                        <div class="image-overlay"></div>

                    </div>

                <?php endforeach ?>
            </div>
            <div class="row">

            </div>
        </div>
    </section>



    <section data-bs-version="5.1" class="mbr-section content4 cid-tlBpHoG3tk" id="content4-4w">



        <div class="container">
            <div class="media-container-row">
                <div class="title col-12 col-md-8">



                </div>
            </div>
        </div>
    </section>

    <section class="image1 businessm4_image1 cid-tm4EPYQ4R1" id="image1-6a">
        <!-- Block parameters controls (Blue "Gear" panel) -->

        <!-- End block parameters -->

        <figure class="mbr-figure container-fluid">
            <div class="image-block" style="width: 40%; margin:0 auto;">
                <img src="assets/images/casa-florida-logo-andre2-750x514.png" alt="Florida Luxury Magazine">

            </div>
        </figure>
    </section>

    <section class="menu menu1 cid-tlGaAqAY4w" once="menu" id="menu1-5e">


        <nav class="navbar navbar-dropdown navbar-fixed-top navbar-expand-lg">
            <div class="container-fluid">
                <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarNavAltMarkup" aria-expanded="false" aria-label="Toggle navigation">
                    <div class="hamburger">
                        <span></span>
                        <span></span>
                        <span></span>
                        <span></span>
                    </div>
                </button>
                <div class="navbar-brand">
                    <span class="navbar-logo">
                        <a href="index.php">
                            <img src="assets/images/logo-brilho-g-489x216.png" alt="FLORIDA LUXURY" style="height: 8rem;">
                        </a>
                    </span>

                </div>
                <div class="collapse navbar-collapse" id="navbarSupportedContent">
                    <ul class="navbar-nav nav-dropdown nav-right" data-app-modern-menu="true">
                        <li class="nav-item"><a class="nav-link link text-danger display-4" href="index.php">Home</a>
                        </li>
                        <li class="nav-item"><a class="nav-link link text-danger display-4" href="sobrenos.php">Sobre
                                Nós</a></li>
                        <li class="nav-item"><a class="nav-link link text-danger display-4" href="edicoes.php">Edições</a></li>
                        <li class="nav-item"><a class="nav-link link text-danger display-4" href="news.php">Lux News</a>
                        </li>
                        <li class="nav-item"><a class="nav-link link text-danger display-4" href="galeria.php">Galeria</a></li>
                        <li class="nav-item"><a class="nav-link link text-danger display-4" href="nossaequipe.php">Equipe</a></li>
                        <li class="nav-item"><a class="nav-link link text-danger display-4" href="contato.php">Contato</a></li>
                    </ul>


                </div>
            </div>
        </nav>
    </section>


    <?php include "footer.php"  ?>


    <script src="assets/web/assets/jquery/jquery.min.js"></script>
    <script src="assets/popper/popper.min.js"></script>
    <script src="assets/tether/tether.min.js"></script>
    <script src="assets/bootstrap/js/bootstrap.min.js"></script>
    <script src="assets/smoothscroll/smooth-scroll.js"></script>
    <script src="assets/viewportchecker/jquery.viewportchecker.js"></script>
    <script src="assets/parallax/jarallax.min.js"></script>
    <script src="assets/dropdown/js/nav-dropdown.js"></script>
    <script src="assets/dropdown/js/navbar-dropdown.js"></script>
    <script src="assets/touch-swipe/jquery.touch-swipe.min.js"></script>
    <script src="assets/theme/js/script.js"></script>


    <input name="animation" type="hidden">

</body>

</html>