<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@ include file="top.jsp" %>    
<section>
<br>
<div align="center">
   <br> <br>
   <font size=5><b> 관리자 로그인  </b></font>
   <br><br>
   <script>
  function insertMember(){
	  location.href="insertMemberForm.jsp";
  }
</script>

<form action=sessionPro.jsp>
<table border=1 width=300  height=200>
<tr><td align=center>아이디</td><td>&emsp;<input  type=text  name=id ></td></tr>
<tr><td align=center>암 &emsp;호</td><td>&emsp;<input  type=text  name=passwd > </td></tr>
<tr><td colspan=2  align=center><input  type=submit  value="로그인" >  &emsp;&emsp; 
<input  type=button  value="회원가입" onClick="insertMember()" > </td></tr>
</table>
</form>

</div>


</section>
<%@ include file="bottom.jsp" %>   
