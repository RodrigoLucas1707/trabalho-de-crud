<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css" integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh" crossorigin="anonymous">
<title>Página inicial</title>
<jsp:useBean id="lst" class="estoque.loja.ProdutoDao" scope="page"/>
</head>
<body style = "text-align: center;">
	<h1 style = "font-family: Baskerville;">Mercadinho</h1>
	<img alt="foto" src="bean.png" style="width:30%">
	<br>
	<a href="cadastro.jsp" class="badge badge-primary">Cadastro</a>
	<br><br>
	<div style="text-align: -webkit-center; margin-top: 20px;">
		<table border = "1">
			<thead>
				<th>IdProduto</th>
				<th>Descrição</th>
				<th>Marca</th>
				<th>Estoque</th>
				<th>Preço de custo</th>
				<th>Total preço de custo</th>
				<th>Preço de venda</th>
				<th>Total preço de venda</th>
				<th>Excluir</th>
				
			</thead>
			
			<c:forEach var="e" items="${lst.listar()}">
				<tr>
					<td>${e.idproduto}</td>
					<td>${e.descricao}</td>
					<td>${e.marca}</td>
					<td>${e.saldo}</td>
					<td>${e.precoCusto}</td>
					<td>${e.getTotPrecoCusto()}</td>
					<td>${e.precoVenda}</td>
					<td>${e.getTotPrecoVenda()}</td>
					<td><a href="excluir.jsp?idproduto=${e.getIdproduto()}">Excluir</a></td>
				</tr>
			</c:forEach>
		</table>
	</div>
</body>
<script src="https://code.jquery.com/jquery-3.4.1.slim.min.js" integrity="sha384-J6qa4849blE2+poT4WnyKhv5vZF5SrPo0iEjwBvKU7imGFAV0wwj1yYfoRSJoZ+n" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js" integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo" crossorigin="anonymous"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js" integrity="sha384-wfSDF2E50Y2D1uUdj0O3uMBJnjuUD4Ih7YwaYd1iqfktj0Uod8GCExl3Og8ifwB6" crossorigin="anonymous"></script>
</html>