<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
       
<%@ include file = "Top.jsp"%>
    
<section>
<br>

<script>
	function chk() {
		if (f1.sNo.value=="" || f1.sNo.value.length!=5){
			alert("학번을 5자리로 입력하거라!")
			f1.sNo.value=""
			f1.sNo.focus();
			return false;
		}
		
		if (f1.sName.value==""){
			alert("이름을 입력하거라!")
			f1.sName.focus();
			return false;
		}
		
		if (f1.kor.value =="" ||f1.eng.value ==""||f1.math.value =="" ||f1.his.value ==""){
			alert("성적 공백을 입력하거라 성적을!")
			f1.kor.focus();
			return false;
		}
		
		if (f1.kor.value < 0 ||f1.eng.value < 0 ||f1.math.value < 0 ||f1.his.value < 0 ){
			alert("점수 입력해라")
			f1.sNo.focus();
			f1.kor.focus();
			return false;
		}
		alert("성적 입력 완료! ")
	}

</script>


<div align="center">
	<font size=5><b> 학생 성적 입력</b></font>
		<form name=f1 action="form_ok.jsp" onSubmit="return chk()">
			<table width=300 border=1>
				<tr><td align="center"><b>학번</b></td> <td><input type=text name=sNo></td></tr>
				<tr><td align="center"><b>성명</b></td> <td><input type=text name=sName></td></tr>
				<tr><td align="center"><b>국어</b></td> <td><input type=text name=kor></td></tr>
				<tr><td align="center"><b>영어</b></td> <td><input type=text name=eng></td></tr>
				<tr><td align="center"><b>수학</b></td> <td><input type=text name=math></td></tr>
				<tr><td align="center"><b>역사</b></td> <td><input type=text name=hist></td></tr>
				<tr><td colspan=2 align="center"><input type ="submit" value="성적저장"></td></tr>
			</table>
		</form>
</div>
</section>

<%@ include file = "Buttom.jsp"%>