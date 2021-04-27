<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="exam0423.RealFolder"%>
<%@ page import="java.sql.*" %>
<%@ page import="java.util.List" %>
<%@ page import="exam0423.*" %>
<%@ include file = "Top.jsp"%>
<%
RealFolder r = new RealFolder();
String str = r.realFolder(request);
PsdDaoI p =new PsdDao();
List<PsdVo> li=p.select();
%>
<section>
	<div align="center">
		<h2>인물 목록 화면</h2>
		<table border=1  width=600 >
			<tr><td>번호 </td><td>인물명</td><td>인물나이</td><td>이미지</td><td>날짜</td></tr>
			<% 
			for(int i=0 ; i < li.size()  ; i++) {
				PsdVo m=li.get(i);
				
				int idx = m.getIdx();
				int price = m.getPrice();
				String name= m.getName();
				String filename= m.getFilename();
				Timestamp reg_date = m.getReg_date();
			 %>
			  <tr>
			    <td><%=idx %> </td>
			    <td><a href=edit.jsp?idx=<%=idx%>><%=name %></a> </td>
			    <td><%=price %> </td>
			    <td><img src='<%=str+"/"+filename %>' width=50  height=50 > </td>
			    <td><a href=delete.jsp?idx=<%=idx %>><%=reg_date %></a> </td>
			  </tr>
			<% 
			}
			%>
		</table>
	</div>
</section>

<%@ include file = "Buttom.jsp"%>
