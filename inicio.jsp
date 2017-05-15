<%@ page pageEncoding="UTF-8" errorPage="error.jsp"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="myTags" uri="simpleTags" %>

<html>
	<head>
		<title>Pagina Inicial</title>
		<meta charset="utf-8" />
		<meta name="viewport" content="width=device-width, initial-scale=1" />
		<link rel="stylesheet" href="css/bootstrap.css" />
		<link rel="stylesheet" href="css/inicio.css" />
		<link rel="stylesheet" href="css/customInicio.css" />
	</head>
	<body>
		<!-- Content -->
			<div id="content">
				<div class="inner">

				<!-- Post -->
					<myTags:ListarPosts email="${sessionScope.usuario.email}"/>

					<c:if test="${posts == null}">
						<div class="alert alert-warning">
						  <strong>Nada a visualizar ainda!</strong>
						</div>
					</c:if>
					<c:forEach var="post" items="${posts}">
						<article class="box post post-excerpt">
							<header>
								<h2><a href="#">${post.usuario}</a></h2>
							</header>
							<div class="info">
								<span class="date"><span class="month">Jul<span>y</span></span> <span class="day">14</span><span class="year">, 2014</span></span>
							</div>
							<a href="#" class="image featured"><img src="img/${post.email}/${post.imagem}" alt="" /></a>
							<p>
								${post.legenda}
							</p>
						</article>
					</c:forEach>

				</div>
			</div>

		<!-- Sidebar -->
			<div id="sidebar">

				<div class="fotoPerfil">
					<img class="img-responsive img-circle" alt="Cinque Terre" src="img/${usuario.email}/${usuario.fotoPerfil}">
				</div>

				<section class="box search">
					<form method="post" action="frontController">
						<input type="hidden" name="action" value="ListarUsuarios">
						<input type="text" class="text" name="nome" placeholder="Buscar">
						<input type="hidden" class="text" name="cidade" placeholder="Buscar">
						<input type="hidden" class="text" name="sexo" placeholder="Buscar">
						<button type="submit"><span class="glyphicon glyphicon-search">buscar</button>
					</form>
				</section>

			<!-- Nav -->
				<nav id="nav">
					<ul>
						<li>
							<form action="#">
								<button type="submit"><span class="glyphicon glyphicon-list"></span>Feed</button>
							</form>
						</li>

						<li>
							<form action="enviarFoto.jsp">
								<button type="submit"><spam class="glyphicon glyphicon-camera"></spam>Adicionar fotos</button>
							</form>
						</li>

						<li>
							<button type="submit"><span  class="glyphicon glyphicon-picture"></span>Fotos</button>
						</li>

						<li>
							<form action="frontController" method="post">
								<input type="hidden" name="action" value="ListarAmigos">
								<button type="submit"><span class="glyphicon glyphicon-heart"></span>Amigos</button>
							</form>
						</li>

						<li>
							<button type="submit"><spam class="glyphicon glyphicon-envelope"></spam>Mensagens</button>
						</li>


						<form action="frontController" method="post">
							<input type="hidden" class="action" name="action" value="ListarSolicitacoesAmizade">
							<li><button type="submit"><spam class="glyphicon glyphicon-heart-empty"></spam>Solicitacoes</button></li>
						</form>

						<li id="perfil" class="iconListMenu"><button type="button"><spam class="glyphicon glyphicon-user"></spam>Perfil</button></li>
						<div id="menuPerfil" class="menu">	
							<li><a href="editarPerfil.jsp"><button type="submit"><spam class="glyphicon glyphicon-pencil"></spam>Editar</button></a></li>
							<li><a href="editarFotoPerfil.jsp"><button type="submit"><spam class="glyphicon glyphicon-picture"></spam>FotoPerfil</button></a></li>
						</div>

						<li id="conta" class="iconListMenu"><button type="button"><spam class="glyphicon glyphicon-cog"></spam>Conta</button></li>
						<div id="menuConta" class="menu">
							<li>
								<form action="frontController" method="post">
									<input type="hidden" class="action" name="action" value="EncerrarSessaoUsuario">
									<li><a><button type="submit"><spam class="glyphicon glyphicon-log-out"></spam>Sair</button></a></li>
							    </form>
							</li>
							<li>
							    <form action="frontController" method="post">
									<input type="hidden" class="action" name="action" value="ExcluirUsuario">
									<li><a><button type="submit"><spam class="glyphicon glyphicon-trash"></spam>Excluir</button></a></li>
							    </form>
							</li>
						</div>
					</ul>
				</nav>			


			<!-- Copyright -->
				<ul id="copyright">
						<li>&copy; SYSLOVE</li>
				</ul>

			</div>

		<!-- Scripts -->
			<script src="js/jquery.min.js"></script>
			<script src="js/skel.min.js"></script>
			<script src="js/util.js"></script>
			<script src="js/inicio.js"></script>

			<script type="text/javascript">
				$("#perfil").click(function(){
					$("#menuPerfil").toggle("500");
				});
				$("#conta").click(function(){
					$("#menuConta").toggle("500");
				});
		    </script>

	</body>
</html>