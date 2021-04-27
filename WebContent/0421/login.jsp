<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@ include file="top.jsp" %>   
 
 <%
 String sno=(String)session.getAttribute("sno");
 %>
 
<section>
<br>

<div align="center"> 
   <br>
   <font size=5><b> 학생 레코드 삭제 </b></font> <br><br>
    <form name=f1 action=login_ok.jsp   >
   <table width=350 height=270  border=1 >
     
      <tr><td align="center">학번</td> <td  align="center"><input  type=text  name=sno  value=<%=sno %> ></td></tr> 
      <tr><td align="center">아이디</td> <td  align="center"><input  type=text  name=id  ></td></tr> 
      <tr><td align="center">암  호</td> <td  align="center"><input  type=text  name=pwd ></td></tr> 
        <tr> <td colspan=2 align="center" >
             <input  type=submit  value="학생삭제"> 
             <input  type=button  value="목록보기" onClick="location.href='list.jsp'">
             </td>
        </tr> 
    
   </table>
   </form>    
   
</div>
</section>
<%@ include file="bottom.jsp" %>   
