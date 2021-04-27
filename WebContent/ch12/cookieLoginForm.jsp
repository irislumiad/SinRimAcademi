<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE>
<html>
<head>
<meta charset=UTF-8>
<title>Insert title here</title>
</head>
<body>

<script>
	function insertMember(){
		location.href="insertMemberForm.jsp"
	}
</script>
<form action="cookieLoginPro.jsp">
	
	아이디 <input type = text name= id> <br>
	암호 <input type = text name= passwd> <br>

	<input type = submit value="로그인"> 
	<input type = button value="회원가입" onClick="insertMember()"> <br>
	

</form>

</body>
</html>