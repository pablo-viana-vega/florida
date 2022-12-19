<?php $json = file_get_contents('https://floridaluxurymagazine.com.br/adm/wp-json/wp/v2/posts');
header("Access-Control-Allow-Origin: *");
header("Access-Control-Allow-Headers: *");




$posts = json_decode($json, true);
$i = 0;

if ($posts) {
    foreach ($posts as $post => $info) {
        if ($i === 0) {
            $post0 = $info;
        }
        if ($i === 1) {
            $post1 = $info;
        }
        if ($i === 2) {
            $post2 = $info;
        }
        $i++;
        if ($i === 3) {
            break;
        }
    }
}
?>
<!DOCTYPE html>
<html>

<head>

    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">

    <meta name="twitter:card" content="summary_large_image" />
    <meta name="twitter:image:src" content="">
    <meta property="og:image" content="">
    <meta name="twitter:title" content="Home">
    <meta name="viewport" content="width=device-width, initial-scale=1, minimum-scale=1">
    <link rel="shortcut icon" href="assets/images/logo-transpbrilho-mdio-g-128x56.png" type="image/x-icon">
    <meta name="description" content="">


    <title>Home</title>
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
    <link rel="stylesheet" href="assets/wowslider-init/style.css">
    <link rel="preload" href="https://fonts.googleapis.com/css?family=Montserrat:100,200,300,400,500,600,700,800,900,100i,200i,300i,400i,500i,600i,700i,800i,900i&display=swap" as="style" onload="this.onload=null;this.rel='stylesheet'">
    <noscript>
        <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Montserrat:100,200,300,400,500,600,700,800,900,100i,200i,300i,400i,500i,600i,700i,800i,900i&display=swap">
    </noscript>
    <link rel="preload" as="style" href="assets/mobirise/css/mbr-additional.css">
    <link rel="stylesheet" href="assets/mobirise/css/mbr-additional.css" type="text/css">
    <meta name="google-site-verification" content="qOqNU4U7yM5HrH6nDy2yw41oPGl60cjLDyOGriMWsbw" />




    <link rel="stylesheet" href="assets/wowslider-init/boundary/style.css">
</head>

<body>
    <a href="https://api.whatsapp.com/send?l=pt&phone=555199970008"><img src="https://i.imgur.com/ryESuZ5.png" style="height:80px; position:fixed; bottom: 25px; right: 25px; z-index:99999;" data-selector="img"></a>
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

    <section class="mbr-wowslider-container mbr-section mbr-section__container carousel slide mbr-wowslider-container--boundary mbr-section-nopadding" data-ride="carousel" data-keyboard="false" data-wrap="true" data-interval="false" id="wowslider-4c" data-rv-view="2" style="background-color: rgb(255, 255, 255);">
        <div class="mbr-wowslider">
            <div class="ws_images">
                <ul>
                    <li>

                        <img src="assets/images/imagem-2-1600x1080.jpg" alt="title 1" title="title 1"> text 1
                    </li>
                    <li>

                        <img src="assets/images/imagem-3-1600x1080.jpg" alt="title 2" title="title 2"> text 2
                    </li>
                    <li>

                        <img src="assets/images/imagem-4-1600x1080.jpg" alt="title 3" title="title 3"> text 3
                    </li>
                    <li>

                        <img src="assets/images/imagem-7-1600x1080.jpg" alt="title 1" title="title 1"> text 1
                    </li>
                </ul>
            </div>
            <div class="ws_bullets">
                <div>
                    <a href="#" title="">
                        <span><img alt="slide1" src="assets/images/imagem-5-85x48.png"></span>
                    </a><a href="#" title="">
                        <span><img alt="slide1" src="assets/images/imagem-6-85x48.png"></span>
                    </a><a href="#" title="">
                        <span><img alt="slide1" src="assets/images/imagem-7-85x48.png"></span>
                    </a><a href="#" title="">
                        <span><img alt="slide1" src="assets/images/imagem-11-85x48.png"></span>
                    </a>
                </div>
            </div>
            <div class="ws_shadow"></div>
            <div class="mbr-wowslider-options">
                <div class="params" data-anim-type="blast" data-theme="boundary" data-autoplay="true" data-paddingtop="0" data-paddingbottom="1" data-fullscreen="true" data-showbullets="false" data-timeout="2" data-duration="2" data-height="1080" data-width="1600" data-responsive="2" data-showcaptions="false" data-captionseffect="slide" data-hidecontrols="false"></div>
            </div>
        </div>
    </section>

    <?php if ($posts) : ?>
        <section class="features17 businessm4_features17 cid-tmJRkurodo" id="features17-6l">





            <div class="container">
                <h2 class="mbr-fonts-style mb-4 align-center mbr-bold display-2"><span style="font-weight: normal;">Lux
                        News</span></h2>

                <div class="media-container-row">
                    <div class="card col-12 col-md-4 col-lg-4">
                        <div class="card-img" style='background-image:url("<?php echo $post0['featured_image_url'] ?>");'>
                            <!--<img src="<?php echo $post0['featured_image_url'] ?>" alt="Florida Luxury Magazine">-->
                        </div>
                        <div class="card-box">
                            <h4 class="card-title mbr-fonts-style align-center display-5">
                                <?php echo $post0['title']['rendered']  ?>....
                            </h4>

                            <div class="mbr-section-btn align-center"><a class="btn-underline mr-3 text-info display-4" href="news.php">Leia mais</a></div>
                        </div>
                    </div>
                    <div class="card col-12 col-md-4 col-lg-4">
                        <div class="card-img" style='background-image:url("<?php echo $post1['featured_image_url'] ?>");'>
                            <!--<img src="<?php echo $post1['featured_image_url']  ?>" alt="">-->
                        </div>
                        <div class="card-box">
                            <h4 class="card-title mbr-fonts-style align-center display-5">
                                <?php echo $post1['title']['rendered']  ?>...
                            </h4>

                            <div class="mbr-section-btn align-center"><a class="btn-underline mr-3 text-info display-4" href="news.php">Leia mais</a></div>
                        </div>
                    </div>
                    <div class="card col-12 col-md-4 col-lg-4">
                        <div class="card-img" style='background-image:url("<?php echo $post2['featured_image_url'] ?>");'>
                            <!--<img src="<?php echo $post2['featured_image_url']  ?>" alt="">-->
                        </div>
                        <div class="card-box">
                            <h4 class="card-title mbr-fonts-style align-center display-5">
                                <?php echo $post2['title']['rendered']  ?>....&nbsp;
                            </h4>

                            <div class="mbr-section-btn align-center"><a class="btn-underline mr-3 text-info display-4" href="news.php">Leia mais</a></div>
                        </div>
                    </div>
                </div>
            </div>

        <?php endif; ?>


        <section data-bs-version="5.1" class="mbr-section content4 cid-tmoi8lhYaR" id="content4-6i">



            <div class="container">
                <div class="media-container-row">
                    <div class="title col-12 col-md-8">
                        <h2 class="align-center pb-3 mbr-fonts-style display-2">

                            <div>SEGUNDA EDIÇÃO</div>
                        </h2>


                    </div>
                </div>
            </div>
        </section>

        <section class="image1 lodgem5 cid-tmohC8YRZL" id="aimage1-6g">




            <div class="container">
                <div class="row img-row">
                    <div class="img-container col-12 col-xl-10">
                        <div class="image-wrapper">
                            <iframe style="width:900px;height:500px" src="https://online.fliphtml5.com/kcwjb/rsts/" seamless="seamless" scrolling="no" frameborder="0" allowtransparency="true" allowfullscreen="true"  ></iframe>
                        </div>
                    </div>
                </div>
            </div>
        </section>

        <section class="mbr-section content1 businessm4_content1 cid-tmohNQZLnX" id="content1-6h">



            <div class="container">
                <div class="row justify-content-center">
                    <div class="col-lg-8 col-md-10">
                        <b>A segunda edição está recheada de novidades</b>, notícias, imagens, personalidades e matérias
                        interessantes, que instigarão a você leitor, a curiosidade de folhear página por página.
                        <br>
                        <br><b>Estamos de cara nova, com nome novo,
                            <br>FLORIDA LUXURY MAGAZINE.
                        </b><br>
                        <br><b>Com projeto diferenciado e layout arrojado</b>, proporcionaremos aos apreciadores da boa
                        leitura, sensação única de prazer inenarrável.
                        <br>
                        <br>"Você irá se deliciar com a revista queridinha dos brasileiros na Flórida".
                        <br>
                        <strong>Boa leitura...</strong>
                        <br><br></p>
                    </div>
                </div>
            </div>
        </section>
        <section data-bs-version="5.1" class="mbr-section content4 cid-tmoi8lhYaR" id="content4-6i">



            <div class="container">
                <div class="media-container-row">
                    <div class="title col-12 col-md-8">
                        <h2 class="align-center pb-3 mbr-fonts-style display-2">

                            <div>PRIMEIRA EDIÇÃO</div>
                        </h2>


                    </div>
                </div>
            </div>
        </section>

        <section class="image1 lodgem5 cid-tmohC8YRZL" id="aimage1-6g">




            <div class="container">
                <div class="row img-row">
                    <div class="img-container col-12 col-xl-10">
                        <div class="image-wrapper">
                            <iframe style="width:900px;height:500px" src="https://online.fliphtml5.com/kcwjb/lwed/" seamless="seamless" scrolling="no" frameborder="0" allowtransparency="true" allowfullscreen="true"></iframe>
                        </div>
                    </div>
                </div>
            </div>
        </section>

        <section class="mbr-section content1 businessm4_content1 cid-tmohNQZLnX" id="content1-6h">



            <div class="container">
                <div class="row justify-content-center">
                    <div class="col-lg-8 col-md-10">
                        <p class="mbr-text mbr-fonts-style mbr-light display-7">&nbsp;<strong>A revista foi idealizada
                                no
                                intuito de aproximar brasileiros empreendedores residentes na Flórida, de brasileiros
                                apaixonados pelos Estados Unidos, residentes no Brasil.
                                <br></strong>
                            <br><strong>O diferencial da revista,</strong> é primar pela excelência em todos os
                            aspectos,
                            desde a publicação de matérias exclusivas com empresários e profissionais relevantes no
                            mercado
                            americano e brasileiro , à empresas de sucesso internacional nos mais variados ramos de
                            atividade.
                            <br>
                            <br><strong>Centrada na pauta LUXURY e LIFESTYLE,
                            </strong><br>a publicação reúne reportagens sobre temas relevantes, novidades e lançamentos
                            de
                            empreendimentos imobiliários, arquitetura e designer de móveis de luxo, arte e cultura,
                            carros,
                            iates e aviões, hotéis ,resorts e restaurantes de luxo, bem como joias, relógios e objetos
                            diferenciados.
                            <br>Você ficará deslumbrado com as imagens belíssimas, conteúdo inteligente e reportagens
                            únicas
                            desta revista.
                            <br>Boa leitura .&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;
                        </p>
                    </div>
                </div>
            </div>
        </section>


        <section class="clients clients1 businessm4_clients1 cid-tluH0yA2HE mbr-parallax-background" data-interval="false" id="clients1-4b">



            <div class="mbr-overlay" style="opacity: 0;">
            </div>

            <div class="container mb-5">
                <div class="media-container-row">
                    <div class="col-12 align-center">
                        <h2 class="mbr-section-title pb-2 mbr-fonts-style mbr-white display-2">NOSSOS PARCEIROS</h2>

                    </div>
                </div>
            </div>

            <div class="container">
                <div class="carousel slide" role="listbox" data-pause="true" data-keyboard="false" data-ride="carousel" data-interval="4000">
                    <div class="carousel-inner" data-visible="6">





                        <div class="carousel-item ">
                            <div class="media-container-row">
                                <div class="col-md-12">
                                    <div class="wrap-img ">
                                        <img src="assets/images/logo-miss-sweet-240x240.jpg" class="img-responsive clients-img" alt="">
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="carousel-item ">
                            <div class="media-container-row">
                                <div class="col-md-12">
                                    <div class="wrap-img ">
                                        <img src="assets/images/logo-vinhos-689x690.jpg" class="img-responsive clients-img" alt="">
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="carousel-item ">
                            <div class="media-container-row">
                                <div class="col-md-12">
                                    <div class="wrap-img ">
                                        <img src="assets/images/logo-fg-690x689.jpg" class="img-responsive clients-img" alt="">
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="carousel-item ">
                            <div class="media-container-row">
                                <div class="col-md-12">
                                    <div class="wrap-img ">
                                        <img src="assets/images/logo-pierre-689x690.jpg" class="img-responsive clients-img" alt="">
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="carousel-item ">
                            <div class="media-container-row">
                                <div class="col-md-12">
                                    <div class="wrap-img ">
                                        <img src="assets/images/logo-casagroup-florida-400x400.jpg" class="img-responsive clients-img" alt="">
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="carousel-item ">
                            <div class="media-container-row">
                                <div class="col-md-12">
                                    <div class="wrap-img ">
                                        <img src="assets/images/logo-impressul-400x400.jpg" class="img-responsive clients-img" alt="">
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="carousel-item ">
                            <div class="media-container-row">
                                <div class="col-md-12">
                                    <div class="wrap-img ">
                                        <img src="assets/images/logo-casagroup-400x400.jpg" class="img-responsive clients-img" alt="">
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="carousel-item ">
                            <div class="media-container-row">
                                <div class="col-md-12">
                                    <div class="wrap-img ">
                                        <img src="assets/images/logo-sierra-690x689.jpg" class="img-responsive clients-img" alt="">
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="carousel-item ">
                            <div class="media-container-row">
                                <div class="col-md-12">
                                    <div class="wrap-img ">
                                        <img src="assets/images/Plasticare.jpg" class="img-responsive clients-img" alt="">
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="carousel-item ">
                            <div class="media-container-row">
                                <div class="col-md-12">
                                    <div class="wrap-img ">
                                        <img src="assets/images/VC.jpg" class="img-responsive clients-img" alt="">
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="carousel-item ">
                            <div class="media-container-row">
                                <div class="col-md-12">
                                    <div class="wrap-img ">
                                        <img src="assets/images/dental-estética.jpg" class="img-responsive clients-img" alt="">
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="carousel-controls">
                        <a data-app-prevent-settings="" class="carousel-control carousel-control-prev" role="button" data-slide="prev">
                            <span aria-hidden="true" class="mbri-left mbr-iconfont"></span>
                            <span class="sr-only">Previous</span>
                        </a>
                        <a data-app-prevent-settings="" class="carousel-control carousel-control-next" role="button" data-slide="next">
                            <span aria-hidden="true" class="mbri-right mbr-iconfont"></span>
                            <span class="sr-only">Next</span>
                        </a>
                    </div>
                </div>
            </div>
        </section>

        <section data-bs-version="5.1" class="mbr-section content4 cid-tlBrJEDxrk" id="content4-4x">



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
                <div class="image-block casaFloImg">
                    <img src="assets/images/casa-florida-logo-andre2-750x514.png" alt="Florida Luxury Magazine">

                </div>
            </figure>
        </section>

        <?php include "footer.php"  ?>


        <script src="https://code.jquery.com/jquery-3.6.1.js" integrity="sha256-3zlB5s2uwoUzrXK3BT7AX3FyvojsraNFxCc2vC/7pNI=" crossorigin="anonymous"></script>
        <script src="assets/popper/popper.min.js"></script>
        <script src="assets/tether/tether.min.js"></script>
        <script src="assets/bootstrap/js/bootstrap.min.js"></script>
        <script src="assets/smoothscroll/smooth-scroll.js"></script>
        <script src="assets/viewportchecker/jquery.viewportchecker.js"></script>
        <script src="assets/dropdown/js/nav-dropdown.js"></script>
        <script src="assets/dropdown/js/navbar-dropdown.js"></script>
        <script src="assets/touch-swipe/jquery.touch-swipe.min.js"></script>
        <script src="assets/wowslider-plugin/wowslider.js"></script>
        <script src="assets/bootstrapcarouselswipe/bootstrap-carousel-swipe.js"></script>
        <script src="assets/mbr-clients-slider/mbr-clients-slider.js"></script>
        <script src="assets/parallax/jarallax.min.js"></script>
        <script src="assets/theme/js/script.js"></script>
        <script src="assets/wowslider-init/script.js"></script>



        <input name="animation" type="hidden">
        <script async src="assets/wowslider-effect/blast/script.js"></script>
</body>

</html>