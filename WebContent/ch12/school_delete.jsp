<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
   
    
<%@ page import="school.*" %>
<%@ page import="java.util.List" %>


<jsp:useBean id="s" class="school.SchoolVo"/>
	<jsp:setProperty name="s" property="*" />

<%
	School school = new School();

	school.delete(s.getId());
	response.sendRedirect("school_list.jsp");
%>    
    
    
 