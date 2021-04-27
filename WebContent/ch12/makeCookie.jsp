<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
    
    
<%
	String cookieName = "id4";
	Cookie cookie = new Cookie(cookieName, "Jinho4");
	cookie.setMaxAge(60*2);
	response.addCookie(cookie);
%>    
    
<!DOCTYPE>
<html>
<head>
<meta charset=UTF-8>
<title>Insert title here</title>
</head>
<body>
	<h2> 쿠키를 생성하는 페이지 </h2>
	쿠키가 생성 되었습니다.<br>
	<form method = "post" action="userCookie.jsp">
		<input type="submit" value="생성된 쿠키 확인">
	</form>
</body>
</html>