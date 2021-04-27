<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>

	<form method="post" action="form2_ok.jsp"> 
	이름 : <input type=text name =name> <br>
	
	전화번호 : 
		<select name="local">	
			<option value ="서울">서울</option>
			<option value ="가평">가평</option>
			<option value ="강원">강원</option>
		</select>
		
		<input type = "text" name="tel">
		<input type = "submit" value="입력완료">;
		
	</form>

</body>
</html>