<%@page import="java.sql.Timestamp"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.List" %>
<%@ page import="border.*" %>

<% 
 request.setCharacterEncoding("UTF-8"); //form 에서 파라미터값을 넘길때 사용 하는거 

 String start = request.getParameter("start"); // 파리미터값은 문자로 넘어 오는가?  //22 스타트 값을 받아주고 
 //System.out.println(start);  1
 int startIdx;
 
 
 //2
 if (start == null){  //33 값을 조건 처리 한다. 
	 startIdx = 0;
	 
 }else{
	 startIdx =Integer.parseInt(request.getParameter("start")) ;
 }
		 
 
 BorderVo v = new BorderVo();
 v.setStart(startIdx); //44 int startIdx; 의 값이 들어간다. 
 
  SelectPageI s = new SelectPage();
  List<BorderVo> li = s.select(v);  // 55 스타트idx에서 들어간 v 값을 리스트에 넣어준다. 
  
  int tc = s.countAll();
  int totalPage = (int)Math.round(tc/10.0); 
  int nowPage = (startIdx / 10)+1;
  
  
  

%>
<%@ include file = "Top.jsp"%>
<section><br>
		<div align="center">
			<h2> 리스트 목록 </h2>
				<table border = 1 >
					전체레코드 수: <%=tc %> &emsp; 전체페이지 수 : <%=totalPage %> &emsp; 현재페이지 : <%=nowPage%>
					<tr><td>번호</td><td>제목</td><td>이름</td><td>날짜</td></tr>
					<%
					int idx = 0;
					String title = null;
					String name = null;
					Timestamp reg_date = null;
					
				
					
					for (int i=0; i < li.size(); i++) {
						BorderVo m = li.get(i);
							
						idx = m.getIdx();
						title = m.getTitle();
						name = m.getName();
						reg_date = m.getReg_date();
					%>
						 <tr>
						    <td><%=idx %> </td>
						    <td><%=title %> </td>
						    <td><%=name %> </td>
						    <td><%=reg_date %> </td>
						 </tr>
				    <%}%> 
				</table>
				<% if(startIdx < 10) { %>
				이전 &emsp;
				
				<% }else{ %>
				<a href=List2.jsp?start=<%=startIdx-10 %>>이전</a>&emsp; 
				
				<% } %>
				
				<%if (nowPage < totalPage){ %>
				<a href=List2.jsp?start=<%=startIdx+10 %>>다음</a> <!--11 값이 넘어가면 -->
				<% }else{ %>
				다음
				<%}%>
		</div>	
</section>
<%@ include file = "Buttom.jsp"%>
