<?php $json = file_get_contents('https://floridaluxurymagazine.com.br/adm/wp-json/wp/v2/posts');


$posts = json_decode($json, true);

$filteredPosts = [];


$filteredPosts = [];


if ($_POST['Date']) {
    foreach ($posts as $post => $info) {
        $splitedDate = explode("T", $info['date']);
        if ($splitedDate[0] === $_POST['Date']) {
            array_push($filteredPosts, $info);
        }
    }
} else {
    $filteredPosts = array($posts[0], $posts[1], $posts[2]);
};


?>

<!DOCTYPE html>
<html>

<head>

    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">

    <meta name="twitter:card" content="summary_large_image" />
    <meta name="twitter:image:src" content="">
    <meta property="og:image" content="">
    <meta name="twitter:title" content="Lux News">
    <meta name="viewport" content="width=device-width, initial-scale=1, minimum-scale=1">
    <link rel="shortcut icon" href="assets/images/logo-transpbrilho-mdio-g-128x56.png" type="image/x-icon">
    <meta name="description" content="">


    <title>Lux News</title>
    <link rel="stylesheet" href="assets/web/assets/mobirise-icons/mobirise-icons.css">
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

    <style>
        form#myform {
            display: flex;
            justify-content: center;
            padding: 3em 0;
        }

        form#myform h3 {
            line-height: 1;
            display: flex;
            align-items: flex-end;
            color: #746a6a;
            font-weight: bold;
            ;
        }

        form#myform input[type="submit"] {
            border-radius: 15%;
            background: darkgray;
            border: none;
        }

        form#myform * {
            margin: 0 1em;
            align-self: center;
        }

        input[type="date"] {
            border: none;
        }
    </style>

</head>

<body>
    <a href="https://api.whatsapp.com/send?l=pt&phone=555199970008"><img src="https://i.imgur.com/ryESuZ5.png" style="height:80px; position:fixed; bottom: 25px; right: 25px; z-index:99999;" data-selector="img"></a>
    <section class="header1 cid-tldS8HASd0 mbr-parallax-background" id="aheader1-3u">




        <div class="mbr-overlay" style="opacity: 0.4; background-color: rgb(31, 29, 26);"></div>

        <div class="container-fluid">
            <div class="row justify-content-center">
                <div class="col-12 col-lg-11">
                    <h1 class="mbr-section-title mbr-fonts-style mb-0 align-center display-1">
                        <strong>Lux News</strong>
                    </h1>



                </div>
            </div>
        </div>
    </section>
    <section class="features16">

        <form method="post" action="news.php" id="myform">
            <h3>Selecione data do post:</h3>
            <input type='date' name="Date"><br />
            <input type="submit" value="Filtrar" />
        </form>

    </section>


    <?php if (count($filteredPosts) !== 0) : ?>
        <?php foreach ($filteredPosts as $post => $info) : ?>
            <section class="features16 businessm4_features16 cid-tldJEEutG2 mbr-parallax-background" id="features16-3b">


                <div class="mbr-overlay" style="opacity: 0.9;">
                </div>

                <div class="container">
                    <div class="row main-row">
                        <div class="text-block mb-4 col-lg-6">
                            <h2 class="mb-4 mbr-fonts-style mbr-section-title display-2"><?php echo $info['title']['rendered'] ?></h2>
                            <h4 class="mb-4"><?php

                                                $date = explode("T", $info['date'])[0];
                                                echo date("d-m-Y", strtotime($date));
                                                ?></h4>
                            <h3 class="mbr-fonts-style mbr-text section-text align-left display-7"><?php echo $info['content']['rendered'] ?></h3>

                        </div>

                        <div class="mbr-figure col-lg-5">
                            <div class="mbr-figure__img">
                                <img src="<?php echo $info['featured_image_url'] ?>" alt="News florida Luxury">
                            </div>
                        </div>

                    </div>
                </div>
            </section>

        <?php endforeach ?>

    <?php else : ?>

        <section class="features16 businessm4_features16 cid-tldJEEutG2 mbr-parallax-background test" id="features16-3b">


            <div class="mbr-overlay" style="opacity: 0.9;">
            </div>

            <div class="container">

                <div class="row main-row" style="justify-content: center;">
                    <center>
                        <h1>Nenhum post encontrado para esta data </h1>
                    </center>
                </div>

            </div>

        </section>


    <?php endif; ?>

    <section data-bs-version="5.1" class="mbr-section content4 cid-tldJEFDCCZ" id="content4-3d">



        <div class="container">
            <div class="media-container-row">
                <div class="title col-12 col-md-8">



                </div>
            </div>
        </div>
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
                        <li class="nav-item"><a class="nav-link link text-danger display-4" href="index.php">Home</a></li>
                        <li class="nav-item"><a class="nav-link link text-danger display-4" href="sobrenos.php">Sobre Nós</a></li>
                        <li class="nav-item"><a class="nav-link link text-danger display-4" href="edicoes.php">Edições</a></li>
                        <li class="nav-item"><a class="nav-link link text-danger display-4" href="news.php">Lux News</a></li>
                        <li class="nav-item"><a class="nav-link link text-danger display-4" href="galeria.php">Galeria</a></li>
                        <li class="nav-item"><a class="nav-link link text-danger display-4" href="nossaequipe.php">Equipe</a></li>
                        <li class="nav-item"><a class="nav-link link text-danger display-4" href="contato.php">Contato</a></li>
                    </ul>


                </div>
            </div>
        </nav>
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