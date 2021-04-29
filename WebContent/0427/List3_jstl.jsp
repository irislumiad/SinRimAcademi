lib uri ="http://java.sun.com/jstl/core_rt" prefix ="c" %> List3.jsp
<%@page import="border.dao.SelectPageCh"%>
<%@page import="border.dao.SelectPageChI"%>
<%@page import="border.vo.BorderVo"%>
<%@page import="java.sql.Timestamp"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.List" %>
<%@ page import="border.*" %>

<% 


%>

<%@ include file = "Top.jsp"%>
<section><br>
		<div align="center">
			<h2> 리스트 목록 </h2>
				<table border = 1 >
					전체레코드 수: <%=tc %> &emsp; 전체페이지 수 : <%=totalPage %> &emsp; 현재페이지 : <%=nowPage%>
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
				
				
				<% 
				String ch2K="";
				if (  ch2 == null ) {
					 ch2K = ch2;
				} else {
					 ch2K = java.net.URLEncoder.encode(ch2, "utf-8");	
				} 
				
				
				
				if(startIdx < 10) { %>
				이전 &emsp;
				
				<% }else{ %>
				<a href=List3.jsp?start=<%=startIdx-10 %>&ch1=<%=ch1 %>&ch2=<%=ch2K %>>이전</a> &emsp;
				
				<% } %>
				
				<%if (nowPage < totalPage){ %>
				<a href=List3.jsp?start=<%=startIdx+10 %>&ch1=<%=ch1 %>&ch2=<%=ch2K %>>다음</a><!--11 값이 넘어가면 -->
				<% }else{ %>
				다음
				<%}%>
				
				
			<div align="center">
				<form action="List3.jsp">
					<select name = ch1>
						<option value="title"> 제목 </option>
						<option value="name">이름</option>
					</select>
						<input type="text" name=ch2>
						<input type="submit" value="검색하기"> 
				</form>
			</div>
		</div>	
</section>



<%@ include file = "Buttom.jsp"%>