<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<H2>JDBC 드라이버 테스트</H2>
<%
  Connection conn=null;
  try{
	  String url="jdbc:mysql://localhost:3306/basicjsp";
	  String user="jspid";
	  String password="jsppass";
	  Class.forName("com.mysql.jdbc.Driver");
	  DriverManager.getConnection(url, user, password);
	  out.print("정상적으로 연결되었습니다");
  } catch (Exception e) {
	  e.printStackTrace();
  }


%>
</body>
</html>
