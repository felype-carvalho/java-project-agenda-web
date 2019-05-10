<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page contentType="text/html; charset=UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js" integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1" crossorigin="anonymous"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>
<title></title>
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
				<li class="nav-item"><a class="nav-link" href="adiciona-contato.html">Cadastro</a>
				</li>
				<li class="nav-item active"><a class="nav-link" href="busca-contatos">Lista de Cadastro</a></li>
			</ul>
		</div>
	</nav>
	
<div class="container">
	<table class="table">
			<tr>
				<th>Identificador</th>
				<th>Nome</th>
				<th>Email</th>
				<th>Endereço</th>
				<th>Telefone</th>
			</tr>
		<c:forEach var="pessoa" items="${contatos}">
			<tr>
				<td>${pessoa.id}</td>
				<td>${pessoa.nome}</td>
				<td>${pessoa.email}</td>
				<td>${pessoa.endereco}</td>
				<td>${pessoa.telefone}</td>
				<td><a type="button" class="btn btn-danger" href="remover-contatos?id=${pessoa.id}">Remover</a></td>
				
			</tr>		
		</c:forEach>	
	</table>
</div>

</body>
</html>