<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%request.setCharacterEncoding("utf-8"); %>
<!DOCTYPE>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>

<% 
String localNum="";
String name = request.getParameter("name");
String local = request.getParameter("local");
String tel = request.getParameter("tel");



/*
if (local.equals("서울")) {
	localNum = "02";
	
} else if(local.equals("가평")) {
	localNum = "031";
	
} else if(local.equals("강원")) {
	localNum = "033";
}
*/


switch(local){
	case "서울":
		localNum = "02";
		break;
		
	case "가평":
		localNum = "031";
		break;
		
	case "강원":
		localNum = "033";
		break;
		
	default:
		localNum = "없는 지역";
	
}

System.out.print("이름:" + name + "지역:" + local +"전화번호" + tel + "지역번호" + localNum);

%>



이름:<%=name %> <br>
지역:<%=local %> <br>
전화번호:<%=tel %> <br>
지역번호:<%=localNum %> <br>

</body>
</html>