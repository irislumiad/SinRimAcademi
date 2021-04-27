<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
 <% request.setCharacterEncoding("UTF-8"); %>
 
 
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>


<%
	String strName=request.getParameter("name");
	String strAge=request.getParameter("age");
	int age = Integer.parseInt(strAge);
%>

<% if( age > 18) {   %>
이름:<%=strName %>, 나이:<%=strAge %>, <%="현재 성인 입니다." %>
<%} else { %> 
이름:<%=strName %>, 나이:<%=strAge %>, <%="현재 성인 입니다." %>
<% } %>

</body>
</html>