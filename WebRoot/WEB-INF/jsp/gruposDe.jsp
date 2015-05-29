<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="description" content="">
    <meta name="author" content="">
    <title>Ruido Vivo | Acerca </title>
	
	<!-- core CSS -->
    <link href="${pageContext.request.contextPath}/resources/css/bootstrap.min.css" rel="stylesheet">
    <link href="${pageContext.request.contextPath}/resources/css/font-awesome.min.css" rel="stylesheet">
    <link href="${pageContext.request.contextPath}/resources/css/prettyPhoto.css" rel="stylesheet">
    <link href="${pageContext.request.contextPath}/resources/css/animate.min.css" rel="stylesheet">
	<link href="${pageContext.request.contextPath}/resources/css/main.css" rel="stylesheet">
    <link href="${pageContext.request.contextPath}/resources/css/responsive.css" rel="stylesheet">
	
    <!--[if lt IE 9]>
    <script src="js/html5shiv.js"></script>
    <script src="js/respond.min.js"></script>
    <![endif]-->       
    <link rel="shortcut icon" href="images/ico/favicon.ico">
    <link rel="apple-touch-icon-precomposed" sizes="144x144" href="images/ico/apple-touch-icon-144-precomposed.png">
    <link rel="apple-touch-icon-precomposed" sizes="114x114" href="images/ico/apple-touch-icon-114-precomposed.png">
    <link rel="apple-touch-icon-precomposed" sizes="72x72" href="images/ico/apple-touch-icon-72-precomposed.png">
    <link rel="apple-touch-icon-precomposed" href="images/ico/apple-touch-icon-57-precomposed.png">
</head><!--/head-->

<body>

       <header id="header">
        <div class="top-bar">
            <div class="container">
                <div class="row">
                    <div class="col-sm-6 col-xs-4">
                        <ul class="social-share">
                             <li>También estamos en</li>
                            <li><a href="https://www.facebook.com/RuidoVivo"><i class="fa fa-facebook"></i></a></li>
                        </ul>
                    </div>
                    <div class="col-sm-6 col-xs-8">
                       <div class="social">
                            <div class="search">
                                <form role="form" method="POST" action="${pageContext.request.contextPath}/busqueda.htm">
                                    <input id="autocomplete" type="search" class="search-form" name="banda" placeholder="Busca un grupo" autocomplete="off">
                                    <i class="fa fa-search fa-inverse"></i>
                                </form>
                           </div>
                       </div>
                    </div>
                </div>
            </div><!--/.container-->
        </div><!--/.top-bar-->

        <nav class="navbar navbar-inverse" role="banner">
            <div class="container">
                <div class="navbar-header">
                    <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
                        <span class="sr-only">Toggle navigation</span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                    </button>
                    <a class="navbar-brand" href="${pageContext.request.contextPath}/login.htm"><img src="images/logo.png" alt="logo"> Ruido Vivo</a>
                </div>
				
                <div class="collapse navbar-collapse navbar-right">
                    <ul class="nav navbar-nav">
                        <li><a href="${pageContext.request.contextPath}/login.htm">Inicio</a></li>
                        <li class="active"><a href="${pageContext.request.contextPath}/acerca.htm">Acerca de</a></li>
                        <li><a href="${pageContext.request.contextPath}/calendario.htm">Calendario</a></li>  
                        <li class="dropdown">
                            <a href="#" class="dropdown-toggle" data-toggle="dropdown">Cuenta<i class="fa fa-angle-down"></i></a>
                            <ul class="dropdown-menu">
                                <li><a href="${pageContext.request.contextPath}/edit.htm">EditarCuenta</a></li>                                
                                <li><a href="${pageContext.request.contextPath}/logout.htm">Salir</a></li>                                                       
                            </ul>
                        </li>                       
                    </ul>
                </div>
            </div><!--/.container-->
        </nav><!--/nav-->
        
    </header><!--/header-->
    


    <section id="blog" class="container">
        <div class="blog" style="margin-top:-10px">
            <div class="row">
                 <div class="col-md-10">
                    <div class="blog-item">
                        <div class="row">
                            <div class="col-md-3">
                                <div class="text-center">
                                    <img src="images/logo.png" style="height:150px">
                                    <p style="font-family:'Lato',sans-serif;font-size:16px;"> </p>
                                    <table style="font-family:'Lato',sans-serif;font-size:16px;"> 
                                    		<tr>	
                                    			<td>Integrantes</td>
                                    		</tr>	
                                    		<c:forEach items="${integrantes}" var="integrantes">
                                    		<tr>
                                    			<td>
                                    				${integrantes.nombre}
                                    			</td>
                                            </tr>
											</c:forEach>
									</table>
                                </div>
                            </div>
                            <div class="col-md-8">
                                <div class="text-center">
                                    <p style="font-family:'Lato', sans-serif;color:black;font-size:28px;margin-top:70px">
                                    ${nombre }</p>
                                </div>
                            </div>
                            <div class="col-md-8" style="text-align:justify;margin-top:40px;min-height:200px;font-family:'Lato', sans-serif;font-size:18px">
                                <p>${informacion }</p>
                            </div>
                        </div>
                        <div class="row">
                        </div>
                    </div><!--/.blog-item-->
                </div><!--/.col-md-8-->
                 
            </div><!--/.row-->
        </div>
    </section><!--/#blog-->
    <footer id="footer" class="midnight-blue">
        <div class="container">
            <div class="row">
                 <div class="col-sm-6">
                    Derechos Reservados
                </div>
                <div class="col-sm-6">
                    <ul class="pull-right">
                        <li><a href="${pageContext.request.contextPath}/principal.htm">Inicio</a></li>
                        <li><a href="${pageContext.request.contextPath}/acerca.htm">Acerca de</a></li>
						<li><a href="${pageContext.request.contextPath}/registro.htm">Registrate</a></li>
                    </ul>
                </div>
            </div>
        </div>
    </footer><!--/#footer-->

 	 	<script src="${pageContext.request.contextPath}/resources/js/jquery.js"></script>
    <script src="${pageContext.request.contextPath}/resources/js/bootstrap.min.js"></script>
    <script src="${pageContext.request.contextPath}/resources/js/jquery.prettyPhoto.js"></script>
    <script src="${pageContext.request.contextPath}/resources/js/jquery.isotope.min.js"></script>
    <script src="${pageContext.request.contextPath}/resources/js/main.js"></script>
    <script src="${pageContext.request.contextPath}/resources/js/wow.min.js"></script>
    <script src="${pageContext.request.contextPath}/resources/js/Typeahead.js"></script>
  
     <script>
        $(function() {
                function displayResult(item) {
                    $('.alert').show().html('You selected <strong>' + item.value + '</strong>: <strong>' + item.text + '</strong>');
                }
                $('#autocomplete').typeahead({
                    source: [
                        {ID: 1, Name: 'Bukis 2.0'},
                        {ID: 2, Name: 'El Haragán y Compañía'},
                        {ID: 3, Name: 'Jarabedepalo'},
                        {ID: 4, Name: 'Inspector'},
                        {ID: 4, Name: 'Panteón Rococó'},                      
                    ],
                    displayField: 'Name',
                    valueField: 'ID',
                    onSelect: displayResult
                });
            });
    </script>
</body>
</html>