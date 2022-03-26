<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Product Details Portal</title>
</head>
<body>
	<h3>Welcome to Project 4</h3>
	<br>
	<h1 style="color: purple">Product Details Portal</h1>
	<br>
	<br>

	<h1>Enter Product Details</h1>
	<br>
	<form action="setDetails.jsp" method="post">
		<h3>
			Product ID: <input type="text" name="id"
				placeholder="Enter Product ID">
		</h3>
		<br>
		<h3>
			Product Name: <input type="text" name="name"
				placeholder="Enter Product name">
		</h3>
		<br>
		<h3>
			Product Price: <input type="text" name="price"
				placeholder="Enter Product Prices">
		</h3>
		<br>
		<h3>
			Product Stock Limit: <input type="text" name="stock"
				placeholder="Enter Product Stock">
		</h3>
		<br>
		<h2>
			<input type="submit" value="Submit Product Details"
				style="color: blue">
		</h2>
		<br>
		<br> <br>
		<br>
	</form>
	<form action="check.jsp">
	Enter Product Number to search : <input type="text" name="q">
	<input type="submit" value="Get Details">
	</form>

</body>
</html>