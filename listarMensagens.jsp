<%@ page pageEncoding="UTF-8" errorPage="error.jsp"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="myTags" tagdir="/WEB-INF/tags"%>

<html>
	<head>
		<title>Pessoas</title>
		<meta charset="utf-8" />
		<meta name="viewport" content="width=device-width, initial-scale=1" />
		<link rel="stylesheet" href="css/bootstrap.css" />
		<link rel="stylesheet" href="css/customMensagens.css" />
	</head>
	<body>
		
		<nav class="navbar navbar-inverse">
		  <div class="container-fluid">
		    <div class="navbar-header navbar-right">
		    	<a class="navbar-brand" href="inicio.jsp"><span class="glyphicon glyphicon-user glyphicon-nav"></span>${sessionScope.usuario.nome}</a>		      
		    </div>
		    <div class="navbar-header">
		    	<a class="navbar-brand" href="#">Mensagens</a>		      
		    </div>
		  </div>
		</nav>

		<h1 class="header">MENSAGENS</h1>
			
		<div class="container">
			<div class="row">
				<div class="col-md-3">
				    <div class="thumbnail">
				        <img src="img/${usuario.email}/${usuario.fotoPerfil}"  alt="Lights" style="width:100%">
				        <div class="caption">
				            <p class="nome">${usuario.nome}</p>
				            <div class="actions">	

								<form action="frontController" method="post" class="formAction">
									<input type="hidden" name="action" value="VerPerfil">
									<input type="hidden" name="usuario" value="${usuario.email}">
									<button type="submit" title="Ver" class="btn btn-actions btn-sm"><span class="glyphicon glyphicon glyphicon-eye-open"></span></button>
								</form>
								
							</div>
				        </div>
				    </div>
			    </div>	
			</div>
		</div>	

	</body>
</html>