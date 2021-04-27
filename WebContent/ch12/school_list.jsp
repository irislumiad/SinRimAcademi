<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
    
<%@ page import="school.*" %>
<%@ page import="java.util.List" %>

<%
    // 자바 빈 안쓰고 겟 파라미더로 값 받아오는 방법
	String ch1 = request.getParameter("ch1");
	String ch2 = request.getParameter("ch2");
     


	School school = new School();                        //11
	List<SchoolVo> li = school.list(ch1,ch2);
	System.out.println(li);
	
	
	int count = school.count();
	
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
<h2>학생 성적 목록 보기 (학생수 : <%=count %>) </h2> 

<table border =1 width=400>
<tr><td>번호<td>이름<td>국어<td>영어</tr>
<%
	
	for (int i = 0; i < li.size(); i++){                //33
		SchoolVo m = li.get(i);                          //22
		int id = m.getId();
		String name = m.getName();
		int kor = m.getKor();
		int eng = m.getEng();
				
		%>
		
		<tr><td><%=id %><td><a href=school_edit.jsp?id=<%=id%>><%=name %></a><td><%=kor %><td><%=eng %></tr>
		
<%
	}
%>


</table>

<form>
	<select name = ch1>
		<option value = id>번호</option>
		<option value = name>이름</option>
	</select>
		<input type="text" name = ch2>
		<input type="submit" value =" 검색하기 ">

</form>


</div>
</body>
</html>