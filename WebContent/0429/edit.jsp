<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %> 
    
<%@ include file = "Top.jsp"%>
 <!--  import url = "Top.jsp" -->   
 
 
<section>
<div align="center">
	<br><br><br>

<table border=1>	
	<tr height=40><td>번호<td>이름<td>가격<td>기타<td>수량</tr>
	<c:forEach items="${edit}" var="edit">
			<tr height=30><td>${edit.idx}</td>
			<td><a href="<%=request.getContextPath()%>/EditController">${edit.name}</a>
			<td>${edit.price}
			<td>${edit.etc}
			<td>${edit.amount}
		</tr>
 </c:forEach>
	
</table>

</div>
</section>

<%@ include file = "Buttom.jsp"%>