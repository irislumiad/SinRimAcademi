<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
    
        
<%@ page import="school.*" %>
<%@ page import="java.util.List" %>


<jsp:useBean id="s" class="school.SchoolVo"/>  <!--  getter setter 역활을 한다. -->
	<jsp:setProperty name="s" property="*" />
	
	
<% 

	School school = new School();
	school.edit_ok(s.getName(),s.getId(),s.getKor(),s.getEng());
	response.sendRedirect("school_list.jsp");
	
%>
    
    
    
<!DOCTYPE>
<html>
<head>
<meta charset=UTF-8>
<title>Insert title here</title>
</head>
<body>

</body>
</html>