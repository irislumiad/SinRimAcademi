<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>   
<%
  request.setCharacterEncoding("UTF-8");

  String id=request.getParameter("id");

  Timestamp register =new Timestamp(System.currentTimeMillis());
  
  Connection conn=null;
  PreparedStatement pstmt=null;
  
  
  try{
	  String url="jdbc:mysql://localhost:3306/basicjsp";
	  String user="jspid";
	  String password="jsppass";
	
	  Class.forName("com.mysql.jdbc.Driver"); // 1) jdbc 드라이버 Load 
	  conn=DriverManager.getConnection(url, user, password); // 2)Connection 객체 생성
	  
	  String  sql = "delete from member whehe id = ?";
	          sql = sql +" values (?,?,?,?)";
	               
	  pstmt=conn.prepareStatement(sql); // 3) Statement 객체 생성 (SQL 쿼리가 들어와야 함)
	  pstmt.setString(1, id);
	  pstmt.executeUpdate(); // 4) 쿼리 실행
	  

	  response.sendRedirect("list.jsp");
	 
	  
  } catch (Exception e) {
	  e.printStackTrace();
	  out.print("레코드 추가 실패.!!");
  } finally {
	  pstmt.close(); // Statement 객체 닫기
	  conn.close(); // connection 객체 닫기 
  }

%>
