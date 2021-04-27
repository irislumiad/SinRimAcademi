<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@ page import="exam0421.*" %>
<%@ page import="java.sql.*" %>    

<%
   request.setCharacterEncoding("UTF-8");
%>

<jsp:useBean id="loginVo" class="exam0421.LoginVo" ></jsp:useBean>
<jsp:setProperty property="*" name="loginVo"/>

<jsp:useBean id="examVo" class="exam0421.ExamVo" ></jsp:useBean>
<jsp:setProperty property="*" name="examVo"/>

<%
  ExamExI  s = new ExamEx();
  int k =s.login(loginVo);
  
  if (k == 1) {
	  s.delete(examVo);
	  response.sendRedirect("list.jsp");
  } else {
	  %>
	   <script>
	    alert(" 관리자 정보를 확인하세요 !!") ;
	    location.href="login.jsp";
	   </script>	   	   
	  <%
	 //  response.sendRedirect("login.jsp");	  
  }
 
%>