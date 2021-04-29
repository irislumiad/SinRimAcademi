<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %> 
    
<%@ include file = "Top.jsp"%>
 <!--  import url = "Top.jsp" -->   
<section>
<div align="center">
	<br><br><br>
	


<!--  <% String path = request.getContextPath(); %> -->
<h1> 인물 등록 화면 (<a href="<%=request.getContextPath()%>/SelectController">목록보기</a>) </h1>
<form method=post action="<%=path %>/InsertController">

<table border=1 id="table1w">   <!-- 밑에꺼 이거 써야 바이너리 값을 넘긴다. -->
	<tr><td id="table1tdw">성명</td><td>  &emsp;<input type=text  name=name size=35></td></tr>
	<tr><td	id="table1tdw">가격</td><td>  &emsp;<input type=text  name=price></td></tr>
	<tr><td id="table1tdw">기타</td><td>  &emsp;<textarea cols=40 rows=5  name=etc></textarea></td></tr>
	<tr><td id="table1tdw">상품수량 </td><td> &emsp;<input type=text  name=amount> </td></tr>
	<tr height=40><td colspan=2 align="center"><input type=submit value="자료전송" > </td></tr>
</table>
</form>

</div>
</section>

<%@ include file = "Buttom.jsp"%>