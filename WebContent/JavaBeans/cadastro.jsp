<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css" integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh" crossorigin="anonymous">
<title>Insert title here</title>
</head>
<body style = "text-align: center;">
	<jsp:useBean id="e" class="estoque.loja.Estoque" scope="page"/>
	<jsp:useBean id="pdao" class="estoque.loja.ProdutoDao" scope="page"/>
	
	<jsp:setProperty property="*" name="e"/>
	${e=pdao.consultar(e.getIdproduto())}

	<h1 style = "font-family: Baskerville;">Novo produto</h1>
	<form action="gravar.jsp">
	  <input type="hidden" name="idproduto" value="${e.idproduto}"/>
	  <label for="descricao">Descrição:</label><br>
	  <input type="text" id="descricao" name="descricao" value="${e.descricao}"><br>
	  <label for="marca">Marca:</label><br>
	  <input type="text" id="marca" name="marca" value="${e.marca}"><br>
	  <label for="estoque">Estoque:</label><br>
	  <input type="text" id="estoque" name="saldo" value="${e.saldo}"><br>
	  <label for="pcusto">Preço de custo:</label><br>
	  <input type="text" id="pcusto" name="precoCusto" value="${e.precoCusto}"><br>
	  <label for="pvenda">Preço de venda:</label><br>
	  <input type="text" id="pvenda" name="precoVenda" value="${e.precoVenda}"><br><br>
	  <button type="submit" class="btn btn-success">Cadastrar</button>
	</form> 
	<a href="index.jsp" class="badge badge-danger">Cancelar</a>
</body>
<script src="https://code.jquery.com/jquery-3.4.1.slim.min.js" integrity="sha384-J6qa4849blE2+poT4WnyKhv5vZF5SrPo0iEjwBvKU7imGFAV0wwj1yYfoRSJoZ+n" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js" integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo" crossorigin="anonymous"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js" integrity="sha384-wfSDF2E50Y2D1uUdj0O3uMBJnjuUD4Ih7YwaYd1iqfktj0Uod8GCExl3Og8ifwB6" crossorigin="anonymous"></script>
</html>