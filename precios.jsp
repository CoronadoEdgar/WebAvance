<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <title>donna</title>
    <!-- Css -->
    <link rel="icon" type="image/png" href="img/favicon.png" />
    <link href="css/bootstrap.css" rel="stylesheet">
    <link href="css/style.css" rel="stylesheet">
    <link rel="stylesheet" href="css/spinner.css">
    <link rel="stylesheet" href="css/tablas.css">


</head>

<body>
    <!--SPINNER-->
    <div class="preloader">
        <div class="spinner">
            <span class="spinner-rotate"></span>
        </div>
    </div>

    <!--NAVBAR-->
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
                    <li class="nav-item"><a class="item-anchor" href="portfolio.jsp">Galería</a></li>
                    <li class="nav-item"><a class="item-anchor" href="contact.jsp">Contacto</a></li>
                    <li class="nav-item"><a class="item-anchor" href="login.jsp">Login (SOLO PERSONAL)</a></li>
                </ul>
            </div>
        </div>
    </nav>
    <section id="about">
        <div class="container">
           <h1 class="titulo">SERVICIOS</h1>
            <p>
                Ofrecemos en DONNA THE BEUTY ROOM todo tipo de servicios de estética desde alisados, masajes, limpieza de cutis o incluso realizamos tratamientos especiales para novias con pruebas de peinado y maquillaje incluido.<br> Todo para que luzcas
                radiante y bella.
            </p>
            <div class="row">

                <!--TABLAS DE PRECIOS-->
                <div class="pricing-area">
                    <div class="pricing-table">
                        <div class="pricing-title">
                            <h1>CORTES <br>desde</h1>
                        </div>

                        <div class="price">$150 pesos</div>
                        <div class="pricing-details">
                            <ul>
                                <li>Cortes Modernos</li>
                                <li>Cortes Vintage</li>
                                <li>Todo tipo de Cabello</li>
                                <li>Y muchos servicios más...</li>



                            </ul>
                        </div>

                    </div>
                    <div class="pricing-table">
                        <div class="pricing-title">
                            <h1>UÑAS <br>desde</h1>
                        </div>

                        <div class="price">$170 pesos</div>

                        <div class="pricing-details">
                            <ul>
                                <li>Manicura</li>
                                <li>Pedicura</li>
                                <li>Modelado</li>
                                <li>Y muchos servicios más...</li>
                            </ul>
                        </div>

                    </div>
                    <div class="pricing-table">
                        <div class="pricing-title">
                            <h1>PEINADOS<br>desde</h1>
                        </div>

                        <div class="price">$200 pesos</div>

                        <div class="pricing-details">
                            <ul>
                                <li>Novias</li>
                                <li>XV años</li>
                                <li>Alaciados</li>
                                <li>Baños de Color</li>
                                <li>Y muchos servicios más...</li>

                            </ul>
                        </div>

                    </div>
                    <div class="pricing-table">
                        <div class="pricing-title">
                            <h1>SPA<br>desde</h1>
                        </div>

                        <div class="price">$200 pesos</div>

                        <div class="pricing-details">

                            <ul>
                                <li>Masajes</li>
                                <li>Limpieza Facial</li>
                                <li>Depilaciones</li>
                                <li>Y muchos servicios más...</li>


                            </ul>

                        </div>

                    </div>
                </div>
            </div>
            <p>
                Los precios estan sujetos a cambio sin previo aviso.
            </p>

        </div>







        <script type="text/javascript">
            function aqui() {
                var container = document.querySelector('.container');
                container.classList.toggle('active');
            }
        </script>
    </section>
    <!-- script -->
    <script src="js/jquery.js"></script>
    <script src="js/bootstrap.min.js"></script>

    <script src="js/script.js"></script>
    <script src="js/spinner.js"></script>
</body>

<footer>&copy; Copyright 2020 DONNA THE BEAUTY ROOM</footer>

</html>