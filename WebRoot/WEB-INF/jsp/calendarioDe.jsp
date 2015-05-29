
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="description" content="">
    <meta name="author" content="">
    <title>Ruido Vivo | Calendario </title>
	
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
                        <li><a href="${pageContext.request.contextPath}/acerca.htm">Acerca de</a></li>
                        <li class="active"><a href="${pageContext.request.contextPath}/calendarioUsuario.htm">Calendario</a></li>  
                        <li class="dropdown">
                            <a href="#" class="dropdown-toggle" data-toggle="dropdown">Cuenta<i class="fa fa-angle-down"></i></a>
                            <ul class="dropdown-menu">
                                <li><a href="${pageContext.request.contextPath}/editar.htm">EditarCuenta</a></li>                                
                                <li><a href="${pageContext.request.contextPath}/logout.htm">Salir</a></li>                                                       
                            </ul>
                        </li>                       
                    </ul>
                </div>
            </div><!--/.container-->
        </nav><!--/nav-->
        
    </header><!--/header-->
    <section id="blog" class="container">
        <div class="center">
            <h2>Eventos</h2>
            <p class="lead">Aquí puedes ver nuestros eventos</p>
        </div>

        <div class="blog">
            <div class="row">
                 <div class="col-md-9">
                    
                    <div class="blog-item">
                        <div class="row">
                             <div class="col-sm-2 text-center">
                                <div class="entry-meta"> 
                                    <span id="publish_date">01  MAR 2015</span>
                                    <span><i class="fa fa-user"></i> <a href="#">Panteón Rocóco</a></span>
                                    <span><i class="fa fa-user"></i> <a href="#">La Tremenda Korte</a></span>
                                    <span><i class="fa fa-user"></i> <a href="#">Otro más</a></span>
                                    <span><i class="fa fa-user"></i><a href="#">56 Likes</a></span>
                                </div>
                            </div>
                            <div class="col-sm-10 blog-content">
                                <a href=""><img class="img-responsive img-blog" src="images/festival.jpg" width="100%" alt="" /></a>
                                <h2><a href="blog-item.html">"20 años de de SKA en México"</a></h2>
                                <h3>Con motivo a los 20 años de aparición del 
                                SKA en México ofreceremos un concierto totalmente 
                                llendo de ambiente 
                                para todos los amantes del SKA.</h3>                                
                            </div>
                        </div>    
                    </div><!--/.blog-item-->                                                                                   

                <aside class="col-md-3">
               
    				
    				<div class="widget archieve">
                        <h3>Archieve</h3>
                        <div class="row">
                            <div class="col-sm-11">
                                <ul class="blog_archieve">
                                    <li><a href="#"><i class="fa fa-angle-double-right"></i> Mar 2015 <span class="pull-right">(1)</span></a></li>                                    
                                </ul>
                            </div>
                        </div>                     
                    </div><!--/.archieve-->
    				
    				
    			</aside>  
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
                        <li><a href="${pageContext.request.contextPath}/login.htm">Inicio</a></li>
                        <li><a href="${pageContext.request.contextPath}/acerca.htm">Acerca de</a></li>                        
                        <li><a href="${pageContext.request.contextPath}/logout.htm">Salir</a></li>
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
    