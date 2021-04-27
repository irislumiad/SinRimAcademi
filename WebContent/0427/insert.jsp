
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="border.*"%>

<% 
	BorderVo v = new BorderVo();
	Insert i = new Insert();
	i.insert(v);
	response.sendRedirect("index.jsp");
%>    
 