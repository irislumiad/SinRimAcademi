<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
    
<%@ include file = "Top.jsp"%>

<%@ page import="exam0421.*" %>   
<%@ page import="java.sql.*" %>
<%@ page import="java.util.*" %>

<jsp:useBean id="examVo" class="exam0421.examtblVo"/>
<jsp:setProperty property="*" name="examVo"/>


 <%
 	request.setCharacterEncoding("UTF-8");
 	SelectEx s = new SelectEx();
 	List<examtblVo> li = s.select(examVo);
 	
	CountEx c = new CountEx();
	int tc = c.count();
	
 	
 %>
 



<section>
<br>
	<div align="center">
		<font size=5><b> 성적 조회 목록</b></font>	<%=tc %>
	

<table border=1>
	<tr>
		<th>번호<th>이름<th>국어<th>영어<th>수학<th>역사
	</tr>
	
		
		 <% for( int i =0 ; i < li.size() ; i++ ) {
			  examtblVo  m=li.get(i); 
			%>
			
		<tr> 
			<td><a href = delete.jsp?sno=<%=m.getsNo()%>> <%=m.getsNo() %></a></td>
		    <td><a href = edit.jsp?sno=<%=m.getsNo()%>> <%=m.getsName() %></a> </td>
		    <td><%=m.getKor() %></td> 
		    <td><%=m.getEng() %>  </td>
		    <td><%=m.getMath() %>    </td>
		    <td><%=m.getHist() %>  </td>
		
		</tr>	
			
	<% }%>	
			
</table>
</div>
</section>

<%@ include file = "Buttom.jsp"%>