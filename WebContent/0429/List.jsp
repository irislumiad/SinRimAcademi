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
	<c:forEach items="${li}" var="board"> 
	
	<!-- li를 board 로 이름 설정해준것  -->
		<tr height=30><td><a href="<%=request.getContextPath()%>/EditController?idx=${board.idx}">${board.idx}</a></td>
			<td>${board.name}
			                                       <!--  idx 으로 값을 넘긴다. -->
			<td>${board.price}
			<td>${board.etc}
			<td>${board.amount}
		</tr>
	</c:forEach>
	
</table>

</div>
</section>

<%@ include file = "Buttom.jsp"%>