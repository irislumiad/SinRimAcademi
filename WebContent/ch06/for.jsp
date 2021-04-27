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
int x = 2;
while (x < 10){	
	int y = 0;
	while(y <= 9){
		
	System.out.print(x * y);
	
	y++;
	}
	
	System.out.print(x * y+ " ");
	x++;
	
}


%>
	 

</body>
</html>