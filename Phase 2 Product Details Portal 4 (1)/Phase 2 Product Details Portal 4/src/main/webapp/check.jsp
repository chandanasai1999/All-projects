<%@page import="java.sql.*"%>

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
Connection con = null;
try{
	Class.forName("com.mysql.cj.jdbc.Driver").newInstance();
	con = DriverManager.getConnection("jdbc:mysql://localhost:3306/ecommerce", "root", "AaBbCc@123");
	Statement statement = con.createStatement();
	String q = request.getParameter("q");
	String query=null;
	if(q.equals("")){
		query=null;
		%><h1>Please Enter Valid Data</h1><%
	}
	else{
		query="select * from eproduct where id="+q;
	}
	ResultSet res = statement.executeQuery(query);
	while(res.next()){
		%>
		<h1><%=res.getString("name")%></h1><%
	}
}
catch(Exception e){
	e.printStackTrace();
}
%>
</body>
</html>