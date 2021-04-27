<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@ include file="dbconn.jsp" %> 

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
		String sql = "update examtbl set sName=?,kor=?,eng=?,math=?,hist=? where sNo=?"; // 쿼리문
		pstmt = conn.prepareStatement(sql); //  쿼리변수를 db에 넣음
		pstmt.setString(1, sName);
		pstmt.setInt(2, kor);
		pstmt.setInt(3, eng);
		pstmt.setInt(4, math);
		pstmt.setInt(5, hist);
		pstmt.setString(6, sNo);
		pstmt.executeUpdate();  // 이게 있어야 값이 넘어감
		response.sendRedirect("list.jsp");
		
	} catch (Exception e) {
		e.printStackTrace();
		
	} finally {
		pstmt.close();
		conn.close();
	}

%>

