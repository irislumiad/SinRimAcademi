<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@ page import="java.sql.*" %>
<%@ page import="java.util.List" %>
<%@ page import="exam0422.*" %>

<%
 RealFolder r = new RealFolder();
 String str = r.realFolder(request);
  
Psd  p =new Psd();
List<PsdVo> li=p.select();

%>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<div align="center">
<table border=1  width=500 >
<tr><td>번호 </td><td>이름</td><td>사진</td><td>날짜</td></tr>
<% 
for(int i=0 ; i < li.size()  ; i++) {
	PsdVo m=li.get(i);
	
	int idx = m.getIdx();
	String name= m.getName();
	String filename= m.getFilename();
	Timestamp reg_date = m.getReg_date();

  %>
  <tr>
    <td><%=idx %> </td>
    <td><%=name %> </td>
    <td><img src='<%=str+"/"+filename %>' width=50  height=50 > </td>
    <td><a href=delete.jsp?idx=<%=idx %>><%=reg_date %></a> </td>
  </tr>
  
 <% 
}

%>
</table>
</div>
</body>
</html>