<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="estoque.loja.*" %>
<%! Listar lista = new Listar(); %>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css" integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh" crossorigin="anonymous">
<title>Página inicial</title>
</head>
<body style = "text-align: center;">
	<h1 style = "font-family: Baskerville;">Mercadinho</h1>
	<img alt="foto" src="jspclassico.png" style="width:30%">
	<br>
	<a href="cadastro.jsp" class="btn btn-dark" style="padding:16px; margin:4px; font-size:12pt">Cadastro</a>
	<br><br>
	<table border="1" class="table table-striped table-dark">
		<th>Descrição</th>
		<th>Marca</th>
		<th>Estoque</th>
		<th>Preço de venda</th>
		<th>Total preço de venda</th>
		<th>Preço de custo</th>
		<th>Total preço de custo</th>
		
		<%
			for (Estoque e: lista.listar()){
		%>
			<tr>
				<td><%= e.getDescricao() %></td>
				<td><%= e.getMarca() %></td>
				<td><%= e.getSaldo() %></td>
				<td><%= e.getPrecoVenda() %></td>
				<td><%= e.getTotPrecoVenda() %></td>
				<td><%= e.getPrecoCusto() %></td>
				<td><%= e.getTotPrecoCusto() %></td>
			</tr>
		<%
			}
		%>
		
	</table>
</body>
<script src="https://code.jquery.com/jquery-3.4.1.slim.min.js" integrity="sha384-J6qa4849blE2+poT4WnyKhv5vZF5SrPo0iEjwBvKU7imGFAV0wwj1yYfoRSJoZ+n" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js" integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo" crossorigin="anonymous"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js" integrity="sha384-wfSDF2E50Y2D1uUdj0O3uMBJnjuUD4Ih7YwaYd1iqfktj0Uod8GCExl3Og8ifwB6" crossorigin="anonymous"></script>
</html>