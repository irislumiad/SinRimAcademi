<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@ page import="school.*" %>
<%@ page import="java.util.List" %>

<%
  School  school =new School();
  List<SchoolVo> li=school.list();
  
   int tc=school.count();
%>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<div align="center" >
<br><br> 
<h2> 학생 성적 목록 보기 (학생수:<%=tc %>  명)</h2>
<table  border=1  width=500>
<tr><td>번호</td><td>이름</td><td>국어</td><td>영어</td></tr>
<%
  for (int i=0; i < li.size(); i++) {
	  SchoolVo  m =li.get(i);
	  int idx = m.getIdx();
	  String name = m.getName();
	  int kor =m.getKor();
	  int eng =m.getEng();
%>	  
	  <tr><td><%=idx %></td><td><a href=school_edit.jsp?idx=<%=idx%>><%=name %></a></td>
	  <td><%=kor %></td><td><%=eng %></td></tr>  
<% 
  }
%>
</table>
</div>
</body>
</html>