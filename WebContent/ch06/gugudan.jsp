<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE>
<html>
<head>
<meta charset=UTF-8>
<title>Insert title here</title>
</head>
<body>
<table border = 1>
<%

	for(int x = 2; x < 10; x++ ){
		out.print("<tr>" );
		for(int y = 1; y < 10; y++){
			out.print("<td>" + x +"*" +  y + "=" + ( x * y )+ "</td>");
			out.print(" ");
		}
		out.print("</tr>");
	}
%>

</table>

</body>
</html>