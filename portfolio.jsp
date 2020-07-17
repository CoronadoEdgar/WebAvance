<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>donna</title>
    <!-- Css -->
    <link href="css/bootstrap.css" rel="stylesheet">
    <link href="css/lightbox.css" rel="stylesheet" type="text/css" media="all" />
    <link href="css/style.css" rel="stylesheet">
    <link rel="stylesheet" href="css/spinner.css">

    <link rel="icon" type="image/png" href="img/favicon.png" />
</head>

<body>


    <div class="preloader">
        <div class="spinner">
            <span class="spinner-rotate"></span>
        </div>
    </div>


    <nav class="navbar navbar-default color-fill navbar-fixed-top">
        <div class="col-md-12">
            <div class="nav">
                <button class="btn-nav">
               <span class="icon-bar top"></span>
               <span class="icon-bar middle"></span>
               <span class="icon-bar bottom"></span>
               </button>
            </div>
            <a class="navbar-brand" href="index.html">
                <img class="logo" src="img/donnaLogo.png" alt="logo">
            </a>
            <div class="nav-content hideNav hidden">
                <ul class="nav-list vcenter">


                    <li class="nav-item"><a class="item-anchor" href="index.jsp">Home</a></li>
                    <li class="nav-item"><a class="item-anchor" href="acerca.jsp">Sobre Nosotros...</a></li>
                    <li class="nav-item"><a class="item-anchor" href="personal.jsp">Nuestro Equipo</a></li>
                    <li class="nav-item"><a class="item-anchor" href="precios.jsp">Servicios</a></li>
                    <li class="nav-item"><a class="item-anchor" href="contact.jsp">Contacto</a></li>
                    <li class="nav-item"><a class="item-anchor" href="login.jsp">Login (SOLO PERSONAL)</a></li>
                </ul>
            </div>
        </div>
    </nav>



    <section id="portfolio">
        <div class="container">
             <h1>
                Galería
            </h1>
        </div>
        <div class="container">
            <ul class="portfolio-sorting list-inline text-center">
                <li><a href="#" data-group="all" class="active">Todas</a>
                </li>
                <li><a href="#" data-group="maquillaje">Maquillaje</a>
                </li>
                <li><a href="#" data-group="peinados">Peinados</a>
                </li>
                <li><a href="#" data-group="spa">Spa</a>
                </li>
                <li><a href="#" data-group="unas">Uñas</a>                </li>
            </ul>
            <div class="row">
                <div class="col-sm-12">
                    <div class="lightbox-grid square-thumbs" data-gallery-title="Gallery">
                        <ul class="portfolio-items list-unstyled" id="grid">
                            <li class="col-md-4 col-sm-12 col-xs-12 no-gutter" data-groups='["maquillaje"]'>
                                <a href="img/maquillaje1.jpg" data-lightbox="true">
                                    <div class="background-image-holder">
                                        <img alt="portfolio" class="background-image" src="img/maquillaje1.jpg" />
                                    </div>
                                </a>
                            </li>
                            <li class="col-md-4 col-sm-12 col-xs-12 no-gutter" data-groups='["peinados"]'>
                                <a href="img/peinado1.jpg" data-lightbox="true">
                                    <div class="background-image-holder">
                                        <img alt="portfolio" class="background-image" src="img/peinado1.jpg" />
                                    </div>
                                </a>
                            </li>
                            <li class="col-md-4 col-sm-12 col-xs-12 no-gutter" data-groups='["spa"]'>
                                <a href="img/spa1.jpg" data-lightbox="true">
                                    <div class="background-image-holder">
                                        <img alt="portfolio" class="background-image" src="img/spa1.jpg" />
                                    </div>
                                </a>
                            </li>
                            <li class="col-md-4 col-sm-12 col-xs-12 no-gutter" data-groups='["maquillaje"]'>
                                <a href="img/maquillaje2.jpg" data-lightbox="true">
                                    <div class="background-image-holder">
                                        <img alt="portfolio" class="background-image" src="img/maquillaje2.jpg" />
                                    </div>
                                </a>
                            </li>
                            <li class="col-md-4 col-sm-12 col-xs-12 no-gutter" data-groups='["unas"]'>
                                <a href="img/una1.jpg" data-lightbox="true">
                                    <div class="background-image-holder">
                                        <img alt="portfolio" class="background-image" src="img/una1.jpg" />
                                    </div>
                                </a>
                            </li>
                            <li class="col-md-4 col-sm-12 col-xs-12 no-gutter" data-groups='["peinados"]'>
                                <a href="img/peinado2.jpg" data-lightbox="true">
                                    <div class="background-image-holder">
                                        <img alt="portfolio" class="background-image" src="img/peinado2.jpg" />
                                    </div>
                                </a>
                            </li>
                            <li class="col-md-4 col-sm-12 col-xs-12 no-gutter" data-groups='["spa"]'>
                                <a href="img/spa2.jpg" data-lightbox="true">
                                    <div class="background-image-holder">
                                        <img alt="portfolio" class="background-image" src="img/spa2.jpg" />
                                    </div>
                                </a>
                            </li>

                            <li class="col-md-4 col-sm-12 col-xs-12 no-gutter" data-groups='["maquillaje"]'>
                                <a href="img/maquillaje3.jpg" data-lightbox="true">
                                    <div class="background-image-holder">
                                        <img alt="portfolio" class="background-image" src="img/maquillaje3.jpg" />
                                    </div>
                                </a>
                            </li>
                            <li class="col-md-4 col-sm-12 col-xs-12 no-gutter" data-groups='["unas"]'>
                                <a href="img/una2.jpg" data-lightbox="true">
                                    <div class="background-image-holder">
                                        <img alt="portfolio" class="background-image" src="img/una2.jpg" />
                                    </div>
                                </a>
                            </li>
                            <li class="col-md-4 col-sm-12 col-xs-12 no-gutter" data-groups='["peinados"]'>
                                <a href="img/peinado3.jpg" data-lightbox="true">
                                    <div class="background-image-holder">
                                        <img alt="portfolio" class="background-image" src="img/peinado3.jpg" />
                                    </div>
                                </a>
                            </li>
                            <li class="col-md-4 col-sm-12 col-xs-12 no-gutter" data-groups='["unas"]'>
                                <a href="img/una3.jpg" data-lightbox="true">
                                    <div class="background-image-holder">
                                        <img alt="portfolio" class="background-image" src="img/una3.jpg" />
                                    </div>
                                </a>
                            </li>
                            <li class="col-md-4 col-sm-12 col-xs-12 no-gutter" data-groups='["spa"]'>
                                <a href="img/spa3.jpg" data-lightbox="true">
                                    <div class="background-image-holder">
                                        <img alt="portfolio" class="background-image" src="img/spa3.jpg" />
                                    </div>
                                </a>
                            </li>
                        </ul>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!-- script -->
    <script src="js/jquery.js"></script>
    <script src="js/bootstrap.min.js"></script>
    <script src="js/lightbox-plus-jquery.js"></script>
    <script src="js/jquery.shuffle.min.js"></script>
    <script src="js/script.js"></script>
    <script src="js/spinner.js"></script>
</body>

<footer>&copy; Copyright 2020 DONNA THE BEAUTY ROOM</footer>

</html>