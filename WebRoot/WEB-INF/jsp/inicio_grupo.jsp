<!DOCTYPE>
<html lang="en">
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="description" content="">
    <meta name="author" content="">
    <title>Inicio | Banda</title>
	
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
                    <a class="navbar-brand" href="#"><img src="images/logo.png" alt="logo"> Ruido Vivo</a>
                </div>
                
                <div class="collapse navbar-collapse navbar-right">
                    <ul class="nav navbar-nav">
                        <li class="active"><a href="#">Inicio</a></li>
                        <li><a href="#">Acerca de</a></li>
                        <li><a href="#">Calendario</a></li>
                        <li class="dropdown">
                            <a href="#" class="dropdown-toggle" data-toggle="dropdown">Cuenta<i class="fa fa-angle-down"></i></a>
                            <ul class="dropdown-menu">
                                <li><a href="${pageContext.request.contextPath}/editarBanda.htm">Configurar Cuenta</a></li>
                                <li class=""><a href="${pageContext.request.contextPath}/principal.htm">Salir</a></li>
                            </ul>
                        </li>                       
                    </ul>
                </div>
            </div><!--/.container-->
        </nav><!--/nav-->
        
    </header><!--/header-->

    <section id="content" class="shortcode-item" style="margin-top:-50px">
        <div class="container">
            <div class="row">
                <div class="col-xs-12 col-sm-12">
                    <div class="tab-wrap">
                        <div class="media">
                            <div class="parrent pull-left">
                                <ul class="nav nav-tabs nav-stacked">
                                    <li class="active"><a href="#tab1" data-toggle="tab" class="analistic-01">Mi Perfil</a></li>
                                    <li class=""><a href="#tab2" data-toggle="tab" class="analistic-02">Historial</a></li>
                                    <li class=""><a href="#tab3" data-toggle="tab" class="tehnical">Crear evento</a></li>
                                </ul>
                            </div>

                            <div class="parrent media-body">
                                <div class="tab-content">
                                    <div class="tab-pane active in" id="tab1">
                                        <div class="media">
                                            <div class="media-body">
                                                <div class="container col-md-10">
                                                	<div class="row">
                                                		<div class="col-md-2">
                                                			<img src="images/logo.png" style="height:150px">
                                                		</div>
                                                		<div class="col-md-offset-2 col-md-4">
	                                                		<div class="text-center">
	                                                			<br>
	                                                			<br>
                                                				<h2 style="font-family:'Lato', sans-serif;color:black">Nombre de la Banda</h2>
                                                			</div>
                                                		</div>
                                                	</div>
                                                	<div class="row">
                                                		<div class="col-sm-12" style="margin-top:30px;min-height:200px;font-family:'Lato', sans-serif;font-size:18px">
                                                			<div class="center">
                                                				<p>There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don't look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn't anything embarrassing hidden in the middle of text. All the Lorem Ipsum generators on the Internet tend to repeat predefined chunks as necessary, making this the first true generator on the Internet. It uses a dictionary of over 200 Latin words</p>
                                                			</div>
                                                		</div>
                                                	</div>
                                                </div>
                                                <div class="container col-md-2">
                                                	<p style="font-family:'Lato',sans-serif;font-size:16px;">Aqui van los integrantes</p>
                                                </div>
                                            </div>
                                        </div>
                                    </div>

                                     <div class="tab-pane" id="tab2">
                                        <div class="container">
                                            <h2>Eventos en los que he participado</h2>
                                            <div class="blog">
            									<div class="row">
            										<div class="col-md-9">
            									        <div class="blog-item">
            									            <div class="row">
            						                        	<div class="col-sm-2 text-center">
            									                    <div class="entry-meta"> 
            									                        <span id="publish_date">07  NOV 2015</span>
            									                    </div>
            									                </div>
            									                <div class="col-sm-10 blog-content">
            									                    <a href=""><img class="img-responsive img-blog" src="images/blog/blog2.jpg" width="100%" alt="" /></a>
            									                    <h2><a href="blog-item.html">Consequat bibendum quam liquam viverra</a></h2>
            									                    <h3>Curabitur quis libero leo, pharetra mattis eros. Praesent consequat libero eget dolor convallis vel rhoncus magna scelerisque. Donec nisl ante, elementum eget posuere a, consectetur a metus. Proin a adipiscing sapien. Suspendisse vehicula porta lectus vel semper. Nullam sapien elit, lacinia eu tristique non.posuere at mi. Morbi at turpis id urna ullamcorper ullamcorper.</h3>
            									                    <a class="btn btn-primary readmore" href="blog-item.html">Read More <i class="fa fa-angle-right"></i></a>
            									                </div>
            									            </div>    
            									        </div><!--/.blog-item-->
            									    </div><!--/.row-->
            									</div>
                                        	</div>
                                     	</div>
                                     </div>

                                     <div class="tab-pane" id="tab3">
                                        <div class="media">
                                            <div class="media-body">
                                            	<form class="col-md-offset-1 col-md-9 form-horizontal" id="registro1" onsubmit="return myFunction()" method="post" action="${pageContext.request.contextPath}/login.htm">

                                            	  	<div class="center">        
                                            	   		<h2>Crear Evento</h2>
                                            	  	</div>

                                            	  	<div class="form-group">
              											<label for="logo" class="col-sm-3 control-label">Logo de la banda </label>
              											<div class="col-sm-9">
                											<input type="file" name="logo" class="form-control" id="logo" accept="image/*" required>
              											</div>
            										</div>
                                            	  	<div class="form-group">
                                            	    	<label for="nombre" class="col-sm-3 control-label">Nombre del Evento</label>
                                            	    	<div class="col-sm-9">
                                            	      		<input type="text" name="evento" class="form-control" id="nombre" placeholder="Escribe el nombre del evento" required autofocus>
                                            	    	</div>
                                            	  	</div>
                                            	  	<div class="form-group">
              											<label for="descripcion" class="col-sm-3">Descripci�n </label>
                										<textarea class="form-control textarea-registro" name="evento" class="form-control" id="descripcion" placeholder="Escribe una descripcion sobre el evento" rows=8></textarea>
            										</div>
                                            	  	<div class="form-group">
                                            	    	<label for="fecha" class="col-sm-2 control-label">Fecha </label>
                                            	    	<div class="col-sm-10">
                                            	      		<input type="date" name="evento" class="form-control" id="fecha">
                                            	    	</div>
                                            		</div>
                                            		<div class="form-group">
                                            	    	<label for="costo" class="col-sm-2 control-label">Costo </label>
                                            	    	<div class="col-sm-10">
                                            	      		<input type="number" step="any" name="evento" class="form-control" id="costo">
                                            	    	</div>
                                            		</div>
                                            		<div class="form-group">
                                            	    	<label for="lugar" class="col-sm-3 control-label">Lugar del Evento</label>
                                            	    	<div class="col-sm-9">
                                            	      		<input type="text" name="evento" class="form-control" id="lugar" placeholder="Escribe el lugar del evento">
                                            	    	</div>
                                            	  	</div>
                                            	  	<div class="form-group">
                                            	    	<div class="col-sm-offset-3 col-sm-10">
                                            	      		<input type="submit" class="btn btn-primary reg" name="addEvento" value="Registrarme">
                                            	    	</div>
                                            	  	</div>
                                            	</form>
                                            </div>
                                        </div>
                                     </div>
                                     
                                </div> <!--/.tab-content-->  
                            </div> <!--/.media-body--> 
                        </div> <!--/.media-->     
                    </div><!--/.tab-wrap-->               
                </div><!--/.col-sm-6-->
                
            </div><!--/.row-->
        </div><!--/.container-->
    </section><!--/#content-->

    <footer id="footer" class="midnight-blue">
        <div class="container">
            <div class="row">
                <div class="col-sm-6">
                    &copy; 2013 <a target="_blank" href="http://shapebootstrap.net/" title="Free Twitter Bootstrap WordPress Themes and HTML templates">ShapeBootstrap</a>. All Rights Reserved.
                </div>
                <div class="col-sm-6">
                    <ul class="pull-right">
                        <li><a href="${pageContext.request.contextPath}/principal.htm">Salir</a></li>
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