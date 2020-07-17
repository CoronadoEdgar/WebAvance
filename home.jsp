
<!DOCTYPE html>
<html lang="es">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Home</title>
    <link href="css/styleCRUD2.css" rel="stylesheet">
        <link rel="stylesheet" href="css2/normalize.css">
   
    <link rel="stylesheet" href="css2/material.min.css">
    <link rel="stylesheet" href="css2/material-design-iconic-font.min.css">
    <link rel="stylesheet" href="css2/jquery.mCustomScrollbar.css">
   
    
    <link rel="stylesheet" href="css/spinner.css">
    <link rel="stylesheet" href="css2/styleCRUD.css">
    
             <link rel="icon" type="image/png" href="img/favicon.png" />

</head>

<body>
    
    <div class="preloader">
        <div class="spinner">
            <span class="spinner-rotate"></span>
        </div>
    </div>

    <!-- navLateral -->
    <section class="full-width navLateral">
        <div class="full-width navLateral-bg btn-menu"></div>
        <div class="full-width navLateral-body">
           
            <figure class="full-width navLateral-body-tittle-menu">
                <div>
                    <img src="img/letra.png"  class="img-responsive">
                </div>
                <figcaption>
                    <span >
			 d o n n a<br>
						
					</span>
                </figcaption>
            </figure>
            <nav class="full-width">
                <ul class="full-width list-unstyle menu-principal">
                 
                      
                     <li class="full-width">
                         <a href="Controlador?menu=Proveedor&accion=Listar" class="full-width">
                            <div class="navLateral-body-cl">
                                *
                            </div>
                            <div class="navLateral-body-cr">
                                PROVEEDORES
                            </div>
                        </a>
                    </li>
                      <li class="full-width divider-menu-h"></li>
                        <li class="full-width">
                         <a href="Controlador?menu=Producto&accion=Listar" class="full-width">
                            <div class="navLateral-body-cl">
                                *
                            </div>
                            <div class="navLateral-body-cr">
                                PRODUCTOS
                            </div>
                        </a>
                    </li>
                    
                  
                    <li class="full-width divider-menu-h"></li>
                    <li class="full-width">
                        <a href="Controlador?menu=Empleado&accion=Listar" class="full-width btn-subMenu">
                            <div class="navLateral-body-cl">
                                *
                            </div>
                            <div class="navLateral-body-cr">
                                EMPLEADOS
                            </div>
                            
                        </a>
                        
                    </li>
                    <li class="full-width divider-menu-h"></li>
                    <li class="full-width">
                        <a href="Controlador?menu=Cliente&accion=Listar" class="full-width">
                            <div class="navLateral-body-cl">
                                *
                            </div>
                            <div class="navLateral-body-cr">
                                CLIENTES
                            </div>
                        </a>
                    </li>
                  <li class="full-width divider-menu-h"></li>
                    <li class="full-width">
                        <a href="Controlador?menu=NuevaVenta&accion=Listar" class="full-width">
                            <div class="navLateral-body-cl">
                                *
                            </div>
                            <div class="navLateral-body-cr">
                                VENTAS
                            </div>
                        </a>
                    </li>
                      <li class="full-width divider-menu-h"></li>
                      <li class="full-width">
                                <a href="Controlador?menu=Cita&accion=Listar"class="full-width">
                                    <div class="navLateral-body-cl">
                                        *
                                    </div>
                                    <div class="navLateral-body-cr">
                                        CITAS
                                    </div>
                                </a>
                    </li>
                     <li class="full-width divider-menu-h"></li>
                    <li class="full-width">
                        <a href="Controlador?menu=Servicio&accion=Listar" class="full-width">
                            <div class="navLateral-body-cl">
                                *
                            </div>
                            <div class="navLateral-body-cr">
                                SERVICIOS
                            </div>
                        </a>
                    </li>
                    <li class="full-width divider-menu-h"></li>
                    <li class="full-width">
                        <a href="Validar?accion=Salir"> 
                            <div class="navLateral-body-cl">
                               *
                            </div>
                            <div class="navLateral-body-cr">
                                SALIR
                            </div>
                           
                        </a>
                        
                    </li>
                </ul>
            </nav>
        </div>
    </section>
    <!-- pageContent -->
    <section class="full-width pageContent">
       
        <section class="full-width text-center" >
            <img src="img/donna.png"  style="max-width: 100%">
        </section>
        
        
        <script src="//ajax.googleapis.com/ajax/libs/jquery/1.11.2/jquery.min.js"></script>
    <script>
        window.jQuery || document.write('<script src="js2/jquery-1.11.2.min.js"><\/script>')
    </script>
    <script src="js2/material.min.js"></script>
    <script src="js2/sweetalert2.min.js"></script>
    <script src="js2/jquery.mCustomScrollbar.concat.min.js"></script>
    <script src="js2/main.js"></script>
    <script src="js/spinner.js"></script>
    
    
    

</body>

</html>