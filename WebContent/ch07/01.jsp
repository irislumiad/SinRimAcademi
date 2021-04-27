<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
 
    
<!DOCTYPE>
<html>
<head>
<meta charset=UTF-8>
<title>Insert title here</title>
</head>
<body>
	
	<% 
	String name = "둘리";
	request.getParameter(name);  // 내장객체 
	
	out.print("출력 ");
	
	%>
</body>
</html>

<!--  http://127.0.0.1:8080/stydent/ch09/dbconn.jsp  이게 URL-->

<!-- xx http://127.0.0.1:8080/ xx      stydent/ch09/dbconn.jsp  이게 URI-->



 