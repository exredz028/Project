
<%@page import ="java.sql.*" %>
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
			Connection connect = null;
			ResultSet rec = null;
			Statement s = null;
		try{
			Class.forName("com.mysql.jdbc.Driver");
			connect = DriverManager.getConnection("jdbc:mysql://localhost/testing"
			+"?user=root&password=12345678");
			s = connect.createStatement();
			String sql = "SELECT * FROM user";
			rec = s.executeQuery(sql);
			
			//if(connect != null){
			//	out.println("Database Connected.");
			//}else{
			//	out.println("Database Connect Failed.");
			//}
		} catch(Exception e){
			out.println(e.getMessage());
			e.printStackTrace();
		}
		%>
</body>
</html>