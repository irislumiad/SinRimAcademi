<%@page import="java.net.URLEncoder"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>   

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<div align="center">
<%


	String ch1 = request.getParameter("ch1");
	String ch2 = request.getParameter("ch2");
	
	
	out.print("ch1:" + ch1);
	

	Connection conn=null;
	String sql="";
	PreparedStatement pstmt =null;
	ResultSet rs = null;
  
  
  try{
	  String url="jdbc:mysql://localhost:3306/basicjsp";
	  String user="jspid";
	  String password="jsppass";
	  
	  Class.forName("com.mysql.jdbc.Driver");  // 1) 드라이버 로드 
	  conn=DriverManager.getConnection(url, user, password); // 2)  컨넥션
	  


	  if (ch2 == null || ch2 =="") {
		  sql ="select * from  member ";  // 3) 쿼리문 작성
		  pstmt=conn.prepareStatement(sql);  // 4) PreparedStatement객체생성
		  rs=pstmt.executeQuery();  // 5) 쿼리문 실행  ( 결과값 리턴  )


	  } else if (ch1.equals("id")) {
		  sql ="select * reg_date from  member where id like  '%"+ch2+"%'";  // 3) 쿼리문 작성
		  pstmt=conn.prepareStatement(sql);  // 4) PreparedStatement 객체생성
		  rs=pstmt.executeQuery();  // 5) 쿼리문 실행  ( 결과값 리턴  )	  
	  
	  
	  } else if (ch1.equals("passwd")) {
			  sql ="select * from  member where passwd like  '%"+ch2+"%'";  // 3) 쿼리문 작성
			  pstmt=conn.prepareStatement(sql);  // 4) PreparedStatement 객체생성
			  rs=pstmt.executeQuery();  // 5) 쿼리문 실행  ( 결과값 리턴  )	  
		  }
	  
	  
	  
	  
	  
	 %>
	 <table border=1  widtn=400> 
	 <tr><TD>아이디 </TD><TD> 패스워드 </TD><TD> 이름</TD><TD>  날짜  </TD> </tr>
	 <% 
	  while(rs.next()){    // 6) ResultSet 결과값 사용하기 
		String id = rs.getString("id");
		String passwd = rs.getString("passwd");
		String name = rs.getString("name");
		Timestamp register= rs.getTimestamp("reg_date");
	%>
	 <tr>
	     <TD><%=id %>     </TD>
	     <TD><%=passwd%> </TD>
	     
	     <%
	     String namek = java.net.URLEncoder.encode(name, "utf-8");
	     %>
	     
	     <TD><a href="delete2.jsp?name=<%=namek%>"><%=name%></a>     </TD>
	     <TD><%=register.toString().substring(0,10) %></TD>
	 </tr>
	<%	
	  }
	 %>
	 </table>
	 <% 
  } catch (Exception e) {
	  e.printStackTrace();
  } finally {
	  rs.close();
	  pstmt.close();
	  conn.close();
  }
%>

	<form>
		<select name=ch1>
			<option value="">====</option>
			<option value=id>아이디</option>
			<option value=passwd>암호</option>
		</select>
		
		<input type=text name=ch2>
		<input type=submit value=검색하기>
	</form>
	
</div>
</body>
</html>
