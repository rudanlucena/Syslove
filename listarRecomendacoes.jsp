<%@ page pageEncoding="UTF-8" errorPage="error.jsp"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="myTags" uri="simpleTags" %>

<html>
	<head>
		<title>Solicitações</title>
		<meta charset="utf-8" />
		<meta name="viewport" content="width=device-width, initial-scale=1" />
		<link rel="stylesheet" href="css/bootstrap.css" />
		<link rel="stylesheet" type="text/css" href="css/solicitacao.css">
	</head>
	<body>

		<nav class="navbar navbar-inverse">
		  <div class="container-fluid">
		    <div class="navbar-header navbar-right">
		    	<a class="navbar-brand" href="inicio.jsp"><span class="glyphicon glyphicon-user glyphicon-nav"></span>${sessionScope.usuario.nome}</a>		      
		    </div>
		    <div class="navbar-header">
		    	<a class="navbar-brand" href="#">Recomendaçôes</a>		      
		    </div>
		  </div>
		</nav>

		<div class="container">
			<!-- Nav -->
			
			<div class="row">
				<div class="col-md-12">
					<myTags:ListarRecomendacoes email="${sessionScope.email}" />

					<c:choose>
						<c:when test="${solicitacoes == null}">
							<div class="alert alert-warning">
							  <strong>Você não possui recomendacoes!</strong>
							</div>
						</c:when>
						<c:otherwise>
							<div class="row">			
								<c:forEach var="usuario" items="${solicitacoes}">
													  
								    <div class="col-md-3">
									    <div class="thumbnail">
									        <img src="img/${usuario.email}/${usuario.fotoPerfil}" alt="Lights" style="width:100%">
									        <div class="caption">
									            <p class="nome">${usuario.nome} (${usuario.status})</p>
									            <div class="actions">

													<form action="frontController" method="post" class="formAction">
														<input type="hidden" name="action" value="RejeitarRecomendacao">
														<input type="hidden" name="remetente" value="${usuario.email}">
														<button type="submit" title="Rejeitar" class="btn btn-actions btn-sm"><span class="glyphicon glyphicon-remove"></span></button>
													</form>		

													<form action="frontController" method="post" class="formAction">
														<input type="hidden" name="action" value="SolicitarAmizade">
														<input type="hidden" name="destinatario" value="${usuario.email}">
														<button type="submit" title="Solicitar Amizade" class="btn btn-actions"><span class="glyphicon glyphicon-plus"></span></button>
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

		<!-- Scripts -->
			<script src="js/jquery.min.js"></script>
			<script src="js/skel.min.js"></script>
			<script src="js/util.js"></script>
			<script src="js/amigos.js"></script>
		</div>

	</body>
</html>