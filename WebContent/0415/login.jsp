<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%> 
<%@ include file = "Top.jsp"%>
<%@ include file="dbconn.jsp" %>


<section>
	
	<script>
		function insertMember(){
			location.href="insertMemberForm.jsp"
		}
	</script>
	
	<div align="center">
		<form action="sessionPro.jsp">
		
		<table border=1 witdh = 250>
			<tr><td align=center>아이디</td><td> <input type = text name= id></td></tr> </br>
			<tr><td align=center>암호  <td><input type = text name= passwd></tr> </br>
		</table>
			<tr><input type = submit value="로그인"> &emsp;&emsp;<input type = button value="회원가입" onClick="insertMember()"> </tr> <br>
		</form>
	</div>
	
</section>
    

<%@ include file = "Buttom.jsp"%>