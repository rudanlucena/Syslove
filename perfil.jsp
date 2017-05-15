<%@ page pageEncoding="UTF-8" errorPage="error.jsp"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="myTags" uri="simpleTags" %>

<html>
	<head>
		<title>Perfil</title>
		<meta charset="utf-8" />
		<meta name="viewport" content="width=device-width, initial-scale=1" />
		
		<link rel="stylesheet" href="css/perfil.css" />
		<link rel="stylesheet" href="css/bootstrap.css" />
        <link rel="stylesheet" href="css/customPerfil.css" />
        <link rel="stylesheet" href="css/navbar.css" />
	</head>
	<body>

		<nav class="navbar navbar-inverse">
		  <div class="container-fluid">
		    <div class="navbar-header navbar-right">
		    	<a class="navbar-brand" href="inicio.jsp"><span class="glyphicon glyphicon-user glyphicon-nav"></span>${sessionScope.usuario.nome}</a>		      
		    </div>
		    <div class="navbar-header">
		    	<a class="navbar-brand" href="#">PERFIL</a>		      
		    </div>
		  </div>
		</nav>

		<!-- Home -->
			<div class="container">
				<div class="row">
					<div class="col-md-12">

			            <div class="card hovercard">
			                <div class="cardheader">

			                </div>
			                <div class="avatar">
			                    <img alt="" src="img/${usuario.email}/${usuario.fotoPerfil}">
			                </div>
			                <h3 class="user-name">${usuario.nome}</h3>
			                <div>
			                	<myTags:verificaRelacionamento email="${usuario.email}"/>
						
										  	
					        <div class="actions">
							    <c:if test="${relacao != 'amigos' and relacao != 'solicitacaoEnviada' and relacao != 'solicitacaoRecebida'}">			
									<form action="frontController" method="post" class="formAction">
										<input type="hidden" name="action" value="SolicitarAmizade">
										<input type="hidden" name="destinatario" value="${usuario.email}">
										<button type="submit" title="Solicitar Amizade" class="btn btn-actions"><span class="glyphicon glyphicon-plus"></span></button>
									</form>
								</c:if>
								<c:if test="${relacao == 'solicitacaoRecebida'}">					
									<form action="frontController" method="post" class="formAction">
										<input type="hidden" name="action" value="AceitarAmizade">
										<input type="hidden" name="remetente" value="${usuario.email}">
										<button type="submit" title="Confirmar Amizade" class="btn btn-actions"><span class="glyphicon glyphicon-ok"></span></button>
									</form>
								</c:if>
								<c:if test="${relacao == 'solicitacaoEnviada'}">
									<form class="formAction">																	
										<button type="button" title="Solicitação Enviada" class="btn btn-actions"><span class="glyphicon glyphicon-hourglass"></span></button>
									</form>
								</c:if>
								<c:if test="${relacao == 'amigos'}">
									<form class="formAction">													
										<button type="button" title="Amigos" class="btn btn-actions "><span class="glyphicon glyphicon-heart"></span></button>
									</form>
								</c:if>
								<form action="frontController" method="post" class="formAction">
									<input type="hidden" name="action" value="VerPerfil">
									<input type="hidden" name="usuario" value="${usuario.email}">
									<button type="submit" title="Enviar Mensagem" class="btn btn-actions "><span class="glyphicon glyphicon-envelope"></span></button>
								</form>
								<form action="frontController" method="post" class="formAction">
									<input type="hidden" name="action" value="ListarFotos">
									<input type="hidden" name="email" value="${usuario.email}">
									<button type="submit" title="Enviar Mensagem" class="btn btn-actions "><span class="glyphicon glyphicon-picture"></span></button>
								</form>
							</div>
												        
			                
			                <div class="info">
			                    <div class="title">
			                        
			                    </div>
			                    <div class="desc"><strong>Apelido: </strong>${usuario.apelido}</div>
			                    <div class="desc"><strong>Status: </strong>${usuario.status}</div>
			                    <div class="desc"><strong>Cidade: </strong>${usuario.cidade}</div>
			                    <div class="desc"><strong>profissao: </strong>${usuario.profissao}</div>
			                    <div class="desc"><strong>Cabelo: </strong>${usuario.corCabelo}</div>
			                    <div class="desc"><strong>PassaTempos: </strong>${usuario.passaTempo}</div>
			                    <div class="desc"><strong>Descrição: </strong>${usuario.descricao}</div>
				                </div>
			                
			            </div>
			        </div>
				</div>
			</div>

			<myTags:ListarPosts email="${usuario.email}" />

			
				<div class="container">
					<div class="row">
						<c:forEach var="post" items="${posts}">
							<div class="4u 12u(mobile)">
								<article class="box style2">
									<a href="#" class="image featured"><img class="img-rounded" src="img/${post.email}/${post.imagem}" alt="" /></a>
									<p>${post.legenda}</p>
								</article>
							</div>
						</c:forEach>
					</div>
				</div>


		<!-- Scripts -->
			<script src="js/jquery.min.js"></script>
			<script src="js/jquery.scrolly.min.js"></script>
			<script src="js/skel.min.js"></script>
			<script src="js/skel-viewport.min.js"></script>
			<script src="js/util.js"></script>
			<script src="js/perfil.js"></script>

	</body>
</html>