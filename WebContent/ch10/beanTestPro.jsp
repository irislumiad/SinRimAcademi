<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<% request.setCharacterEncoding("UTF-8"); %>

<jsp:useBean id="testBean" class="ch10.TestBean"/>
 
	<jsp:setProperty name="testBean" property="name" />

    
<!DOCTYPE>
<html>
<head>
<meta charset=UTF-8>
입력된 값은 : 
<jsp:getProperty name="testBean" property="name" />

입니다.!!
</head>
<body>

</body>
</html>


