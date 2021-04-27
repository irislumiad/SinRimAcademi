<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title> 인물사전 </title>
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
 height:40px;
 font-size:14px; color:#ffffff;
 line-height:40px;
 }
section{
 background-color:#cccccc;
 height:400px;
 font-size:14px;
 min-height : 600px;
 }
footer{
 background-color:blue;
 text-align:center;
 height:45px;
 font-size:14px; color:#ffffff;
 line-height:45px;
 }
 
 #table1w{
  width:500px;
  height: 300px;
 }
 
 #table1tdw{
 width:100px;
 text-align: center;
 }
 
</style>
</head>
<body>
<header><h2 >게시판 페이지 나누기 연습  </h2></header>
<nav>

&emsp;&emsp;<a href=insert.jsp>레코드 등록</a>
&emsp;&emsp;<a href=List.jsp>게시판 조회</a>
&emsp;&emsp;<a href=List2.jsp>목록 이전 다음</a>
&emsp;&emsp;<a href=List3.jsp>목록 이전 다음 + 검색</a>
&emsp;&emsp;<a href=index.jsp>Home</a>
 
</nav>
