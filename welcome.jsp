<%@ page pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="myTags" tagdir="/WEB-INF/tags"%>

<html>
	<head>
		<title>Pessoas</title>
		<meta charset="utf-8" />
		<meta name="viewport" content="width=device-width, initial-scale=1" />
		<link rel="stylesheet" href="css/bootstrap.css" />
		<link rel="stylesheet" href="css/customWelcome.css" />
	</head>
	<body>
		
		<myTags:formLogin/>
			
		<div class="container">
			<div class="row">
				<div class="col-md-12 usuario">					
					<div class="alert alert-warning">
					  <strong>Seja bem vindo ao syslove. Realize o login e divirta-se!</strong>
					</div>
			    </div>
			</div>
		</div>	

	</body>
</html>