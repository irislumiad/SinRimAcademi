<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
    
<%@ include file = "Top.jsp"%>
    
<section>
<div align="center">
	<br><br><br>
	
<h1> 인물 등록 화면 </h1>

<form method=post enctype="multipart/form-data"   action="form_ok.jsp">

<table border=1 id="table1w">   <!-- 밑에꺼 이거 써야 바이너리 값을 넘긴다. -->
	<tr><td id="table1tdw">성명</td><td>  &emsp;<input type=text  name=name size=35></td></tr>
	<tr><td	id="table1tdw">인물나이</td><td>  &emsp;<input type=text  name=price></td></tr>
	<tr><td id="table1tdw">명언</td><td>  &emsp;<textarea cols=40 rows=5  name=etc></textarea></td></tr>
	<tr><td id="table1tdw">사진 </td><td> &emsp;<input type=file  name=filename> </td></tr>
	
	<tr height=40><td colspan=2 align="center"><input type=submit value="자료전송" > </td></tr>
</table>
</form>

</div>
</section>

<%@ include file = "Buttom.jsp"%>

