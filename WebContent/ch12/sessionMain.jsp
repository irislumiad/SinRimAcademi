<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
 <%
	String id = (String)session.getAttribute("id");
	String passwd = (String)session.getAttribute("passwd");
 


if(id!=null){
	
	if (passwd != null) {
		
	} else {
		response.sendRedirect("sessionTestForm.jsp");
 	}
 
 } else {
	 response.sendRedirect("sessionTestForm.jsp");
 }

 %>
<!DOCTYPE>
<html>
<head>
<meta charset=UTF-8>
<title>Insert title here</title>
</head>
<body>
<%=id%> 님이 로그인 하였습니다. 
<form action="sessionLogout.jsp">
	<input type="submit" value="로그아웃">
</form>

</body>
</html>