<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>쇼핑몰 회원관리 ver 1.0 </title>
	<style>
		header{
			 background-color:blue;
			 text-align:center;
			 height:60px;
			 font-size:18px; color:#ffffff;
			 line-height:60px;
			 vertical-align:middle;
			 }
		nav{
			 background-color:#6699ff;
			 height:30px;
			 font-size:12px; color:#ffffff;
			 line-height:30px;
			 }
		section{
			 background-color:#cccccc;
			 height:400px;
			 font-size:12px;
			 
			 }
		footer{
			 background-color:blue;
			 text-align:center;
			 height:45px;
			 font-size:12px; color:#ffffff;
			 line-height:45px;
			 }
	</style>
</head>
<body>
<header><h2>(과정평가형 정보처리기능사)성적조회 프로그램 ver 1.0 </h2></header>
<nav>
	&emsp;<a href=form.jsp>성적입력</a>
	&emsp;<a href=index.jsp>홈으로 </a>
	
	<%
	String id = (String) session.getAttribute("id");
	if (id != null) { %>
	&emsp;<a href=logout.jsp>로그아웃 (<%=id %>) </a>  
	&emsp;<a href=list.jsp>성적조회</a>
	&emsp;<a href=kingkor.jsp>국어성적 왕중왕 </a>

	
	<% }else{ %>
	&emsp;<a href=login.jsp>로그인 </a>
	
	<% } %>
	
	   
</nav>