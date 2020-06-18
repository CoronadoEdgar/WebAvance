<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <link rel="icon" type="image/png" href="images/favicon.png" />
    <link rel="stylesheet" href="css/login.css" type="text/css">
    <link rel="stylesheet" href="css/estilo.css" type="text/css">
     <link rel="stylesheet" href="css/spinner.css">






</head>

<body>
    <div>

        <nav class="nav">
            <ul>
                <li>
                    <a href="index.jsp">
                        <h3>HOME</h3>
                    </a>
                </li>
                
            </ul>
        </nav>

    </div>



    <section>
        <!-- PRE LOADER -->
    <div class="preloader">
        <div class="spinner">
            <span class="spinner-rotate"></span>
        </div>
    </div>

        <div class="container">
            <div class="user singinBx">
                <div class="imgBx">
                    <img src="images/login.jpg">
                </div>
                <div class="formBx">
                    <form class="login100-form validate-form" action="Validar" method="POST">
                        <h2>Ingresar </h2>
                        <input class="input100" type="text" name="txtuser" placeholder="Usuario">
                       
                        <input type="password" name="txtpass" placeholder="Contraseña" >
                        <input type="submit" name="accion" value="Ingresar">
                        <p >No tienes cuenta?<br> Contacta al Administrador </p>
                    </form>
                </div>

            </div>
        </div>


    </section>

</body>
   <!-- SCRIPTS -->
    <script src="js/jquery.js "></script>
    <script src="js/bootstrap.min.js "></script>

    <script src="js/jquery.magnific-popup.min.js "></script>
    <script src="js/magnific-popup-options.js "></script>
    <script src="js/smoothscroll.js "></script>

    <script src="js/custom.js "></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js " integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM " crossorigin="anonymous "></script>


</html>