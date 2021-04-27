<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%> 
<%@ include file = "Top.jsp"%>
<%@ include file="dbconn.jsp" %>


<section>

	
		<%
			session.invalidate();
		
		%>
			<script>
				alert("로그아웃 되었습니다.!");
				location.href="index.jsp";
			</script>
		
	
</section>
    

<%@ include file = "Buttom.jsp"%>