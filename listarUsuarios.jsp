<%@ page pageEncoding="UTF-8" errorPage="error.jsp"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="myTags" uri="simpleTags" %>

<html>
	<head>
		<title>Pessoas</title>
		<meta charset="utf-8" />
		<meta name="viewport" content="width=device-width, initial-scale=1" />
		<link rel="stylesheet" href="css/bootstrap.css" />
		<link rel="stylesheet" href="css/customListarUsuarios.css" />
	</head>
	<body>
		
		<nav class="navbar navbar-inverse">
		  <div class="container-fluid">
		    <div class="navbar-header navbar-right">
		    	<a class="navbar-brand" href="inicio.jsp"><span class="glyphicon glyphicon-user glyphicon-nav"></span>${sessionScope.usuario.nome}</a>		      
		    </div>

		    <form class="navbar-form navbar-left" action="frontController" method="post">
			  <input type="hidden" class="action" name="action" value="ListarUsuarios">

		      <div class="form-group">
		        <input type="search" class="form-control" name="nome" value="${searchNome}" placeholder="Nome">
		      </div>

		      <div class="form-group">
		        <input type="search" class="form-control" name="cidade" value="${searchCidade}" placeholder="cidade">
		      </div>

		      <div class="form-group">
		        <select class="form-control" id="sel1" name="sexo">
		        	<option value="">Sexo</option>
	        		<c:if test="${searchSexo != ''}">
	        			<option value="${searchSexo}" selected>${searchSexo}</option>
	        		</c:if>
	        		<c:if test="${searchSexo != 'masculino'}">
				    	<option value="masculino">Masculino</option>
				    </c:if>
				    <c:if test="${searchSexo != 'feminino'}">
				    	<option value="feminino">Feminino</option>
				    </c:if>
				</select>
		      </div>

		      <button type="submit" class="btn btn-default"><span class="glyphicon glyphicon-search"></span></button>
		    </form>

		  </div>
		</nav>
		
			
		<div class="container">
			<div class="row">
				
				<div class="col-md-12 usuario">
										
					<c:choose>
						<c:when test="${usuarios == null}">
							<div class="alert alert-warning">
							  <strong>Nenhum usuario encontrado!</strong>
							</div>
						</c:when>
						<c:otherwise>
							<c:forEach var="usuario" items="${usuarios}">
							    <myTags:verificaRelacionamento email="${usuario.email}"/>
			
							  	<div class="row">					  
								    <div class="col-md-3 col-md-offset-4">
									    <div class="thumbnail">
									        <img src="img/${usuario.email}/${usuario.fotoPerfil}" alt="Lights" style="width:100%">
									        <div class="caption">

									        	<c:if test="${sessionScope.email == usuario.email}">
									        		<div class="self">(você)</div>
									        	</c:if>

									            <p class="nome">${usuario.nome} (${usuario.status})</p>
									            <div class="actions">
												    <c:if test="${relacao == 'amigos'}">
												    	<form class="formAction">																	
															<button type="button" title="Amigos" class="btn btn-actions btn-sm"><span class="glyphicon glyphicon-heart"></span></button>
														</form>
												    </c:if>	

													<c:if test="${relacao == 'solicitacaoEnviada'}">
														<form class="formAction">																	
															<button type="button" title="Solicitação Enviada" class="btn btn-actions btn-sm"><span class="glyphicon glyphicon-hourglass"></span></button>
														</form>
													</c:if>

													<form action="frontController" method="post" class="formAction">
														<input type="hidden" name="action" value="VerPerfil">
														<input type="hidden" name="usuario" value="${usuario.email}">
														<button type="submit" title="Perfil" class="btn btn-actions btn-sm"><span class="glyphicon glyphicon-user"></span></button>
													</form>
												</div>
									        </div>
									    </div>
								    </div>
								</div>
				  			</c:forEach>
						</c:otherwise>
					</c:choose>

			    </div>
			</div>
		</div>	

	</body>
</html>