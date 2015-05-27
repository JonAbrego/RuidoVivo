<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="description" content="">
    <meta name="author" content="">
    <title>Home | Inicio</title>
    <link href="${pageContext.request.contextPath}/resources/css/bootstrap.min.css" rel="stylesheet">
    <link href="${pageContext.request.contextPath}/resources/css/font-awesome.min.css" rel="stylesheet">
    <link href="${pageContext.request.contextPath}/resources/css/prettyPhoto.css" rel="stylesheet">
	<link href="${pageContext.request.contextPath}/resources/css/item_hover.css" rel="stylesheet">
    <link href="${pageContext.request.contextPath}/resources/css/animate.min.css" rel="stylesheet">
    <link href="${pageContext.request.contextPath}/resources/css/main.css" rel="stylesheet">
    <link href="${pageContext.request.contextPath}/resources/fonts/stylesheet.css" rel="stylesheet">
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
                        <div class="top-number"><p><i class="fa fa-phone-square"></i>  +0123 456 70 90</p></div>
                    </div>
                    <div class="col-sm-6 col-xs-8">
                       <div class="social">
                            <ul class="social-share">
                                <li><a href="#"><i class="fa fa-facebook"></i></a></li>
                                <li><a href="#"><i class="fa fa-twitter"></i></a></li>
                                <li><a href="#"><i class="fa fa-linkedin"></i></a></li> 
                                <li><a href="#"><i class="fa fa-dribbble"></i></a></li>
                                <li><a href="#"><i class="fa fa-skype"></i></a></li>
                            </ul>
                            <div class="search">
                                <form role="form">
                                    <input type="text" class="search-form" autocomplete="off" placeholder="Search">
                                    <i class="fa fa-search"></i>
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
                    <a class="navbar-brand" href="#"><img src="images/logo.png" alt="logo"></a>
                </div>
                
                <div class="collapse navbar-collapse navbar-right">
                    <ul class="nav navbar-nav">
                        <li class="#"><a href="${pageContext.request.contextPath}/login.htm">Inicio</a></li>
                        <li><a href="${pageContext.request.contextPath}/acercaUsuario.htm">Acerca De</a></li>
                        <li><a href="#">Calendario</a></li>                        
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
    
    <section id="content" class="shortcode-item">
        <div class="container">
            <div class="row">
                <div class="col-xs-12 col-sm-12">
                    <h2>Bienvenido ${nombre}</h2> 
                    <div class="tab-wrap">
                        <div class="media">
                            <div class="parrent pull-left">
                                <ul class="nav nav-tabs nav-stacked">
                                    <li class="active"><a href="#tab1" data-toggle="tab" class="analistic-01">Próximos Eventos</a></li>
                                    <li class=""><a href="#tab2" data-toggle="tab" class="analistic-02">Historial</a></li>                           
                                </ul>
                            </div>

                            <div class="parrent media-body">
                                <div class="tab-content">
                                    <div class="tab-pane active in" id="tab1">
                                        <div class="media">
                                            <div class="media-body">
                                                <div class="container">
                                                    <div class="center wow fadeInDown">
                                                        <h2>Próximos Eventos</h2>
                                                    </div>
                                                    <!-- Carrusel -->
                                                    <div id="myCarousel" class="carousel slide usuario-carousel" data-ride="carousel">
                                                        <!-- Indicadores -->
                                                        <ol class="carousel-indicators">
                                                            <li data-target="#myCarousel" data-slide-to="0" class="active"></li>                                                            
                                                        </ol>

                                                        <!-- Carrusel -->
                                                        <form action="EventoServlet" method="post">
                                                        <div class="carousel-inner" role="listbox">
                                                          <div class="item active">
                                                            <img class="first-slide" src="images/festival.jpg" alt="First slide">
                                                            <div class="container">
                                                              <div class="carousel-caption">
                                                                <h1>Festival 20 años de ska.</h1>
                                                                <p>Note: If you're viewing this page via a <code>file://</code> URL, the "next" and "previous" Glyphicon buttons on the left and right might not load/display properly due to web browser security rules.</p>
                                                                <p><button type="submit" class="btn btn-lg btn-primary" name="event">Ver Evento</button></p>              
                                                              </div>
                                                            </div>
                                                          </div>                                                                                                                                                                                                                                        
                                                        </div>
                                                    </form>   
                                                    <!--Controles-->
                                                    <a class="left carousel-control" href="#myCarousel" role="button" data-slide="prev">
                                                        <span class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
                                                        <span class="sr-only">Previous</span>
                                                      </a>
                                                      <a class="right carousel-control" href="#myCarousel" role="button" data-slide="next">
                                                        <span class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
                                                        <span class="sr-only">Next</span>
                                                      </a>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>

                                     <div class="tab-pane" id="tab2">
                                        <div class="container">
                                            <h2>Eventos en los que he participado</h2>
                                            <div class="row"  style="margin-bottom:30px;">
                                                <div class="col-xs-12 col-sm-2 col-md-3">
                                                    <div class="recent-work-wrap">
                                                        <img class="img-responsive" src="images/portfolio/recent/item1.png" alt="">
                                                        <div class="overlay">
                                                            <div class="recent-work-inner">
                                                                <h3><a href="#">Business theme</a> </h3>
                                                                <p>There are many variations of passages of Lorem Ipsum available, but the majority</p>
                                                                <a class="preview" href="images/portfolio/full/item1.png" rel="prettyPhoto"><i class="fa fa-eye"></i> View</a>
                                                            </div> 
                                                        </div>
                                                    </div>
                                                </div>   

                                                <div class="col-xs-12 col-sm-2 col-md-3">
                                                    <div class="recent-work-wrap">
                                                        <img class="img-responsive" src="images/portfolio/recent/item2.png" alt="">
                                                        <div class="overlay">
                                                            <div class="recent-work-inner">
                                                                <h3><a href="#">Business theme</a></h3>
                                                                <p>There are many variations of passages of Lorem Ipsum available, but the majority</p>
                                                                <a class="preview" href="images/portfolio/full/item2.png" rel="prettyPhoto"><i class="fa fa-eye"></i> View</a>
                                                            </div> 
                                                        </div>
                                                    </div>
                                                </div> 

                                                <div class="col-xs-1 col-sm-2 col-md-3">
                                                    <div class="recent-work-wrap">
                                                        <img class="img-responsive" src="images/portfolio/recent/item3.png" alt="">
                                                        <div class="overlay">
                                                            <div class="recent-work-inner">
                                                                <h3><a href="#">Business theme </a></h3>
                                                                <p>There are many variations of passages of Lorem Ipsum available, but the majority</p>
                                                                <a class="preview" href="images/portfolio/full/item3.png" rel="prettyPhoto"><i class="fa fa-eye"></i> View</a>
                                                            </div> 
                                                        </div>
                                                    </div>
                                                </div>   
                                            </div>
                                            <div class="row" style="margin-bottom:30px;">
                                                <div class="col-xs-12 col-sm-4 col-md-3">
                                                    <div class="recent-work-wrap">
                                                        <img class="img-responsive" src="images/portfolio/recent/item4.png" alt="">
                                                        <div class="overlay">
                                                            <div class="recent-work-inner">
                                                                <h3><a href="#">Business theme </a></h3>
                                                                <p>There are many variations of passages of Lorem Ipsum available, but the majority</p>
                                                                <a class="preview" href="images/portfolio/full/item4.png" rel="prettyPhoto"><i class="fa fa-eye"></i> View</a>
                                                            </div> 
                                                        </div>
                                                    </div>
                                                </div>   

                                                <div class="col-xs-12 col-sm-4 col-md-3">
                                                    <div class="recent-work-wrap">
                                                        <img class="img-responsive" src="images/portfolio/recent/item5.png" alt="">
                                                        <div class="overlay">
                                                            <div class="recent-work-inner">
                                                                <h3><a href="#">Business theme</a></h3>
                                                                <p>There are many variations of passages of Lorem Ipsum available, but the majority</p>
                                                                <a class="preview" href="images/portfolio/full/item5.png" rel="prettyPhoto"><i class="fa fa-eye"></i> View</a>
                                                            </div> 
                                                        </div>
                                                    </div>
                                                </div>   

                                                <div class="col-xs-12 col-sm-4 col-md-3">
                                                    <div class="recent-work-wrap">
                                                        <img class="img-responsive" src="images/portfolio/recent/item6.png" alt="">
                                                        <div class="overlay">
                                                            <div class="recent-work-inner">
                                                                <h3><a href="#">Business theme </a></h3>
                                                                <p>There are many variations of passages of Lorem Ipsum available, but the majority</p>
                                                                <a class="preview" href="images/portfolio/full/item6.png" rel="prettyPhoto"><i class="fa fa-eye"></i> View</a>
                                                            </div> 
                                                        </div>
                                                    </div>
                                                </div> 
                                            </div>                                                                                          
                                            </div>
                                        </div>
                                     </div>

                                     <div class="tab-pane" id="tab3">
                                        <div class="media">

                                           <div class="pull-left">
                                                <img class="img-responsive" src="images/tab1.png">
                                            </div>
                                            <div class="media-body">
                                                 <h4>Adipisicing elit</h4>
                                                 <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.
                                                 </p>
                                            </div>
                                        </div>
                                     </div>
                                     
                                     <div class="tab-pane" id="tab4">
                                        <p>There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don't look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn't anything embarrassing hidden in the middle of text. All the Lorem Ipsum generators on the Internet tend to repeat predefined chunks as necessary, making this the first true generator on the Internet. It uses a dictionary of over 200 Latin words</p>
                                     </div>

                                     <div class="tab-pane" id="tab5">
                                        
                                    </div>
                                </div> <!--/.tab-content-->  
                            </div> <!--/.media-body--> 
                        </div> <!--/.media-->     
                    </div><!--/.tab-wrap-->               
                </div><!--/.col-sm-6-->               
                </div>            
    </section><!--/#content-->        
    

    <footer id="footer" class="midnight-blue">
        <div class="container">
            <div class="row">
                <div class="col-sm-6">
                    &copy; 2015 <a target="_blank" href="http://shapebootstrap.net/" title="Free Twitter Bootstrap WordPress Themes and HTML templates">ShapeBootstrap</a>. All Rights Reserved.
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
    <script src="${pageContext.request.contextPath}/resources/js/Typeahead.js"></script>
    <script>
        $(function() {
                function displayResult(item) {
                    $('.alert').show().html('You selected <strong>' + item.value + '</strong>: <strong>' + item.text + '</strong>');
                }
                $('#autocomplete').typeahead({
                    source: [
                        {ID: 1, Name: 'Toronto'},
                        {ID: 2, Name: 'Montreal'},
                        {ID: 3, Name: 'New York'},
                        {ID: 4, Name: 'Buffalo'},
                        {ID: 5, Name: 'Boston'},
                        {ID: 6, Name: 'Columbus'},
                        {ID: 7, Name: 'Dallas'},
                        {ID: 8, Name: 'Vancouver'},
                        {ID: 9, Name: 'Seattle'},
                        {ID: 10, Name: 'Los Angeles'}
                    ],
                    displayField: 'Name',
                    valueField: 'ID',
                    onSelect: displayResult
                });
            });
    </script>
</body>
</html>
