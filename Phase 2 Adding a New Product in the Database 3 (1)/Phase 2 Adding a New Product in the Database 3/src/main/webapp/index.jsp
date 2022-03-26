<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Adding a New Product in the Database</title>
</head>
<body>
<h3>Welcome to Project 3</h3><br>
<h1 style="color: purple">Adding a New Product in the Database</h1>
<br><br>


<h3 align="right" style="color: blue"><a href="list">Click here for stored details</a></h3>
<br><br>

<table>
<tr>
<h3 align="center" style="color: blue">Enter Product Details</h3>
<form action="add" method="post">
<h3 align="center">Product Name: <input type="text" name="name" placeholder="Enter Product name" maxlength="50">
</h3>
<h3 align="center">Product Price: <input type="text" name="price" placeholder="Enter Product Prices" maxlength="50">
</h3>
<h3 align="center">Product Stock limit: <input type="text" name="stock" placeholder="Enter Product Stock" maxlength="50">
</h3>
<h2 align="center"><input type="submit" value="Submit Product Details" style="color: blue ">
</h2><br><br>
</form>
</tr>
</table>

</body>
</html>