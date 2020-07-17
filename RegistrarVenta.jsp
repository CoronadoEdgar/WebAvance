<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>

<html>
    
    <head>
          <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
         <link rel="icon" type="image/png" href="img/favicon.png" />
  
                
<link href="css/styleCRUD2.css" rel="stylesheet">
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
        <title>donna</title>
        
          <link rel="stylesheet" href="css2/normalize.css">
    <link rel="stylesheet" href="css2/sweetalert2.css">
    <link rel="stylesheet" href="css2/material.min.css">
    <link rel="stylesheet" href="css2/material-design-iconic-font.min.css">
    <link rel="stylesheet" href="css2/jquery.mCustomScrollbar.css">
    <link rel="stylesheet" href="css2/styleCRUD.css">
    <script src="//ajax.googleapis.com/ajax/libs/jquery/1.11.2/jquery.min.js"></script>
    <script>
        window.jQuery || document.write('<script src="js2/jquery-1.11.2.min.js"><\/script>')
    </script>
    <script src="js2/material.min.js"></script>
    <script src="js2/sweetalert2.min.js"></script>
    <script src="js2/jquery.mCustomScrollbar.concat.min.js"></script>
    <script src="js2/main.js"></script>
    
     <style>
            @media print{
                .parte01, .btn, .accion, .navLateral,.header-well{
                    display: none;
                }
            }
        </style>
    </head>
    
    
    <body>
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
                        <a href="home.jsp" class="full-width">
                            <div class="navLateral-body-cl">
                                *
                            </div>
                            <div class="navLateral-body-cr">
                                HOME
                            </div>
                        </a>
                    </li>
                                        <li class="full-width divider-menu-h"></li>

                      <li class="full-width">
                         <a href="Controlador?menu=Proveedor&accion=Listar" class="full-width">
                            <div class="navLateral-body-cl">
                               *
                            </div>
                            <div class="navLateral-body-cr" >
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
                                <a href="Controlador?menu=Empleado&accion=Listar" class="full-width">
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
                                <a href="Controlador?menu=Cita&accion=Listar" class="full-width">
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
     <section class="full-width pageContent">
       
        <section class="full-width header-well">
            <div class="full-width header-well-icon">
                <i>  <img class="logo" src="img/donnaLogo.png" alt="logo" style="max-width: 300px"></i>
            </div>
            <div class="full-width header-well-text" style="align-content: right">
                <p class="text-condensedLight">
                <h2>VENTAS</h2>
                </p>
            </div>
        </section>
        <div class="mdl-tabs mdl-js-tabs mdl-js-ripple-effect">
        <div class="d-flex">
            <div class="col-lg-5 parte01">
                <div class="card">
                    <form action="Controlador?menu=NuevaVenta" method="POST">
                        <div class="card-body">
                           
                            <!--DATOS DEL PRODUCTO-->
                            <div class="form-group">
                                <label>Datos Producto</label>
                            </div>
                            <div class="form-group d-flex">
                                <div class="col-sm-6 d-flex">
                                    <input type="text" name="codigoproducto" value="${producto.getId()}" class="form-control" placeholder="Codigo">
                                    <button type="submit" name="accion" value="BuscarProducto" class="btn btn-outline-info">Buscar</button>
                                </div>                           
                                <div class="col-sm-6">
                                    <input type="text" name="nomproducto" value="${producto.getNom()}" placeholder="Datos Producto" class="form-control">
                                </div>  
                            </div>
                            <div class="form-group d-flex">
                                <div class="col-sm-6 d-flex">
                                    <input type="text" name="precio" value="${producto.getPre()}" class="form-control" placeholder="S/.0.00">                                
                                </div>                           
                                <div class="col-sm-3">
                                    <input type="number" value="1" name="cant" placeholder="" class="form-control">
                                </div>  
                                <div class="col-sm-3">
                                    <input type="text" name="stock" value="${producto.getStock()}" placeholder="Stock" class="form-control">
                                </div>  
                            </div>
                            <!--BOTON AGREGAR PRODUCTO AL REGISTRO-->
                            <div class="form-group">
                                <div class="col-sm">
                                    <button type="submit" name="accion" value="Agregar" class="btn btn-outline-primary">Agregar Producto</button>
                                </div>
                            </div>
                        </div>
                    </form>
                </div>
            </div>
            <div class="col-sm-7">
                <div class="card parte02">                   
                    <div class="card-body">
                        <div>
                            <img  class="text-left mt-3 col-sm-5" src="img/donnaLogo.png" alt="logo"> 
                        </div>
                        <div class="d-flex ml-auto col-sm-6">
                            
                            <label class="text-left mt-3 col-sm-5">Numero Serie</label>
                            <input readonly="" type="text" name="numeroserie" class="form-control text-center" value="${nserie}" style="font-weight: bold;font-size: 18px">
                        </div>      
                        
                        <br>
                        <table class="table table-hover">
                            <thead>
                                <tr class="text-center">
                                    <th>N°</th>
                                    <th>ID</th>
                                    <th>PRODUCTO</th>
                                    <th>PRECIO</th>
                                    <th>CANTIDAD</th>
                                    <th>SUBTOTAL</th>                                    
                                                                   
                                </tr>
                            </thead>
                            <tbody>
                                <c:forEach var="list" items="${lista}">
                                    <tr class="text-center">
                                        <td>${list.getItem()}</td>
                                        <td>${list.getIdproducto()}</td>
                                        <td>${list.getDescripcionP()}</td>
                                        <td>${list.getPrecio()}</td>
                                        <td>${list.getCantidad()}</td>
                                        <td>${list.getSubtotal()}</td>
                                      
                                    </tr>
                                </c:forEach>

                            </tbody>
                        </table>
                    </div>
                    <div class="card-footer" >
                        <div class="row">
                            <div class="col-sm-6">
                                <a href="Controlador?menu=NuevaVenta&accion=GenerarVenta" onclick="print()" class="btn btn-success">Generar Venta</a>
                                <input type="submit" name="accion" value="Cancelar" class="btn btn-danger">
                            </div>
                            <div class="col-sm-6 ml-auto d-flex">                                
                                <label class=" col-sm-6 text-right mt-2">Total a Pagar</label>                                                       
                                <input type="text" name="txtTotal" value="S/.${totalpagar}0" class="form-control text-center font-weight-bold" style="font-size: 18px;">
                            </div>
                        </div>                        
                    </div>
                </div>

            </div>
        </div>
        </div>
     </section>

        <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js" integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1" crossorigin="anonymous"></script>
        <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>
    </body>
</html>
