<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@ page import="java.sql.*"%>
<%@ page import="test.*"%>




<%request.setCharacterEncoding("utf-8");%>

<%
	ListMember listMember = new ListMember();
	List<LogonDataBean> li = listMember.listMember();
	
%>
    
<!DOCTYPE>
<html>
<head>
<meta charset=UTF-8>
<title>Insert title here</title>
</head>
<body>
<br><br>
	<table border = 1 width = 400>
		<tr><td>아이디
		    <td>암호
		    <td>이름
		    <td>날짜
		    
		 </tr>
	
	
<%
	for (int i = 0; i< li.size(); i++){
		LogonDataBean m=li.get(i);
		String id = m.getId();
		String passwd = m.getPasswd();
		String name = m.getName();
		Timestamp reg_date = m.getReg_date();
		%>
		
		<tr><td><%=id %>
		    <td><%=passwd %>
		    <td><a href=edit.jsp?id=<%=id%>><%=name %></a>
		    <td><%=reg_date %>
		<%
	}%>
</table>
</body>
</html>