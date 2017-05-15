<%@ page pageEncoding="UTF-8" errorPage="error.jsp"%>
<html>
	<head>
		<title>Syslove</title>
		<meta charset="utf-8" />
		
		<link rel="stylesheet" href="css/bootstrap.css">
		<link rel="stylesheet" href="css/conta.css">
		<script type="text/javascript" src="js/jquery.min.js"></script>
		<script type="text/javascript" src="js/jquery.form.js"></script>

	</head>
	<body>

		<nav class="navbar navbar-inverse">
		  <div class="container-fluid">
		    <div class="navbar-header">
		      <a class="navbar-brand" href="#">SYSLOVE</a>
		    </div>
		  </div>
		</nav>


		<div class="container">
		  <form class="form-horizontal" method="post" name="formulario" action="frontController">
			
		    <input type="hidden" class="action" name="action" value="AtualizarUsuario">
		 
			<div>
			  	<div class="form-group">
			      <label class="control-label col-sm-2" for="nome">Nome</label>
			      <div class="col-sm-10">
			        <input type="text"  class="form-control" id="nome" name="nome" value="${sessionScope.usuario.nome}" placeholder="Enter Nome" required>
			      </div>
			    </div>

			    <div class="form-group">
			      <label class="control-label col-sm-2" for="apelido">Apelido:</label>
			      <div class="col-sm-10">
			        <input type="text" class="form-control" id="apelido" name="apelido" value="${sessionScope.usuario.apelido}" placeholder="Enter Apelido">
			      </div>
			    </div>

			    <div class="form-group">
			      <label class="control-label col-sm-2" for="email">Email:</label>
			      <div class="col-sm-10">
			        <input type="email" class="form-control" id="email" name="email" value="${sessionScope.email}" required>
			      </div>
			    </div>

			    <div class="form-group">
			      <label class="control-label col-sm-2" for="senha">Senha:</label>
			      <div class="col-sm-10">          
			        <input type="password" class="form-control" id="senha" name="senha" value="${sessionScope.usuario.senha}" placeholder="Enter Senha" required>
			      </div>
			    </div>

			  	<div class="form-group">
			      <label class="control-label col-sm-2" for="dataNascimento">Data Nascimento</span></label>
			      <div class="col-sm-10">
			        <input type="Date"  class="form-control" id="dataNascimento" name="dataNascimento" value="${sessionScope.usuario.dataNascimento}" placeholder="Enter Data" required>
			      </div>
			    </div>

			    <div class="form-group">
			      <label class="control-label col-sm-2" for="cidade">Cidade:</label>
			      <div class="col-sm-10">
			        <input type="text" class="form-control" id="cidade" name="cidade" value="${sessionScope.usuario.cidade}" placeholder="Enter Cidade">
			      </div>
			    </div>

			    <div class="form-group">
			      <label class="control-label col-sm-2" for="profissao">Profissao:</label>
			      <div class="col-sm-10">
			        <input type="text" class="form-control" id="profissao" name="profissao" value="${sessionScope.usuario.profissao}" placeholder="Enter Profissão">
			      </div>
			    </div>

			    <div class="form-group">
			      <label class="control-label col-sm-2" for="peso">Peso:</label>
			      <div class="col-sm-10">          
			        <input type="inter" class="form-control" id="peso" name="peso" value="${sessionScope.usuario.peso}" placeholder="Enter Peso">
			      </div>
			    </div>

			    <div class="form-group">
			      <label class="control-label col-sm-2" for="altura">Altura:</label>
			      <div class="col-sm-10">          
			        <input type="number" step="0.01" class="form-control" id="altura" name="altura" value="${sessionScope.usuario.altura}" placeholder="Altura">
			      </div>
			    </div>

			  	<div class="form-group">
			      <label class="control-label col-sm-2" for="sexo">Sexo:</span></label>
			      <div class="col-sm-10">
			        <select class="form-control" name="sexo" id="sexo" required>
			        	<option value="${sessionScope.usuario.sexo}">${sessionScope.usuario.sexo}</option>
			        	<option value="">-</option>
					    <option value="masculino">Masculino</option>
					    <option value="feminino">Feminino</option>
					    <option value="outros">Outros</option>
				  	</select>
			      </div>
			    </div>

			    <div class="form-group">
			      <label class="control-label col-sm-2" for="status">Status:</label>
			      <div class="col-sm-10">
			        <select class="form-control" name="status" id="status" required>
			        	<option value="${sessionScope.usuario.sexo}">${sessionScope.usuario.status}</option>
			        	<option value="">-</option>
					    <option value="solteiro">Solteiro(a)</option>
					    <option value="namorando">Namorando</option>
					    <option value="casado">Casado(a)</option>
				  	</select>
			      </div>
			    </div>

			    <div class="form-group">
			      <label class="control-label col-sm-2" for="corCabelo">Cor do cabelo:</label>
			      <div class="col-sm-10">
			        <input type="text" class="form-control" id="corCabelo" name="corCabelo" value="${sessionScope.usuario.corCabelo}" placeholder="Enter Cor">
			      </div>
			    </div>

			    <div class="form-group">
			      <label class="control-label col-sm-2" for="descricao">Descrição:</label>
			      <div class="col-sm-10">          
			        <textarea class="form-control" rows="5" name="descricao" id="descricao">${sessionScope.usuario.descricao}</textarea>
			      </div>
			    </div>

			  	<div class="form-group">
			      <label class="control-label col-sm-2" for="descricao">Passa Tempos Preferidos:</label>
			      <div class="col-sm-10">          
			        <textarea class="form-control" rows="5" name="passaTempo" id="passaTempo">${sessionScope.usuario.passaTempo}</textarea>
			      </div>
			    </div>

			    <div class="form-group">        
			      <div class="col-sm-offset-2 col-sm-10 controle">
			        <button type="submit" class="btn btn-danger"><span class="	glyphicon glyphicon-floppy-disk"></span></button>
			      </div>
			      <input type="hidden" name="action" value="CasdastrarUsuario">
			    </div>
		   	</div>
		 </form>
	</div>

        	<script type="text/javascript" src="js/conta.js"></script>
	</body>
</html>