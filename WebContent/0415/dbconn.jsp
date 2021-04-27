<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.sql.*,javax.sql.*,javax.naming.*" %>    
<%
 Connection conn=null;


  try{
	  /*
	  String url="jdbc:mysql://localhost:3306/basicjsp";
	  String user="jspid";
	  String password="jsppass";
	  Class.forName("com.mysql.jdbc.Driver");
	  conn=DriverManager.getConnection(url, user, password);
	  
	  */
	  
	  Context initCtx = new InitialContext();
	  Context envCtx= (Context) initCtx.lookup("java:comp/env");
	  DataSource ds = (DataSource)envCtx.lookup("jdbc/basicjsp");
	  conn = ds.getConnection();
	  
  } catch (Exception e) {
	  e.printStackTrace();
  }
%>
