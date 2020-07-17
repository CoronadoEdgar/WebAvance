<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <title>donna</title>
    <!-- Css -->
    <link href="css/bootstrap.css" rel="stylesheet">
    <link href="css/style.css" rel="stylesheet">
    <link rel="stylesheet" href="css/spinner.css">
    <link rel="stylesheet" href="css/login.css" type="text/css">

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
                    <li class="nav-item"><a class="item-anchor" href="portfolio.jsp">Galería</a></li>
                    <li class="nav-item"><a class="item-anchor" href="precios.jsp">Servicios</a></li>
                    <li class="nav-item"><a class="item-anchor" href="contact.jsp">Contacto</a></li>

                </ul>
            </div>
        </div>
    </nav>

   
    
     <section>

        <div class="container">
            <div class="user singinBx">
                <div class="imgBx">
                      <img src="img/login2.jpg">
                </div>
                <div class="formBx">
                    <form  action="Validar" method="POST">
                        <h1>Ingresar </h1>
                       
                         <input type="text" name="txtuser" value="" placeholder="Usuario" >
                       <input type="password" name="txtpass" value=""  placeholder="Password">
                        
                       <input type="submit" name="accion" value="Ingresar"  >
                        <p class="signup">No tienes cuenta? <a href="#" onclick="aqui();">Crear Cuenta </a> </p>
                    </form>
                </div>

            </div>
            <div class="user signupBx">

                <div class="formBx">
                    <form>
                         <h1>Crear Cuenta</h1>
                        <h3>UPPS!<br> <br> NO PUDISTE INGRESAR?<br> HECHALE UNA LLAMADITA AL ADMINISTRADOR</h3>
                        <p class="signup">Ya tienes cuenta?<a href="#" onclick="aqui();">Iniciar</a></p>
                    </form>
                </div>
                <div class="imgBx">
                   <img src="img/login1.jpg">
                </div>
            </div>
        </div>


    </section>

    <script type="text/javascript">
        function aqui() {
            var container = document.querySelector('.container');
            container.classList.toggle('active');
        }
    </script>
    
     <!-- script -->
    <script src="js/jquery.js "></script>
    <script src="js/bootstrap.min.js "></script>
    <script src="js/script.js "></script>
    <script src="js/spinner.js"></script>

</body>
   
 
    <footer>&copy; Copyright 2020 DONNA THE BEAUTY ROOM</footer>

</html>