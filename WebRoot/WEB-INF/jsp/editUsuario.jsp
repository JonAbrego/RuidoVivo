
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="description" content="">
    <meta name="author" content="">
    <title>Ruido Vivo | Principal </title>
	
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
                             <li>Tambi�n estamos en</li>
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
                        <li class="active"><a href="${pageContext.request.contextPath}/login.htm">Inicio</a></li>
                        <li><a href="${pageContext.request.contextPath}/acerca.htm">Acerca De</a></li>
                        <li><a href="${pageContext.request.contextPath}/calendario.htm">Calendario</a></li>                        
                        <li class="dropdown">
                            <a href="#" class="dropdown-toggle" data-toggle="dropdown">Cuenta<i class="fa fa-angle-down"></i></a>
                            <ul class="dropdown-menu">
                                <li><a href="${pageContext.request.contextPath}/editarDatos.htm">EditarCuenta</a></li>                                
                                <li><a href="${pageContext.request.contextPath}/logout.htm">Salir</a></li>                                                       
                            </ul>
                        </li>                       
                    </ul>
                </div>
            </div><!--/.container-->
        </nav><!--/nav-->
        
    </header><!--/header-->
            <section id="contact-page">
        <div class="container"> 
            <div class="row contact-wrap registro-form">
                <div class="status alert alert-success" style="display: none"></div>
                <ul id="myTab" class="nav nav-tabs" role="tablist">
                    <li role="presentation" class="active"><a href="#home" id="home-tab" role="tab" data-toggle="tab" aria-controls="home" aria-expanded="true">Actualizar</a></li>
                </ul>
                <div id="myTabContent" class="tab-content">
                    <div role="tabpanel" class="tab-pane fade in active" id="home" aria-labelledBy="home-tab">
                        <form class="form-horizontal" id="editar"  method="post" action="${pageContext.request.contextPath}/editarDatos.htm">

                            <div class="center">        
                                <h2>Actualizar Datos</h2>
                            </div>
            
                            <div class="form-group">
                                <label for="usuario" class="col-sm-2 control-label">Correo</label>
                                <div class="col-sm-10">
                                    <input type="email" value="${usuario.correo}" name="datos" class="form-control" id="correo" placeholder="example@example.com" required>
                                </div>
                            </div>
                            <div class="form-group">
                                <label for="usuario" class="col-sm-2 control-label">Nombre</label>
                                <div class="col-sm-10">
                                    <input type="text" value="${ usuario.nombre }" name="datos" class="form-control" id="usuario" placeholder="Nombre de Usuario" required>
                                </div>
                            </div>
                            <div class="form-group">
                            	<div class="checkbox col-sm-offset-2">
                                	<label for="contrasena">
                                		<input type="checkbox" name="otro" id="cambiar">
                                		Cambiar Contrase�a
                                	</label>
                            	</div>
                            </div>
                            <div id="contrasenas" hidden>
                            	
                            </div>
                            <div class="form-group">
                            	<div class="row">
	                                <div class="col-sm-offset-2 col-md-4">
                                    	<input type="submit" class="btn btn-primary reg" name="editUser" id="editUser" value="Actualizar" >
                                	</div>
                                	<div class="col-md-4">
	                                    <a class="btn btn-primary" href="${pageContext.request.contextPath}/login.htm">Cancelar</a>
                                	</div>
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
                        {ID: 2, Name: 'El Harag�n y Compa��a'},
                        {ID: 3, Name: 'Jarabedepalo'},
                        {ID: 4, Name: 'Inspector'},
                        {ID: 4, Name: 'Pante�n Rococ�'},                      
                    ],
                    displayField: 'Name',
                    valueField: 'ID',
                    onSelect: displayResult
                });
            });
    </script>
    <script>
    	$("input[name='datos']").change(function(){
	    	$("#editUser").prop('disabled', false);
    	});
    	$("#cambiar").change(function(){
    		if($("#cambiar").is(":checked")){
    			$("#contrasenas").append('<div class="form-group">'+
    				'<label for="ncontrasena" class="col-sm-2 control-label">Contrase�a Actual </label>'+
    				'<div class="col-sm-10">'+
    					'<input type="password" name="datos" class="form-control" id="ncontrasena" placeholder="Escriba su Contrase�a actual" required minlength=6>'+
                   	'</div>'+
               	'</div>'+
                '<div class="form-group">'+
                	'<label for="cncontrasena" class="col-sm-2 control-label">Nueva Contrase�a </label>'+
                	'<div class="col-sm-10">'+
                		'<input type="password" name="datos" class="form-control" id="cncontrasena" placeholder="Escriba su nueva Contrase�a" required minlength=6>'+
                	'</div>'+
                '</div>');
    			$("#contrasenas").show();
    			$("input[name='datos']").change(function(){
	    			$("#editUser").prop('disabled', false);
    			});
    		} else {
    			$("#contrasenas").hide();
    			$("#contrasenas").empty();
    		}
    	});
    </script>
    <script>
    	var form = $("#editar");
 		form.submit(
 			$.ajax({
 				type: form.attr('method'),
 				url: form.attr('action'),
 				data: $.serialize(datos),
 				succes: function(){
 					alert("se acrtualizaron tus datos");
 				}
 			})
 		);   	
    </script>
</body>
</html>
