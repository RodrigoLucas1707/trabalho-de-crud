<%@page import="estoque.loja.ProdutoDao"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	
	<%
		ProdutoDao pdao = new ProdutoDao();
		int idproduto = Integer.parseInt(request.getParameter("idproduto"));
		pdao.excluir(idproduto);
	%>
	
	<div>Registro excluído com sucesso</div>
	<a href="index.jsp">Voltar</a>
	
</body>
</html>