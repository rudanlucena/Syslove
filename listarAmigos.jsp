<%@ page pageEncoding="UTF-8" errorPage="error.jsp"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<html>
	<head>
		<title>Pessoas</title>
		<meta charset="utf-8" />
		<meta name="viewport" content="width=device-width, initial-scale=1" />
		<link rel="stylesheet" href="css/bootstrap.css" />
		<link rel="stylesheet" href="css/customListarAmigos.css" />
	</head>
	<body>
		
		<nav class="navbar navbar-inverse">
		  <div class="container-fluid">
		    <div class="navbar-header navbar-right">
		    	<a class="navbar-brand" href="inicio.jsp"><span class="glyphicon glyphicon-user"></span>${sessionScope.usuario.nome}</a>		      
		    </div>

		    <form class="navbar-form navbar-left" action="frontController" method="post">

			  <input type="hidden" class="action" name="action" value="ListarAmigos">
		      <div class="form-group">
		        <input type="search" class="form-control" name="nome" value="${requestScope.searchNome}" placeholder="Nome" required>
		      </div>
		      <button type="submit" class="btn btn-default"><span class="glyphicon glyphicon-search"></span></button>
		    </form>

		  </div>
		</nav>
		
			
		<div class="container">
			<div class="row">	
				<div class="col-md-12 usuario">
					
					<c:choose>
						<c:when test="${amigos == null}">
							<div class="alert alert-warning">
							  <strong>Você ainda não possui amigos!</strong>
							</div>
						</c:when>
						<c:otherwise>
							<div class="row">
								<c:forEach var="usuario" items="${amigos}">
							    	<myTags:verificaRelacionamento email="${usuario.email}"/>
							  
								    <div class="col-md-3">
									    <div class="thumbnail">
									        <img src="img/${usuario.email}/${usuario.fotoPerfil}" alt="Lights" style="width:100%">
									        <div class="caption">
									            <p class="nome">${usuario.nome} (${usuario.status})</p>
									            <div class="actions">

									            	<form class="formAction">																	
														<button type="button" title="Enviar Mensagem" class="btn btn-actions btn-sm"><span class="glyphicon glyphicon-envelope"></span></button>
												    </form>
											    		
													<form action="frontController" method="post" class="formAction">
														<input type="hidden" name="action" value="SolicitarAmizade">
														<input type="hidden" name="destinatario" value="${usuario.email}">
														<button type="submit" title="Recomendar a um amigo" class="btn btn-actions btn-sm"><span class="glyphicon glyphicon-send"></span></button>
													</form>
																												
													<form action="frontController" method="post" class="formAction">
														<input type="hidden" name="action" value="AceitarAmizade">
														<input type="hidden" name="remetente" value="${usuario.email}">
														<button type="submit" title="Tipo de relacionamento" class="btn btn-actions btn-sm"><span class="glyphicon glyphicon-heart-empty"></span></button>
													</form>

													<form action="frontController" method="post" class="formAction">
														<input type="hidden" name="action" value="VerPerfil">
														<input type="hidden" name="usuario" value="${usuario.email}">
														<button type="submit" title="Perfil" class="btn btn-actions btn-sm"><span class="glyphicon glyphicon-user"></span></button>
													</form>

												</div>
									        </div>
									    </div>
								    </div>
								
				  				</c:forEach>
				  			</div>
						</c:otherwise>
					</c:choose>

			    </div>
			</div>
		</div>	

	</body>
</html>