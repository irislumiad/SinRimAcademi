<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
 <%
Cookie[] cookies = request.getCookies();
 
String id = "";
if(cookies!=null){
 	for(int i = 0; i < cookies.length; ++i){
 		if(cookies[i].getName().equals("id")){
 			id = cookies[i].getValue();
   }
 
  }
 	
	if(id.equals("")) {	
		response.sendRedirect("cookieLoginForm.jsp");
 	}
 	
	 } else {
	 	response.sendRedirect("cookieLoginForm.jsp");
	 
	 
	 
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
<form action="cookieLogout.jsp">
	<input type="submit" value="로그아웃">
</form>

</body>
</html>