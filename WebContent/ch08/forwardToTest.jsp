<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE>

<% request.setCharacterEncoding("utf-8"); %>

	포위당하는 페이지 forwardTest.jsp로 절대 표시되지 않습니다. <br>

<jsp:forward page="forwardToTest.jsp">
	

</jsp:forward>


	forwardTest.jsp 페이지의 나머지 부분으로 표시도 실행도 되지 않습니다.  