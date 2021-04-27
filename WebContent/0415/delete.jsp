<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>   
 <!--   // db 인크루드 -->
<%@ include file="dbconn.jsp" %>

<%
  request.setCharacterEncoding("UTF-8");

  String sNo=request.getParameter("sNo");


	PreparedStatement pstmt= null;

	try{
		String sql =  "delete from examtbl where sNo = ?"; // 쿼리문
		pstmt = conn.prepareStatement(sql); //  쿼리변수를 db에 넣음
		pstmt.setString(1, sNo);
		pstmt.executeUpdate();  // 이게 있어야 값이 넘어감
		response.sendRedirect("list.jsp");
		
	} catch (Exception e) {
		e.printStackTrace();
		
	} finally {
		pstmt.close();
		conn.close();
	}

%>
  
  


  
  
  
  