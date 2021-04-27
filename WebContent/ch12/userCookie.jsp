<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE>
<html>
<head>
<meta charset=UTF-8>
<title>Insert title here</title>
</head>
<body>

<%
Cookie[] cookies = request.getCookies();

if(cookies!=null){
	for(int i = 0; i < cookies.length; ++i){
		if(cookies[i].getName().equals("id")){

		out.print ("쿠키의 이름은 :"+ cookies[i].getName() + "<br>");
		out.print ("쿠키의 값은 :" + cookies[i].getValue());
  }
 }
}

%>

</body>
</html>