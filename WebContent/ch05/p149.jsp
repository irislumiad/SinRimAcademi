<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
 <%@ page import="java.sql.Timestamp" %>
   
<!DOCTYPE>
<html>
<head>
<meta charset=UTF-8>
<title>Insert title here</title>
</head>
<body>
<% 
Timestamp now = new Timestamp(System.currentTimeMillis());  // 프로그램 영역 
%>
<%= now.getHours() %>시 <%= now.getMinutes() %>분 <%= now.getSeconds() %>초   <%  // 표현식 출력하는 영역 %>
	
</body>
</html>