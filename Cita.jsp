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
    </head>
    <body style="background: transparent">    
         <section class="full-width navLateral">
        <div class="full-width navLateral-bg btn-menu"></div>
        <div class="full-width navLateral-body">

            <figure class="full-width navLateral-body-tittle-menu">
                <div>
                    <img src="img/letra.png"  class="img-responsive">
                </div>
                <figcaption>
                    <span>
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
                <h2>CITAS</h2>
                </p>
            </div>
        </section>
        <div class="mdl-tabs mdl-js-tabs mdl-js-ripple-effect">
        
        <div class="d-flex">
            <div class="col-sm-4">
                <div class="card">
                    <div class="card-body">
                        <form action="Controlador?menu=Cita" method="POST">
                           
                            <div class="form-group">
                                <label>ID CLIENTE</label>
                                <input type="text" value="${cita.getIdCliente()}" name="txtIdCliente" class="form-control">
                            </div>
                            <div class="form-group">
                                <label>FECHA CITA</label>
                                <input type="date" value="${cita.getFecha()}" name="txtFecha" class="form-control">
                            </div>
                            <div class="form-group">
                                <label>HORA</label>
                                <input type="text" value="${cita.getHora()}" name="txtHora" class="form-control">
                            </div>
                            <div class="form-group">
                                <label>ESTADO</label>
                                <input type="text" value="${cita.getEstado()}" name="txtEstado" class="form-control">
                            </div>
                            
                            <input type="submit" name="accion" value="Agregar" class="btn btn-primary">
                            <input type="submit" name="accion" value="Actualizar" class="btn btn-success">
                        </form>
                    </div>                         
                </div>
            </div>                     
            <div class="col-sm-8">
                <div class="card">
                    <div class="card-body">
                        <table class="table table-hover table-responsive">
                            <thead>
                                <tr>
                                    <th>ID cita</th>
                                    <th>IdCliente</th>
                                    <th>Fecha Cita</th>
                                    <th>Hora</th>
                                    <th>ESTADO</th>                                   
                                    <th>ACCIONES</th>
                                </tr>
                            </thead>
                            <tbody> 
                                <c:forEach var="em" items="${citas}">
                                    <tr>
                                        <td>${em.getIdCita()}</td>
                                        <td>${em.getIdCliente()}</td>
                                        <td>${em.getFecha()}</td>
                                        <td>${em.getHora()}</td>
                                        <td>${em.getEstado()}</td>                                        
                                        <td>
                                            <a class="btn btn-warning" href="Controlador?menu=Cita&accion=Editar&id=${em.getIdCita()}">Editar</a>
                                            <a class="btn btn-danger" href="Controlador?menu=Cita&accion=Delete&id=${em.getIdCita()}">Delete</a>
                                        </td>
                                    </tr>
                                </c:forEach>

                            </tbody>
                        </table>
                    </div>
                </div>
            </div>
        </div>      
        <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js" integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1" crossorigin="anonymous"></script>
        <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>
    </body>
</html>

