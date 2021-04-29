<%@ taglib uri ="http://java.sun.com/jstl/core_rt" prefix ="c" %> <!-- for문이나 반복문 등을 바꾼다 -->
<%@page import="border.vo.BorderVo"%>
<%@page import="border.dao.SelectI"%>
<%@page import="border.dao.Select"%>
<%@page import="java.sql.Timestamp"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.List" %>
<%@ page import="border.*" %>


<% 
// request.setCharacterEncoding("UTF-8"); form 에서 파라미터값을 넘길때 사용 하는거 

 SelectI s = new Select();
 List<BorderVo> li = s.select();
%>
<%@ include file = "Top.jsp"%>
<section><br>
		<div align="center">
			<h2> 리스트 목록 </h2>
				<table border = 1 >
					<tr><td>번호</td><td>제목</td><td>이름</td><td>날짜</td></tr>
					<%
					int idx = 0;
					String title = null;
					String name = null;
					Timestamp reg_date = null;
					
					for (int i=0; i < li.size(); i++) {
						BorderVo m = li.get(i);
							
						idx = m.getIdx();
						title = m.getTitle();
						name = m.getName();
						reg_date = m.getReg_date();
					%>
						 <tr>
						    <td><%=idx %> </td>
						    <td><%=title %> </td>
						    <td><%=name %> </td>
						    <td><%=reg_date %> </td>
						 </tr>
				    <%}%> 
				</table>
			
		</div>	
</section>
<%@ include file = "Buttom.jsp"%>