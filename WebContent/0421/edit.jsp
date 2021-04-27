<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
    
<%@ include file = "Top.jsp"%>

<%@ page import="exam0421.*" %>   
<%@ page import="java.sql.*" %>
<%@ page import="java.util.*" %>

<jsp:useBean id="examVo" class="exam0421.examtblVo"/>
<jsp:setProperty property="*" name="examVo"/>
 
 
 <%
 	request.setCharacterEncoding("UTF-8");
 
 
 	EditEx s = new EditEx();
 	examtblVo m = s.edit(examVo);
 	
 	
 	
 	String sno = m.getsNo();
 	String sname = m.getsName();
 	int kor = m.getKor();
 	int eng = m.getEng();
 	int math = m.getMath();
 	int hist = m.getHist();
 %>
 

<section>
<br>
<script>
 function  ch(){
	 if(f1.sNo.value=="" || f1.sNo.value.length!=5 ){ 
		 alert("학번을 정상적으로 입력하세요!!"); 
		 f1.sNo.value=""
		 f1.sNo.focus();
		 return false;
 	 }
	 if(f1.sName.value==""){ 
		 alert("이름을 입력하세요!!"); 
		 f1.sName.focus();
		 return false;
 	 }
	 if(f1.kor.value =="" || f1.eng.value =="" || f1.math.value =="" || f1.hist.value ==""){ 
		 alert("성적은 0점 이상을 입력하세요!!"); 
		 f1.kor.focus();
		 return false;
 	 }	 
	 if(f1.kor.value < 0 || f1.eng.value < 0 || f1.math.value < 0 || f1.hist.value < 0){ 
		 alert("성적은 0점 이상을 입력하세요!!"); 
		 f1.kor.focus();
		 return false;
 	 } 
	 alert("성적이 모두 정상적으로 입력되었습니다.!!"); 
 }
</script>



<div align="center">
	<font size=5><b> 학생 성적 입력</b></font>
		<form name=f1 action="edit_ok.jsp" onSubmit="return chk()">
			<table width=300 border=1>
				<tr><td align="center"><b>학번</b></td> <td><input type=text name=sNo value=<%=sno%>></td></tr>
				<tr><td align="center"><b>성명</b></td> <td><input type=text name=sName value=<%=sname%>></td></tr>
				<tr><td align="center"><b>국어</b></td> <td><input type=text name=kor value=<%=kor%>></td></tr>
				<tr><td align="center"><b>영어</b></td> <td><input type=text name=eng value=<%=eng%>></td></tr>
				<tr><td align="center"><b>수학</b></td> <td><input type=text name=math value=<%=math%>></td></tr>
				<tr><td align="center"><b>역사</b></td> <td><input type=text name=hist value=<%=hist%>></td></tr>
				<tr><td colspan=2 align="center"><input type ="submit" value="성적저장"></td></tr>
			</table>
		</form>
</div>
</section>

<%@ include file = "Buttom.jsp"%>