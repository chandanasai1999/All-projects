<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

	<jsp:useBean id="product" class="productDetailsPortal4.Product"
		scope="session"></jsp:useBean>
	<h3>Product Details :</h3>
	<br>
	<h3 align="center">
		Product ID:
		<jsp:getProperty property="id" name="product" /></h3>
	<br>
	<h3 align="center">
		Product Name:
		<jsp:getProperty property="name" name="product" /></h3>
	<br>
	<h3 align="center">
		Product Price:
		<jsp:getProperty property="price" name="product" /></h3>
	<br>
	<h3 align="center">
		Product Stock:
		<jsp:getProperty property="stock" name="product" /></h3>
	<br>

	<br>
	<br>
	<h4 align="center" style="color: red;">
		<a href="index.jsp">Click here to go home page and enter details
			again</a>
	</h4>

</body>
</html>