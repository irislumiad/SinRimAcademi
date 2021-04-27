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
  String str = "지역변수 입니다.";  
%>

<%! 
 String str = "전역변수 입니다.";
%>

<%!
	String getStr(){
	String k = "young";
	return k;
};
%>

<%
String str2 = "지역변수 입니다.";
%>


<%=str %> <!--  지역변수 str 이  실행된다 왜냐하면 파싱 했을때 전역변수보다 아래 있기 때문이다.
                차례 차례 순차적으로 실행 되기에 맨 위에 전역변수보다 아래쪽에 지역변수가 실행이 되어버림. -->
<%=str2 %>




</body>
</html>