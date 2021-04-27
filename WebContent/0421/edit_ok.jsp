<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    

<%@ page import="exam0421.*" %>   
<%@ page import="java.sql.*" %>
 
 
 <%
 	request.setCharacterEncoding("UTF-8");
 %>
 
 <!-- jspusebean 으로 연결해준다. -->
<jsp:useBean id="examVo" class="exam0421.examtblVo"/>
<jsp:setProperty property="*" name="examVo"/>


<%
 UpdateEx s = new UpdateEx();
 s.update(examVo);
 response.sendRedirect("list.jsp");

%>
 