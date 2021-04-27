<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%> 
<%@ include file = "Top.jsp"%>
<%@ include file="dbconn.jsp" %>


<section>
<table border=1 width=300 height=200 align="center">
	<tr>
		<th>번호<th>이름<th>국어
	</tr>
<%


	PreparedStatement pstmt = null;
	ResultSet rs = null;
	
	
	
	String sql = "select * from examtbl order by kor desc limit 0,3";
	pstmt = conn.prepareStatement(sql);
	rs=pstmt.executeQuery();
	
	
	String sNo ="";
	String sName ="";
	int kor = 0;
	
	while(rs.next()){
	sNo = rs.getNString("sNo");
	sName = rs.getString("sName");
	kor = rs.getInt("kor");
	
	
		
	%>
	<tr>
	    <td align="center"><%=sNo %><td align="center"><%=sName %><td align="center"><%=kor %>
	</tr>	
<%
	}
		

%>
</table>
</section>
    

<%@ include file = "Buttom.jsp"%>