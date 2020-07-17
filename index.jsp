<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="">
    <meta name="author" content="">
    <title>donna</title>
    <!-- Css -->
    <link href="css/bootstrap.css" rel="stylesheet">
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


    <nav class="navbar navbar-default navbar-fixed-top">
        <div class="col-md-12">
            <div class="nav">
                <button class="btn-nav">
               <span class="icon-bar inverted top"></span>
               <span class="icon-bar inverted middle"></span>
               <span class="icon-bar inverted bottom"></span>
               </button>
            </div>
            <a class="navbar-brand" href="index.html">
                <img class="logo" src="img/donnaLogo.png" alt="logo">
            </a>
            <div class="nav-content hideNav hidden">
                <ul class="nav-list vcenter">

                    <li class="nav-item"><a class="item-anchor" href="acerca.jsp">Sobre Nosotros...</a></li>
                    <li class="nav-item"><a class="item-anchor" href="personal.jsp">Nuestro Equipo</a></li>
                    <li class="nav-item"><a class="item-anchor" href="portfolio.jsp">Galería</a></li>
                    <li class="nav-item"><a class="item-anchor" href="precios.jsp">Servicios</a></li>
                    <li class="nav-item"><a class="item-anchor" href="contact.jsp">Contacto</a></li>
                    <li class="nav-item"><a class="item-anchor" href="login.jsp">Login (SOLO PERSONAL)</a></li>
                </ul>
            </div>
        </div>
    </nav>
    <!-- Header -->
    <div class="span12">
        <div class="col-md-6 no-gutter text-center fill">
            <h2 class="vcenter">Tú eres BELLEZA</h2>
        </div>
        <div class="col-md-6 no-gutter text-center">
            <div id="header" data-speed="2" data-type="background">
                <div id="headslide" class="carousel slide" data-ride="carousel">
                    <div class="carousel-inner" role="listbox">
                        <div class="item active">
                            <img src="img/fondo3.jpg" alt="Slide">
                        </div>
                        <div class="item">
                            <img src="img/fondo2.jpg" alt="Slide">
                        </div>
                        <div class="item">
                            <img src="img/fondo1.jpg" alt="Slide">
                        </div>
                        <div class="item">
                            <img src="img/fondo4.jpg" alt="Slide">
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <div style="clear:both;"></div>
    <!-- script -->
    <script src="js/jquery.js"></script>
    <script src="js/bootstrap.min.js"></script>
    <script src="js/spinner.js"></script>
    <script src="js/script.js"></script>
</body>

<footer>&copy; Copyright 2020 DONNA THE BEAUTY ROOM</footer>

</html>