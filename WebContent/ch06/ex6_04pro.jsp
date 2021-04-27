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
	String number1 = request.getParameter("number1");
	String number2 = request.getParameter("number2");
	int num1 = Integer.parseInt(number1);
	int num2 = Integer.parseInt(number2);
%>
	<h2>더하기</h2>
	<Table border =1>	
	 
	 <%
	 int xsum = 0;
	 for (int i = num1; i >= num2; i-- ){
		 out.print(i + "<br>");
		 xsum = xsum + i;
		 
		
		 }
	 out.print(xsum);
	 %>
	
	 </Table>
	
		
		
	
	
	
	

</body>
</html>