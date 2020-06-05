<!DOCTYPE html>
<html lang="en">

<head>
    <title>donna</title>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!--===============================================================================================-->
    <link rel="icon" type="image/png" href="img/favicon.png" />
    <!--===============================================================================================-->

    <!--===============================================================================================-->
    <link rel="stylesheet" type="text/css" HREF="login.css">
   
    <!--===============================================================================================-->
</head>

<body style="background-color: #666666;">

    <div class="limiter">
        <div class="container-login100">
            <div class="wrap-login100">
                <form class="login100-form validate-form" action="Validar" method="POST">
                    <span class="login100-form-title p-b-43">
						
						<img src="img/logos.png" width="400px" height="200px">
					</span>


                    <div class="wrap-input100 validate-input" data-validate="Valid email is required: ex@abc.xyz">
                        <input class="input100" type="text" name="txtuser">

                        <span class="focus-input100"></span>
                        <span class="label-input100">Usuario</span>
                    </div>


                    <div class="wrap-input100 validate-input" data-validate="Password is required">
                        <input class="input100" type="password" name="txtpass">
                        <span class="focus-input100"></span>
                        <span class="label-input100">Password</span>
                    </div>




                    <div class="container-login100-form-btn">
                        
                        <input class ="login100-form-btn" type="submit" name="accion" value="Ingresar">
			
			
                    </div>




                </form>

                <div class="login100-more" style="background-image: url('img/fondo1.png');">
                </div>
            </div>
        </div>
    </div>






    <script src="js/main.js"></script>

</body>

</html>