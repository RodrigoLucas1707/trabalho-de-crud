<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<jsp:useBean id="e" class="estoque.loja.Estoque" scope="page"/>
	<jsp:useBean id="pdao" class="estoque.loja.ProdutoDao" scope="page"/>
	
	<jsp:setProperty property="*" name="e"/>
	
	${pdao.excluir(e.getIdproduto())}
	
	<div>Registro excluído com sucesso!</div>
	<a href="index.jsp">Voltar</a>
	
</body>
</html>