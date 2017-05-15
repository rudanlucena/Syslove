<nav class="navbar navbar-inverse">
  <div class="container-fluid">
    <div class="navbar-header">
    	<a class="navbar-brand" href="#">SYSLOVE</a>		      
    </div>

    <form class="navbar-form navbar-right" action="frontController" method="post">

	  <input type="text" class="action" name="action" value="LoginUsuario">

      <div class="form-group">
        <input type="text" class="form-control" name="email" placeholder="email" required>
      </div>
      <div class="form-group">
        <input type="password" class="form-control" name="senha" placeholder="senha" required>
      </div>
      <button type="submit" class="btn btn-default">Entrar</button>
    </form>

  </div>
</nav>