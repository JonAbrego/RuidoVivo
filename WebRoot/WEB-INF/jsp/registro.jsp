<!DOCTYPE>
<html lang="es">
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="description" content="">
    <meta name="author" content="">
    <title>Registro | Ruido Vivo </title>
	
	<!-- core CSS -->
    <link href="${pageContext.request.contextPath}/resources/css/bootstrap.min.css" rel="stylesheet">
    <link href="${pageContext.request.contextPath}/resources/css/font-awesome.min.css" rel="stylesheet">
    <link href="${pageContext.request.contextPath}/resources/css/animate.min.css" rel="stylesheet">
    <link href="${pageContext.request.contextPath}/resources/css/prettyPhoto.css" rel="stylesheet">
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

<body class="homepage">

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
                    <a class="navbar-brand" href="${pageContext.request.contextPath}/principal.htm"><img src="images/logo.png" alt="logo"> Ruido Vivo</a>
                </div>
				
                <div class="collapse navbar-collapse navbar-right">
                    <ul class="nav navbar-nav">
                        <li><a href="${pageContext.request.contextPath}/principal.htm">Inicio</a></li>
                        <li><a href="${pageContext.request.contextPath}/acerca.htm">Acerca de</a></li>
                        <li><a href="${pageContext.request.contextPath}/calendario.htm">Calendario</a></li>
                        <li class="active"><a href="${pageContext.request.contextPath}/registro.htm">Registro</a></li>
                    </ul>
                    <form class="navbar-form navbar-right" role="form" id="login" method="post" action="${pageContext.request.contextPath}/login.htm">
                        <div class="form-group login">
                            <input type="text" name="user" class="form-control" placeholder="Correo" required>
                        </div>
                        <div class="form-group login">
                            <input type="password" name="pass" class="form-control" placeholder="Contraseña" required>
                        </div>
                        <button type="submit" class="btn btn-default btn-login" name="login">Ingresar</button>
                    </form>
                </div>
            </div><!--/.container-->
        </nav><!--/nav-->
		
    </header><!--/header-->
	
	<section id="contact-page">
        <div class="container"> 
            <div class="row contact-wrap registro-form">
                <div class="status alert alert-success" style="display: none"></div>
                <ul id="myTab" class="nav nav-tabs ul-reg" role="tablist">
        			<li role="presentation" class="active"><a href="#home" id="home-tab" role="tab" data-toggle="tab" aria-controls="home" aria-expanded="true">Usuario</a></li>
        			<li role="presentation"><a href="#profile" role="tab" id="profile-tab" data-toggle="tab" aria-controls="profile">Banda</a></li>
      			</ul>
      			<div id="myTabContent" class="tab-content">
        			<div role="tabpanel" class="tab-pane fade in active" id="home" aria-labelledBy="home-tab">
          				<form class="form-horizontal" id="registro1" onsubmit="return myFunction()"  method="post" action="${pageContext.request.contextPath}/login.htm">

            				<div class="center">        
                				<h2>Registro de Usuario</h2>
            				</div>
            
            				<div class="form-group">
              					<label for="usuario" class="col-sm-2 control-label">Correo</label>
              					<div class="col-sm-10">
                					<input type="email" name="datos" class="form-control" id="correo" placeholder="example@example.com" required autofocus>
              					</div>
            				</div>
            				<div class="form-group">
              					<label for="usuario" class="col-sm-2 control-label">Nombre</label>
              					<div class="col-sm-10">
                					<input type="text" name="datos" class="form-control" id="usuario" placeholder="Nombre de Usuario" required autofocus>
              					</div>
            				</div>
            				<div class="form-group">
              					<label for="contrasena" class="col-sm-2 control-label">Contraseña </label>
              					<div class="col-sm-10">
                					<input type="password" name="datos" class="form-control" id="contrasena" placeholder="Contraseña" required minlength=6>
              					</div>
            				</div>
            				<div class="form-group">
              					<label for="ccontrasena" class="col-sm-2 control-label">Confirmar Contraseña </label>
              					<div class="col-sm-10">
                					<input type="password" name="datos" class="form-control" id="ccontrasena" placeholder="Confirmar Contraseña" required minlength=6>
              					</div>
            				</div>
            				<div class="form-group">
              					<div class="col-sm-offset-2 col-sm-10">
                					<input type="submit" class="btn btn-default" name="addUser" value="Registrarme">
              					</div>
            				</div>
          				</form>
        			</div>
        			
        			
        			<div role="tabpanel" class="tab-pane fade" id="profile" aria-labelledBy="profile-tab">
          				<form class="form-horizontal" id="registro2" onsubmit="return myFunction()"  method="post" action="${pageContext.request.contextPath}/login.htm">

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
                    &copy; 2015 <a target="_blank" href="http://shapebootstrap.net/" title="Free Twitter Bootstrap WordPress Themes and HTML templates">ShapeBootstrap</a>. All Rights Reserved.
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
    ${ bandas }
    <script>
      function myFunction() {
        var contrasena = document.getElementById('contrasena').value;
        var ccontrasena = document.getElementById('ccontrasena').value;
        if (contrasena !== ccontrasena) {
          alert("Las contraseñas no coinciden");
          document.getElementById('contrasena').value = "";
          document.getElementById('ccontrasena').value = "";
          document.getElementById("contrasena").focus();
          return false;
        };
        return true;
      }
      function login(){
        return true;
      }
    </script>
</body>
</html>