<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
     
   
<!DOCTYPE>
<html>
<head>
<meta charset=UTF-8>
<title>Insert title here</title>
</head>
<body>
<br><br><br>
<div align="center">
<a href="<%=request.getContextPath() %>/TestControll?flog=A1">1번 서비스 서블릿 이동</a>
<br><br><br>
<a href="<%=request.getContextPath() %>/TestControll?flog=A2">2번 서비스 서블릿 이동</a>


<br><br><br>

<c:if test="${str != null }">
<!--  null 값 들어와버리네  -->
실행 서비스 : ${str} 

</c:if>


</div>

</body>
</html>