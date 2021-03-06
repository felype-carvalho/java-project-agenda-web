
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Pagina Cadastro</title>
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css"
	integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T"
	crossorigin="anonymous">
</head>
<body>

	<nav class="navbar navbar-expand-lg navbar-dark bg-dark">
		<a class="navbar-brand" href="#">Agenda</a>
		<button class="navbar-toggler" type="button" data-toggle="collapse"
			data-target="#navbarText" aria-controls="navbarText"
			aria-expanded="false" aria-label="Toggle navigation">
			<span class="navbar-toggler-icon"></span>
		</button>
		<div class="collapse navbar-collapse" id="navbarText">
			<ul class="navbar-nav mr-auto">
				<li class="nav-item"><a class="nav-link" href="index.html">Inicio
						<span class="sr-only">(current)</span>
				</a></li>
				<li class="nav-item active"><a class="nav-link"
					href="adiciona-contato.jsp">Cadastro</a></li>
				<li class="nav-item"><a class="nav-link" href="busca-contatos">Lista
						de Cadastro</a></li>
			</ul>
		</div>
	</nav>

	<form action="cadastra-usuario">
		<div class="col-sm-6">
			<label>Nome</label> <input value="${param.nome}" name="nome"
				type="text" class="form-control">
		</div>
		<div class="col-sm-6">
			<label>Endere�o</label> <input value="${param.endereco}"
				name="endereco" type="text" class="form-control">
		</div>
		<div class="col-sm-6">
			<label>Telefone</label> <input value="${param.telefone}"
				name="telefone" type="text" class="form-control"
				data-mask="(99)9999-9999">
		</div>
		<div class="col-sm-6">
			<label>Email</label> <input value="${param.email}" name="email"
				type="Email" class="form-control">
		</div>

		<input type="hidden" name="id" value="${param.id}"> <br>
		<div class="col-sm-6">
			<button type="submit" class="btn btn-primary">Entrar</button>
		</div>
		<br>
	</form>
	<script src="js/jquery.js" type="text/javascript"></script>
	<script src="js/bootstrap.js" type="text/javascript"></script>
	<script src="js/inputMask.js"></script>
</body>
</html>