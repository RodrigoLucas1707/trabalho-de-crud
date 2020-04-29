<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
 <%@ page import="estoque.loja.*" %>
 
 <%! ProdutoDao lista = new ProdutoDao(); %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css" integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh" crossorigin="anonymous">
<title>Insert title here</title>
</head>
<body style = "text-align: center;">
	<% 
		Estoque e = new Estoque();
		e.setIdproduto(Integer.parseInt(request.getParameter("idproduto")));
		e.setDescricao(request.getParameter("descricao"));
		e.setMarca(request.getParameter("marca"));
		e.setSaldo(Double.parseDouble(request.getParameter("estoque")));
		e.setPrecoCusto(Double.parseDouble(request.getParameter("pcusto")));
		e.setPrecoVenda(Double.parseDouble(request.getParameter("pvenda")));
		lista.inserirOuAlterar(e);
	%>
	Dados inseridos com sucesso!
	<br>
	
	<a href="cadastro.jsp?idproduto=0" class="btn btn-dark" style="padding:14px; margin:4px; font-size:12pt">Novo cadastro</a>
	<a href="index.jsp" class="btn btn-dark" style="padding:14px; margin:4px; font-size:12pt">Voltar ao menu</a>
	
</body>
<script src="https://code.jquery.com/jquery-3.4.1.slim.min.js" integrity="sha384-J6qa4849blE2+poT4WnyKhv5vZF5SrPo0iEjwBvKU7imGFAV0wwj1yYfoRSJoZ+n" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js" integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo" crossorigin="anonymous"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js" integrity="sha384-wfSDF2E50Y2D1uUdj0O3uMBJnjuUD4Ih7YwaYd1iqfktj0Uod8GCExl3Og8ifwB6" crossorigin="anonymous"></script>
</html>