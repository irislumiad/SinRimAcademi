<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

    
<%@ page import="java.sql.*"%>
<%@ page import="test.*"%>
<%@ page import="java.util.List"%>

<%
	ListMember member = new ListMember();
	List<LogonDataBean> li = member.listMember();
	%>
	
	<div align = "center">
	<br><br>
	<table border=1 width=600>
	<tr><td>아이디 <td>암호 <td>이름</tr>
	
	<%
	for (int i = 0; i < li.size(); i++) {
		LogonDataBean m = li.get(i);
		String id = m.getId();
		String passwd = m.getPasswd();
		String  name= m.getName();
		
		%>
		
		<tr><td><%=id %> <td><%=passwd %> <td><%=name %></tr>
		
		<%
	}	
	%>
	
	</table>
	
	</div>
