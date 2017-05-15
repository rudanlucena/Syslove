<html>
	<head>
		<title>Editar foto</title>
		<meta charset="utf-8" />
		<meta name="viewport" content="width=device-width, initial-scale=1" />
		<link rel="stylesheet" href="css/bootstrap.css" />
		<link rel="stylesheet" type="text/css" href="css/inicio.css">
		<link rel="stylesheet" type="text/css" href="css/solicitacao.css">
	</head>
	<body>

		<nav class="navbar navbar-inverse">
		  <div class="container-fluid">
		    <div class="navbar-header navbar-right">
		    	<a class="navbar-brand" href="inicio.jsp"><span class="glyphicon glyphicon-user glyphicon-nav"></span>${sessionScope.usuario.nome}</a>		      
		    </div>
		    <div class="navbar-header">
		    	<a class="navbar-brand" href="#">Editar foto perfil</a>		      
		    </div>
		  </div>
		</nav>

		<!-- Contact -->
			<div class="wrapper style4">
				<article id="contact" class="container 75%">
					<div align="center">
						<header>
							<p>
							<font size="7" color="black">
								Atualizar Perfil
							</font>
							</p>
						</header>
					</div>
					<div>
						<div class="row">
							<div class="12u">
								<form enctype="multipart/form-data" method="post" action="frontController">
									<div>
										<div class="row">
											<input type="hidden" name="action" value="AtualizarFotoPerfil">
											<div class="12u">
												<input type="file" name="fotoPerfil" id="fotoPerfil" required/>
											</div>
										</div>
					
										<div class="row 200%">
											<div class="12u">
												<ul class="actions">
													<li><input type="submit" value="Atualizar"/></li>
													
												</ul>
											</div>
										</div>
									</div>
								</form>
							</div>
						</div>
					</div>
					<footer>
						<ul id="copyright">
							<li>&copy; SYSLOVE</li>
						</ul>
					</footer>
				</article>
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