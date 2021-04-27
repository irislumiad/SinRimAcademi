<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@ page import="java.sql.*"%>
<%@ page import="test.*"%>



<%
	request.setCharacterEncoding("utf-8");
%>
                           <!--  test 는 폴더 명 안에 logondataBean -->
<jsp:useBean id="member" class="test.LogonDataBean"/>
	<jsp:setProperty name="member" property="*" />
                         <!--  밑에 네임이 아이디를 받아옴  -->	 
<%
	//<id 의 멤버를 가져온다>
	member.setReg_date(new Timestamp(System.currentTimeMillis()));
	LogonDBBean logon = LogonDBBean.getInstance();
	InsertMember login = new InsertMember();
	login.insertMember(member);
%>

<jsp:getProperty name = "member" property="id" /> 님 회원가입을 축하합니다.