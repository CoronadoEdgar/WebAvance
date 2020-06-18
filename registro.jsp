<%-- 
    Document   : index
    Created on : 15/06/2017, 10:39:49 AM
    Author     : ninus69
--%>

<%@page import="java.sql.ResultSet"%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html lang="es">
    <head>
        <meta http-equiv="X-UA-Compatible" content="IE=edge">

        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1" />
        <meta name="description" content="Neon Admin Panel" />
        <meta name="author" content="Francisco Ninus" />

        <link rel="icon" href="assets/images/favicon.ico">

        <title>Registro</title>
        <link rel="stylesheet" href="css/jquery-ui-1.10.3.custom.min.css">
        <link rel="stylesheet" href="css/font-icons/entypo/css/entypo.css">
        <!--<link rel="stylesheet" href="//fonts.googleapis.com/css?family=Noto+Sans:400,700,400italic">-->
        <link rel="stylesheet" href="css/bootstrap.css">
        <link rel="stylesheet" href="css/neon-core.css">
        <link rel="stylesheet" href="css/neon-theme.css">
        <link rel="stylesheet" href="css/neon-forms.css">
        <link rel="stylesheet" href="css/custom.css">
        <link rel="stylesheet" href="css/skin/facebook.css">
        <link rel="stylesheet" href="css/jquery.selectBoxIt.css">
        <!-- <script src="js/jquery-1.11.3.min.js"></script>-->
        <script type="text/javascript" src="js/jquery-2.1.4.min.js"></script>
        <script type="text/javascript" src="js/copia.js"></script>
        <!--Combo-->
        <script type="text/javascript" src="js/combo/comboperu.js"></script>
        <script type="text/javascript" src="js/jquery-ui-1.10.3.custom.min.js"></script>
        <link rel="stylesheet" type="text/css" href="css/jquery-ui-1.10.3.custom.css">

    </head>
    <body class="page-body skin-facebook" data-url="">

        <div class="page-container ">
            <!-- add class "sidebar-collapsed" to close sidebar by default, /*sidebar-collapsed*/ "chat-visible" to make chat appear always -->
            <!-- INICIA MENU LATERAL -->
            <jsp:include page="WEB-INF/menulateral.jspf"></jsp:include>
                <!-- TERMINA MENU LATERAL -->
                <div class="main-content">
                    <!-- INICIA MENU SUPERIOR -->
                <jsp:include page="WEB-INF/menusuperior.jspf"></jsp:include>
                    <!-- TERMINA MENU SUPERIOR -->
                    <hr />
                    <h2>Registro de Fechas</h2>
                    <br />

                    <div id="resultados"></div>
                    <div class="panel panel-primary">

                        <div class="panel-heading">


                            <div class="panel-options">
                                <a href="#sample-modal" data-toggle="modal" data-target="#sample-modal-dialog-1" class="bg"><i class="entypo-cog"></i></a>
                                <a href="#" data-rel="collapse"><i class="entypo-down-open"></i></a>
                                <a href="#" data-rel="reload"><i class="entypo-arrows-ccw"></i></a>
                                <a href="#" data-rel="close"><i class="entypo-cancel"></i></a>
                            </div>
                        </div>

                        <div class="panel-body">

                            <form  action="Fecha" role="form" id="data" method="post" class="validate form-groups-bordered">

                                <div class="col-sm-6">
                                    <div class="form-group">
                                        <label class="control-label">Fecha Inicio</label>
                                        <div class="date-and-time">
                                            <input type="text" name="inicio" class="form-control datepicker" >
                                            <input type="text" name="iniciohora" class="form-control timepicker" data-template="dropdown" data-show-seconds="true" data-default-time="08:00 AM" data-show-meridian="false" data-minute-step="1" data-second-step="1" />
                                        </div>
                                    </div>

                                </div>
                                <div class="col-sm-6">
                                    <div class="form-group">
                                        <label class="control-label">Fecha Fin</label>
                                        <div class="date-and-time">
                                            <input type="text" name="fin" class="form-control datepicker">
                                            <input type="text" name="finhora" class="form-control timepicker" data-template="dropdown" data-show-seconds="true" data-default-time="08:00 AM" data-show-meridian="false" data-minute-step="1" data-second-step="1" />
                                        </div>
                                    </div>
                                </div>
                                <div class="form-group col-sm-12">
                                    <button type="submit" class="btn btn-success">Registrar</button>
                                    <button type="reset" class="btn">Reset</button>
                                </div>
                                <input type="hidden" id="action" name="action" value="registro">
                            </form>
                            <!-- start project list -->
                            <table class="table table-bordered table-hover projects">
                                <thead>
                                    <tr>
                                        <th>Codigo</th>
                                        <th>Fecha  Inicio</th>
                                        <th>Fecha Fin</th>
                                        <th>Dias</th>
                                        <th>Horas</th>
                                        <th>Minutos</th>
                                        <th style="width: 20%">#Edit</th>
                                    </tr>
                                </thead>
                                <tbody>
                                <c:forEach items="${users}" var="user">
                                    <tr>
                                        <td>${user.codigo}</td>
                                        <td>${user.fechainicio}</td>
                                        <td>${user.fechafin}</td>
                                        <td>${user.dias}</td>
                                        <td>${user.horas}</td>
                                        <td>${user.minutos}</td>
                                        <td>
                                            <a href="#" class="btn btn-primary btn-xs"><i class="entypo-info"></i> Ver </a>
                                            <a href="#" class="btn btn-info btn-xs"><i class="entypo-pencil"></i> Editar </a>
                                            <a href="Fecha?action=eliminar&codigo=${user.codigo}" class="btn btn-danger btn-xs"><i class="entypo-cancel"></i> Borrar  </a>

                                        </td>
                                    </tr>
                                </c:forEach>
                            </tbody>
                        </table>
                            <h2>Visita Nuestra Pagina</h2>
                            <center>
                                <iframe width="854" height="480" src="https://www.youtube.com/embed/oo16TlHmQDg" frameborder="0" allowfullscreen></iframe>
                            </center>
                        <!-- end project list -->

                    </div>
                </div>


                <!-- Footer -->
                <footer class="main">

                    &copy; 2017 <strong>CODENINE69</strong>  <a href="https://www.facebook.com/codenine69/" target="_blank">CodeNine</a>

                </footer>
            </div>
        </div>

        <!-- Bottom scripts (common) -->
        <script src="js/TweenMax.min.js"></script>
        <script src="js/jquery-ui-1.10.3.minimal.min.js"></script>
        <script src="js/bootstrap.js"></script>
        <script src="js/joinable.js"></script>
        <script src="js/resizeable.js"></script>
        <script src="js/neon-api.js"></script>

        <!-- Select2-->
        <link rel="stylesheet" href="css/select2-bootstrap.css">
        <link rel="stylesheet" href="css/select2.css">
        <link rel="stylesheet" href="css/dropzone.css">

        <script src="js/neon-chat.js"></script>
        <script src="js/jquery.selectBoxIt.min.js"></script>
        <%--FECHA--%>
        <script type="text/javascript" src="js/fecha.js"></script>
        <!-- Imported scripts on this page
            <script src="js/jquery.validate.min.js"></script>
        <script src="js/bootstrap-datepicker.js"></script> -->
        <script src="js/select2.min.js"></script>
        <script src="js/dropzone.js"></script>
        <script src="js/fileinput.js"></script>
        <script src="js/bootstrap-timepicker.min.js"></script>
        <!-- JavaScripts initializations and stuff -->
        <script src="js/neon-custom.js"></script>

        <!-- Demo Settings -->
        <script src="js/neon-demo.js"></script>

    </body>
</html>
