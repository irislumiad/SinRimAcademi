<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@ page import="java.sql.*" %>   

<%
  String id=request.getParameter("id");

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
	  sql ="select  *  from  member where id=? ";  // 3) 쿼리문 작성
	  pstmt=conn.prepareStatement(sql);  // 4) PreparedStatement 객체생성
	  pstmt.setString(1, id);
	  rs=pstmt.executeQuery();  // 5) 쿼리문 실행  ( 결과값 리턴  )

	    rs.next();
		id = rs.getString("id");
		String passwd = rs.getString("passwd");
		String name = rs.getString("name");
		Timestamp register= rs.getTimestamp("reg_date");
	 
%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<div  align="center" >
<br><br><br>
<h2> 테이블 레코드 내용보기 </h2>
<form  action=edit_ok.jsp  method=get>
<table border=1>

	<tr><td>아이디 </td> <td> <input  type=text  name=id  value=<%=id %>> </td> </tr>
	<tr><td>패스워드 </td> <td> <input  type=text  name=passwd   value=<%=passwd %>>  </td> </tr>
	<tr><td>이름 </td> <td><input  type=text  name=name   value=<%=name %>></td>  </tr>
	<tr><td>날짜 </td> <td><%=register %></td>  </tr>
	<tr><td colspan=2  align="center"><input  type=submit  value="수정하기" > </td>  </tr>
</table>
</form>
</div>
</body>
</html>

<% 
} catch (Exception e) {
	  e.printStackTrace();
  } finally {
	  rs.close();
	  pstmt.close();
	  conn.close();
  }
%>
​
