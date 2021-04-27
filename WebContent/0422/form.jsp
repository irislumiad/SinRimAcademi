<!-- 1 -->
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<div align="center">
<br><br><br>
<h2> 회원 사진 저장 </h2>
<table width=400  border=1>   <!-- 밑에꺼 이거 써야 바이너리 값을 넘긴다. -->
<form method=post enctype="multipart/form-data"   action="form_ok.jsp">
<tr height=40><td>이름</td><td>  <input type=text  name=name></td></tr>
<tr height=40><td>사진 </td><td> <input type=file  name=file> </td></tr>
<tr height=40><td colspan=2 align="center"><input type=submit value="자료전송" > </td></tr>
</form>
</table>
</div>
</body>
</html>


