<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<h3>Storing product details into class</h3>

	<br>
	<jsp:useBean id="product" class="productDetailsPortal4.Product"
		scope="session" />
	<jsp:setProperty property="id" name="product" />
	<jsp:setProperty property="name" name="product" />
	<jsp:setProperty property="price" name="product" />
	<jsp:setProperty property="stock" name="product" />
	<br>
	<br>
	<br>

	<h2 align="left">
		<a href="dashboard.jsp"> Get the product details</a>
	</h2>
	<br>
	<br>

</body>
</html>