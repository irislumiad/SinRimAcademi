<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
    
<%@ include file = "Top.jsp"%>
<%@ include file="dbconn.jsp" %> <!--   // db 인크루드 -->






<section>
<br>
<div align="center">
	<font size=5><b> 성적 조회 목록</b></font>	
</div>


<%
	String ch1="";
	String ch2="";
	ch1 = request.getParameter("ch1");
	ch2 = request.getParameter("ch2");
	
	
	
	PreparedStatement pstmt = null;
	ResultSet rs = null;
	String sql="";
	
	
	if( ch2 == null || ch2 == "" ){
	sql = "select sNo, sName, kor, eng, math, hist from examtbl";
	pstmt = conn.prepareStatement(sql);
	rs=pstmt.executeQuery();
	
	} else if (ch1.equals("sNo")){
		sql = "select sNo, sName, kor, eng, math, hist from examtbl where sNo like '%"+ch2+"%'";
		pstmt = conn.prepareStatement(sql);
		rs=pstmt.executeQuery();
		
	} else if (ch1.equals("sName")){
		sql = "select sNo, sName, kor, eng, math, hist from examtbl where sName like '%"+ch2+"%'";
		pstmt = conn.prepareStatement(sql);
		rs=pstmt.executeQuery();
		
	}
		
			
%>


<table border=1 width=400 height=300 align="center">
	<tr>
		<th>학년<th>반<th>번호<th>이름<th>국어<th>영어<th>수학<th>역사 <th>총점 
		<th>평균<th>평점
	</tr>
<%

	int skor = 0;
	int seng = 0;
	int smath = 0;
	int shist = 0;
	int ssumTotal = 0;
	double savgTotal = 0;
	
	double akor = 0;
	double aeng = 0;
	double amath = 0;
	double ahist = 0;
	int asumTotal = 0;
	double aavgTotal = 0; 
	
	
	int count = 0;
	
		while(rs.next()){
			count ++;
			
			String sNo = rs.getString("sNo");
			
			String s1 = rs.getString("sNo").substring(0, 1);
			String s2 = rs.getString("sNo").substring(1, 3);
			String s3 = rs.getString("sNo").substring(3, 5);
			
			String sName = rs.getString("sName");
			int kor = rs.getInt("kor");
			int eng = rs.getInt("eng");
			int math = rs.getInt("math");
			int hist = rs.getInt("hist");
			
			skor = skor + kor;
			seng = skor + eng;
			smath = skor + math;
			shist = skor + hist;
			
			int sumTotal = kor + eng + math + hist;
			double avgTotal = sumTotal / 4.0 ; 
			
			ssumTotal = ssumTotal + sumTotal;
			savgTotal = Math.round((savgTotal + avgTotal)*100.0)/100.0;
			
			asumTotal = ssumTotal / count;
			aavgTotal = Math.round((savgTotal / count)*100.0)/100.0; 
			
			akor = Math.round((skor / count)*100.0)/100.0;
			aeng = Math.round((seng / count)*100.0)/100.0;
			amath = Math.round((smath / count)*100.0)/100.0;
			ahist = Math.round((shist / count)*100.0)/100.0;
			
			
			String ABCDEF ="";
			if (avgTotal >= 90){
				ABCDEF = "A";
			} else if(avgTotal >= 80) {
				ABCDEF = "B";
			} else {
				ABCDEF = "F";
			};
			
		
			
			
%>
	<tr>
	    <td><%=s1 %> <td><%=s2 %> <td><%=s3 %>  
		<td><a href="edit.jsp?sNo=<%=sNo%>"><%=sName %></a> <td><%=kor %> <td><%=eng %> 
	    <td><%=math %> <td><%=hist %>
	    <td><%=sumTotal %> <td><a href="delete.jsp?sNo=<%=sNo%>"><%=avgTotal %></a>
	    <td><%=ABCDEF%>
	</tr>	
<%
}
%>
	<tr>
	    <td>&nbsp;<td>&nbsp;<td>&nbsp;
	    <td>총점<td><%=skor%><td><%=seng%>
	    <td><%=smath%><td><%=shist%>
	    <td><%=ssumTotal%><td><%=savgTotal%>
	    <td>&nbsp;
	</tr>
	
	<tr>
	    <td>&nbsp;<td>&nbsp;<td>&nbsp;
	     <td>총평균<td><%=akor%><td><%=aeng%>
	    <td><%=amath%><td><%=ahist%>
	    <td><%=asumTotal%><td><%=aavgTotal%>
	    <td>&nbsp;
	</tr>
</table>


<div align ="center">
	<form>
		<select name =ch1>
			<option value ="">===</option>
			<option value ="sNo">번호</option>
			<option value ="sName">이름</option>
		</select>
	
		<input type=text name=ch2>
		<input type=submit value="Search">	
	</form>
</div>
</section>


<%@ include file = "Buttom.jsp"%>

