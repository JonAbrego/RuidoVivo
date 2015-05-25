<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="description" content="">
    <meta name="author" content="">
    <title>Inicio | Datos Banda</title>
	
	<!-- core CSS -->
    <link href="${pageContext.request.contextPath}/resources/css/bootstrap.min.css" rel="stylesheet">
    <link href="${pageContext.request.contextPath}/resources/css/font-awesome.min.css" rel="stylesheet">
    <link href="${pageContext.request.contextPath}/resources/css/prettyPhoto.css" rel="stylesheet">
    <link href="${pageContext.request.contextPath}/resources/css/animate.min.css" rel="stylesheet">
	<link href="${pageContext.request.contextPath}/resources/css/main.css" rel="stylesheet">
    <link href="${pageContext.request.contextPath}/resources/css/responsive.css" rel="stylesheet">
    <link href="${pageContext.request.contextPath}/resources/css/estilo.css" rel="stylesheet">
	
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
                            <li>Tambien estamos en</li>
                            <li><a href="#"><i class="fa fa-facebook"></i></a></li>
                        </ul>
                    </div>
                    <div class="col-sm-6 col-xs-8">
                       <div class="social">
                            <div class="search">
                                <form role="form">
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
                    <a class="navbar-brand" href="index.html"><img src="images/logo.png" alt="logo"> Ruido Vivo</a>
                </div>
                
                <div class="collapse navbar-collapse navbar-right">
                    <ul class="nav navbar-nav">
                        <li class="active"><a href="#">Inicio</a></li>
                        <li><a href="#">Acerca de</a></li>
                        <li><a href="#">Calendario</a></li>
                        <li class="dropdown">
                            <a href="#" class="dropdown-toggle" data-toggle="dropdown">Cuenta<i class="fa fa-angle-down"></i></a>
                            <ul class="dropdown-menu">
                                <li><a href="404.html">Configurar Cuenta</a></li>
                                <li class=""><a href="">Salir</a></li>
                            </ul>
                        </li>                       
                    </ul>
                </div>
            </div><!--/.container-->
        </nav><!--/nav-->

            <section id="contact-page">
        <div class="container"> 
            <div class="row contact-wrap registro-form">
                <div class="status alert alert-success" style="display: none"></div>
                <ul id="myTab" class="nav nav-tabs ul-reg" role="tablist">
                    <li role="presentation" class="active"><a href="#home" id="home-tab" role="tab" data-toggle="tab" aria-controls="home" aria-expanded="true">Banda</a></li>                    
                </ul>
                <div id="myTabContent" class="tab-content">
                    <div role="tabpanel" class="tab-pane fade in active" id="home" aria-labelledBy="home-tab">
                        <form class="form-horizontal" id="registro1" onsubmit="return myFunction()"  method="post" action="${pageContext.request.contextPath}/login.htm">

                          <div class="center">        
                                <h2>Registro de Banda</h2>
                                <p class="lead">El nombre con el que te registres te servira como usuario (correo) en el inicio de sesión.</p>
                            </div>
                                        
                            <div class="form-group">
                                <label for="nombre" class="col-sm-2 control-label">Nombre</label>
                                <div class="col-sm-10">
                                    <input type="text" name="dateG" class="form-control" id="nombre" placeholder="Nombre de la Banda" required autofocus>
                                </div>
                            </div>
                            <div class="form-group">
                                <label for="informacion" class="col-sm-2">Información </label>
                                <textarea class="form-control textarea-registro" name="dateG" class="form-control" id="informacion" placeholder="Información de la banda" rows=8></textarea>
                            </div>
                            <div class="form-group">
                                <label for="logo" class="col-sm-2 control-label">Logo de la banda </label>
                                <div class="col-sm-10">
                                    <input type="file" name="dateG" class="form-control" id="logo" accept="image/*">
                                </div>
                            </div>
                            <div class="form-group">
                                <label for="dateG" class="col-sm-2 control-label">Contraseña </label>
                                <div class="col-sm-10">
                                    <input type="password" name="dateG" class="form-control" id="contrasena" placeholder="Contraseña" required minlength=8>
                                </div>
                            </div>
                            <div class="form-group">
                                <label for="ccontrasena" class="col-sm-2 control-label">Confirmar Contraseña </label>
                                <div class="col-sm-10">
                                    <input type="password" name="dateG" class="form-control" id="ccontrasena" placeholder="Confirmar Contraseña" required minlength=8>
                                </div>
                            </div>
                            <div class="form-group">
                                <div class="col-sm-offset-2 col-sm-10">
                                    <input type="submit" class="btn btn-primary reg" name="addGroup" value="Registrarme">
                                </div>
                            </div>
                        </form>
                    </div>                                        
                </div>
            </div><!--/.row-->
        </div><!--/.container-->
    </section><!--/#contact-page-->

 <footer id="footer" class="midnight-blue">
        <div class="container">
            <div class="row">
                <div class="col-sm-6">
                    &copy; 2013 <a target="_blank" href="http://shapebootstrap.net/" title="Free Twitter Bootstrap WordPress Themes and HTML templates">ShapeBootstrap</a>. All Rights Reserved.
                </div>
                <div class="col-sm-6">
                    <ul class="pull-right">
                        <li><a href="#">Inicio</a></li>
                        <li><a href="#">Acerca de</a></li>
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
</body>
</html>
