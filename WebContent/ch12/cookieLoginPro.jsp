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
	UserCheck login = new UserCheck();
	int check = login.userCheck(member.getId(), member.getPasswd());
		
	if (check == 1){
		
		Cookie cookie = new Cookie("id", member.getId());
		cookie.setMaxAge(60*2);
		response.addCookie(cookie);  //쿠키 추가하기 
		
		
		response.sendRedirect("cookieMain.jsp");
		
	}else if( check == 0){
		%>
		<script>
			alert("비밀번호가 일치 하지 않습니다.");
			history.go(-1); 
		</script>
		
		<%
	}else{
		
		%>
		<script>
			alert("아이디가 유효하지 않습니다.!!");
			history.go(-1);
		</script>
		
		<%
		
	}
%>

<jsp:getProperty name = "member" property="id" /> 님 회원가입을 축하합니다.