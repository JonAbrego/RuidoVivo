<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="description" content="">
    <meta name="author" content="">
    <title>Ruido Vivo | Evento</title>
    
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
                    <a class="navbar-brand" href="${pageContext.request.contextPath}/principal.htm"><img src="images/logo.png" alt="logo"> Ruido Vivo</a>
                </div>
                
                <div class="collapse navbar-collapse navbar-right">
                    <ul class="nav navbar-nav">
                        <li><a href="${pageContext.request.contextPath}/principal.htm">Inicio</a></li>
                        <li><a href="${pageContext.request.contextPath}/acerca.htm">Acerca de</a></li>
                        <li><a href="${pageContext.request.contextPath}/calendario.htm">Calendario</a></li>
                        <li><a href="${pageContext.request.contextPath}/registro.htm">Registro</a></li>
                    </ul>
                    <form class="navbar-form navbar-right" role="form" id="login" action="${pageContext.request.contextPath}/login.htm" method="post">
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


    <section id="blog" class="container">
        <div class="center">
            <h2>Evento</h2>
            <p class="lead">Pellentesque habitant morbi tristique senectus et netus et malesuada</p>
        </div>

        <div class="blog">
            <div class="row">
                <div class="col-md-8 col-md-offset-1">
                    <div class="blog-item">
                        <img class="img-responsive img-blog" src="images/festival.jpg" width="100%" alt="" />
                            <div class="row">  
                                <div class="col-xs-12 col-sm-2 text-center">
                                    <div class="entry-meta">
                                        <span id="publish_date">01  MAR</span>
                                        <span><i class="fa fa-user"></i> <a href="#"> Panteon Rococo</a></span>                                        
                                        <span><i class="fa fa-heart"></i><a href="#">56 Likes</a></span>
                                    </div>
                                </div>
                                <div class="col-xs-12 col-sm-10 blog-content">
                                    <h2>Festival 20 años de SKA</h2>
                                    <p>Precio: 250</p>
                                    <p>Lugar: Palacio de los deportes</p>

                                </div>
                            </div>
                        </div><!--/.blog-item-->
                                                                                                                                                                         

                <aside class="col-md-3">
                    
                    
                    <div class="widget archieve">
                        <h3>Archieve</h3>
                        <div class="row">
                            <div class="col-sm-9">
                                <ul class="blog_archieve">
                                    <li><a href="#"><i class="fa fa-angle-double-right"></i> Marzo 2015 <span class="pull-right">(1)</span></a></li>                       
                                </ul>
                            </div>
                        </div>                     
                    </div><!--/.archieve-->
                    
                    <div class="widget tags">
                        <h3>Tag Cloud</h3>
                        <ul class="tag-cloud">
                            <li class="btn btn-xs btn-primary">México</li>
                            <li class="btn btn-xs btn-primary">Panteon</li>
                            <li class="btn btn-xs btn-primary">Concierto</li>
                            <li class="btn btn-xs btn-primary">SKA</li>                
                        </ul>
                    </div><!--/.tags-->                                                          
                </aside>     
			</div>
      </div><!--/.row-->

       </div><!--/.blog-->

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
                        <li><a href="${pageContext.request.contextPath}/registro.htm">Registrate  </a></li>
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