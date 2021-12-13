<%@page import="java.sql.Statement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%
String id = request.getParameter("d");

String DB_DRIVER = "org.postgresql.Driver";
String DB_HOST = "jdbc:postgresql://ec2-54-198-213-75.compute-1.amazonaws.com:5432" + "/de7i7os2mdlbd9";
String DB_USER = "yhvtymbxmkdmob";
String DB_PASSWORD = "0a0e4e43913baff97a64b38c8852812f8fb6406fa575b43eb2237901c44e3b95";

Class.forName(DB_DRIVER).newInstance();
Connection conn = DriverManager.getConnection(DB_HOST,DB_USER,DB_PASSWORD);
Statement stat = conn.createStatement();
stat.executeUpdate("delete from crud where id='"+id+"'");
response.sendRedirect("index.jsp");
%>

