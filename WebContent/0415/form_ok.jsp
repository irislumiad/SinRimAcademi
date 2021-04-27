<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@ include file="dbconn.jsp" %> <!--   // db 인크루드 -->

<%
	request.setCharacterEncoding("UTF-8"); 

	String sNo=request.getParameter("sNo");
	String sName=request.getParameter("sName");
	int kor=Integer.parseInt(request.getParameter("kor"));
	int eng=Integer.parseInt(request.getParameter("eng"));
	int math=Integer.parseInt(request.getParameter("math"));
	int hist=Integer.parseInt(request.getParameter("hist"));
	
%>

<%
	PreparedStatement pstmt= null;

	try{
		String sql = "insert into examtbl values(?,?,?,?,?,?)"; // 쿼리문
		pstmt = conn.prepareStatement(sql); //  쿼리변수를 db에 넣음
		pstmt.setString(1, sNo);
		pstmt.setString(2, sName);
		pstmt.setInt(3, kor);
		pstmt.setInt(4, eng);
		pstmt.setInt(5, math);
		pstmt.setInt(6, hist);
		pstmt.executeUpdate();  // 이게 있어야 값이 넘어감
		response.sendRedirect("list.jsp");
		
	} catch (Exception e) {
		e.printStackTrace();
		
	} finally {
		pstmt.close();
		conn.close();
	}

%>




