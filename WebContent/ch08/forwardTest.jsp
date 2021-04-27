<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

 
<%
	String id = request.getParameter("id");
	String pwd = request.getParameter("pwd");
	out.print("아이디: " + id + "<br>");
	out.print("패스워드: " + pwd + "<br>");
	
%>

