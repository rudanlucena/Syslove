<%@ page pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="myTags" tagdir="/WEB-INF/tags" %>
<html>
	<head>
		<title>Syslove</title>
		<meta charset="utf-8" />
		<link rel="stylesheet" href="css/bootstrap.css">
		<link rel="stylesheet" href="css/conta.css">
		<link rel="stylesheet" href="css/customIndex.css">
		<script type="text/javascript" src="js/jquery.min.js"></script>
		<script type="text/javascript" src="js/jquery.form.js"></script>
	</head>
	<body>

		<myTags:formLogin/>

		<div class="container">
		  <h2>Ainda não é usuario? cadastre-se.</h2>
		  <form class="form-horizontal" enctype="multipart/form-data" method="post" name="formulario" action="frontController">

		  	<div class="col-md-12" id="camposObrigatorios">
				<div class="alert alert-danger col-sm-10 pull-right">
				  <strong>Campos vazios!</strong> Por favor preencha os campos obrigatorios.
				</div>
			</div>
			
		    <input type="hidden" class="action" name="action" value="CadastrarUsuario">
		 
			<div id="form1">
			  	<div class="form-group">
			      <label class="control-label col-sm-2" for="nome">Nome</label>
			      <div class="col-sm-10">
			        <input type="text"  class="form-control" id="nome" name="nome" placeholder="Enter Nome" required>
			      </div>
			    </div>

			    <div class="form-group">
			      <label class="control-label col-sm-2" for="apelido">Apelido:</label>
			      <div class="col-sm-10">
			        <input type="text" class="form-control" id="apelido" name="apelido" placeholder="Enter Apelido">
			      </div>
			    </div>

			    <div class="form-group">
			      <label class="control-label col-sm-2" for="sexo">Sexo:</span></label>
			      <div class="col-sm-10">
			        <select class="form-control" name="sexo" id="sexo" required>
			        	<option value="">Seu sexo</option>
					    <option value="masculino">Masculino</option>
					    <option value="feminino">Feminino</option>
					    <option value="outros">Outros</option>
				  	</select>
			      </div>
			    </div>

			    <div class="form-group">
			      <label class="control-label col-sm-2" for="email">Email:</label>
			      <div class="col-sm-10">
			        <input type="Email" class="form-control" id="email" name="email" placeholder="Enter Email" required>
			      </div>
			    </div>

			    <div class="form-group">
			      <label class="control-label col-sm-2" for="senha">Senha:</label>
			      <div class="col-sm-10">          
			        <input type="password" class="form-control" id="senha" name="senha" placeholder="Enter Senha" required>
			      </div>
			    </div>

			    <div class="form-group">        
			      <div class="col-sm-offset-2 col-sm-10">
			        <div class="checkbox">
			        </div>
			      </div>
			    </div>
				
			    <div class="form-group">        
			      <div class="col-sm-offset-2 col-sm-10 controle">
			        <button type="button" id="form1Next" class="btn btn-danger"><span class="glyphicon glyphicon-chevron-right"></span></button>
			      </div>
			    </div>
		   	</div>


            <!--segundo formulario-->
		   	<div id="form2">
			  	<div class="form-group">
			      <label class="control-label col-sm-2" for="dataNascimento">Data Nascimento</span></label>
			      <div class="col-sm-10">
			        <input type="Date"  class="form-control" id="dataNascimento" name="dataNascimento" placeholder="Enter Data" required>
			      </div>
			    </div>

			    <div class="form-group">
			      <label class="control-label col-sm-2" for="cidade">Cidade:</label>
			      <div class="col-sm-10">
			        <input type="text" class="form-control" id="cidade" name="cidade" placeholder="Enter Cidade" required>
			      </div>
			    </div>

			    <div class="form-group">
			      <label class="control-label col-sm-2" for="profissao">Profissao:</label>
			      <div class="col-sm-10">
			        <input type="text" class="form-control" id="profissao" name="profissao" placeholder="Enter Profissão">
			      </div>
			    </div>

			    <div class="form-group">
			      <label class="control-label col-sm-2" for="peso">Peso:</label>
			      <div class="col-sm-10">          
			        <input type="inter" class="form-control" id="peso" name="peso" placeholder="Enter Peso">
			      </div>
			    </div>

			    <div class="form-group">
			      <label class="control-label col-sm-2" for="altura">Altura:</label>
			      <div class="col-sm-10">          
			        <input type="number" step="0.01" class="form-control" id="altura" name="altura" placeholder="Altura">
			      </div>
			    </div>

			    <div class="form-group">        
			      <div class="col-sm-offset-2 col-sm-10">
			        <div class="checkbox">
			        </div>
			      </div>
			    </div>

			    <div class="form-group">        
			      <div class="col-sm-offset-2 col-sm-10 controle">
			      	<button type="button" id="form2Back" class="btn btn-danger"><span class="glyphicon glyphicon-chevron-left"></span></button>
			        <button type="button" id="form2Next" class="btn btn-danger"><span class="glyphicon glyphicon-chevron-right"></span></button>
			      </div>
			    </div>
		   	</div>


		   	<!--terceiro formulario-->
		   	<div id="form3">
			    <div class="form-group">
			      <label class="control-label col-sm-2" for="status">Status:</label>
			      <div class="col-sm-10">
			        <select class="form-control" name="status" id="status" required>
			        	<option value="">Escolha seu status</option>
					    <option value="solteiro">Solteiro(a)</option>
					    <option value="namorando">Namorando</option>
					    <option value="casado">Casado(a)</option>
				  	</select>
			      </div>
			    </div>

			    <div class="form-group">
			      <label class="control-label col-sm-2" for="corCabelo">Cor do cabelo:</label>
			      <div class="col-sm-10">
			        <input type="text" class="form-control" id="corCabelo" name="corCabelo" placeholder="Enter Cor">
			      </div>
			    </div>

			    <div class="form-group">
			      <label class="control-label col-sm-2" for="descricao">Descrição:</label>
			      <div class="col-sm-10">          
			        <textarea class="form-control" rows="5" name="descricao" id="descricao"></textarea>
			      </div>
			    </div>

			    <div class="form-group">
			      <label class="control-label col-sm-2" for="descricao">Passa Tempos Preferidos:</label>
			      <div class="col-sm-10">          
			        <textarea class="form-control" rows="5" name="passaTempo" id="passaTempo"></textarea>
			      </div>
			    </div>

			    <div class="form-group">        
			      <div class="col-sm-offset-2 col-sm-10 controle">
			      	<button type="button" id="form3Back" class="btn btn-danger"><span class="glyphicon glyphicon-chevron-left"></span></button>
			        <button type="button" id="form3Next" class="btn btn-danger"><span class="glyphicon glyphicon-chevron-right"></span></button>
			      </div>
			    </div>
		   	</div>


		   	<!--quarto formulario-->
		   	<div id="form4">
			  	<div class="form-group">
			      <label class="control-label col-sm-2" for="fotoPerfil">Foto do Perfil:</span></label>
			      <div class="col-sm-10">
			        <input type="file"  class="form-control" id="fotoPerfil" name="fotoPerfil" required>
			      </div>
			    </div>	

			    <div class="form-group">        
			      <div class="col-sm-offset-2 col-sm-10 controle">
			      	<button type="button" id="form4Back" class="btn btn-danger"><span class="glyphicon glyphicon-chevron-left"></span></button>
			        <button type="submit" class="btn btn-danger"><span class="	glyphicon glyphicon-floppy-disk"></span></button>
			      </div>
			    </div>
		   	</div>
		  </form>
		</div>
		
		<div class="footer">&copy; Syslove.com</div>
        <script type="text/javascript" src="js/conta.js"></script>
    
	</body>
</html>