<%@ page pageEncoding="UTF-8" errorPage="error.jsp"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
	<head>
		<title>Fotos</title>
		<meta charset="utf-8" />
		<meta name="viewport" content="width=device-width, initial-scale=1, user-scalable=no" />
		<link rel="stylesheet" href="css/bootstrap.css" />
		<link rel="stylesheet" href="css/fotos.css" />
		<style>
		.alert-danger{
			margin: 30px;
		}
		</style>
	</head>
	<body>

		<!-- Wrapper -->
			<div id="wrapper">				

				<!-- Main -->
					<div id="main">
						<c:choose>
							<c:when test="${posts == null}">
							<div class="container">
								<div class="col-md-12">
									<div class="alert alert-danger">
									  	<form action="frontController" method="post">
									  		<input type="hidden" name="action" value="VerPerfil" >
									  		<input type="hidden" name="usuario" value="${requestScope.email}">
									  		Nenhume foto encontrada! 
									  		<button type="submit" class="btn btn-info">OK</button>
									  	</form>
									</div>
								</div>
							</div>
							</c:when>
							<c:otherwise>
								<c:forEach var="post" items="${posts}">
									<article class="thumb">
										<a href="img/${post.email}/${post.imagem}" class="image"><img src="img/${post.email}/${post.imagem}" alt="" /></a>
										<h2>Foto</h2>
										<p>Uma bela legenda aqui</p>
									</article>
								</c:forEach>
							</c:otherwise>
						</c:choose>						
					</div>

				<!-- Footer -->
					<footer id="footer" class="panel">
						<div class="inner split">
							<div>
								<ul id="copyright">
									<li>&copy; Alexa e Rudan</li><li>Design: <a href="https://www.facebook.com/alexa.goncalves.56?qsefr=1">Alexa Lins</a></li>
								</ul>
							</div>
							
						</div>
					</footer>

			</div>

		<!-- Scripts -->
			<script src="js/jquery.min.js"></script>
			<script src="js/jquery.poptrox.min.js"></script>
			<script src="js/skel.min.js"></script>
			<script src="js/util.js"></script>
			<script src="js/fotos.js"></script>

	</body>
</html>