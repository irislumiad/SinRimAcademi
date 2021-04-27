<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
    
<%@ page import="school.*" %>
<%@ page import="java.util.List" %>


<jsp:useBean id="s" class="school.SchoolVo"/>  <!--  getter setter 역활을 한다. -->
	<jsp:setProperty name="s" property="*" />

<%
	School school = new School();
	SchoolVo m = school.edit(s.getId());

%>    
    
    
<!DOCTYPE>
<html>
<head>
<meta charset=UTF-8>
<title>Insert title here</title>
</head>
<body>


<div align = "center">
<br><br>
<h2>학생 성적 목록 보기</h2> 

<table border =1 width=400>
<tr><td>번호<td>이름<td>국어<td>영어</tr>
<%
		int id = m.getId();
		String name = m.getName();
		int kor = m.getKor();
		int eng = m.getEng();
				
		%>
		<form action="school_edit_ok.jsp">
		<tr>
		<td><input type = hidden name = id value="<%=id %>"><%=id %></td>
		<td><input type = text name = id value="<%=name %>"></td>
		<td><input type = text name = id value="<%=kor %>"></td>
		<td><input type = text name = id value="<%=eng %>"></td>
		</tr>
	
		<tr align = "center"><td colspan="4"><input type = submit value="수정하기"></td></tr>
		

</form>
</table>
<a href = school_delete.jsp?id=<%=id%>>삭제</a>
</div>
</body>
</html>
