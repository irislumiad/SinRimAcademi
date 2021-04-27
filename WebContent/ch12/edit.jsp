<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@page import="java.util.List"%>
    
<%@ page import="java.sql.*"%>
<%@ page import="test.*"%>

<%request.setCharacterEncoding("utf-8");%>
<%

	String id = request.getParameter("id"); 
	EditMember e = new EditMember();
	LogonDataBean k=e.Editmember(id);
%>

    
    
<!DOCTYPE>
<html>
<head>
<meta charset=UTF-8>
<title>Insert title here</title>
</head>
<body>
<%=k.getId() %> <br>
<%=k.getPasswd() %><br>
<%=k.getName() %><br>
<%=k.getReg_date() %><br>
</body>
</html>