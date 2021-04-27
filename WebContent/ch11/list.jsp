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
  String sql_tc ="";
  PreparedStatement pstmt =null;
  ResultSet rs = null;
  
  PreparedStatement pstmt_tc =null;
  ResultSet rs_tc = null;
  
  try{
	  String url="jdbc:mysql://localhost:3306/basicjsp";
	  String user="jspid";
	  String password="jsppass";
	  Class.forName("com.mysql.jdbc.Driver");  // 1) 드라이버 로드 
	  conn=DriverManager.getConnection(url, user, password); // 2)  컨넥션

	  int count =0;
	  
	  
      if (ch1 == null) { 
    	  sql ="select  *  from  member ";  // 3) 쿼리문 작성
    	  pstmt=conn.prepareStatement(sql);  // 4) PreparedStatem
    	  rs=pstmt.executeQuery();


    	  //sql_tc ="select  count(*) as tc  from  member ";  // 3) 쿼리문 작성
    	  //pstmt_tc=conn.prepareStatement(sql_tc);  // 4) PreparedStatement 객체생성
    	  
    	  //rs_tc=pstmt_tc.executeQuery(); 
    	  //rs_tc.next(); // 커서 이동 하기 
    	  //count=rs_tc.getInt("tc");
    	  
      } else if (ch1.equals("id")) {
          //  like 처리 방법 1 . 
    	  sql ="select  *  from  member where id like ? ";
          pstmt=conn.prepareStatement(sql);  // 4) PreparedStatement 객체생성
          pstmt.setString(1, "%"+ch2+"%");
     	  rs=pstmt.executeQuery();

         // sql_tc ="select  count(*) as tc  from  member where id like ? ";  // 3) 쿼리문 작성
    	  //pstmt_tc=conn.prepareStatement(sql_tc);  // 4) PreparedStatement 객체생성
          //pstmt_tc.setString(1, "%"+ch2+"%");
          //rs_tc=pstmt_tc.executeQuery();  
    	  //rs_tc.next(); // 커서 이동 하기 
    	  //count=rs_tc.getInt("tc");
          
      } else if (ch1.equals("passwd")) {
          //  like 처리 방법 2 . 
      	  sql ="select  *  from  member where passwd like '%"+ch2+"%'  ";  // 3) 쿼리문 작성
          pstmt=conn.prepareStatement(sql);  // 4) PreparedStatement 객체생성
       	  rs=pstmt.executeQuery();
     	  
         // sql_tc ="select  count(*) as tc  from  member where passwd like '%"+ch2+"%' ";  // 3) 쿼리문 작성
    	  //pstmt_tc=conn.prepareStatement(sql_tc);  // 4) PreparedStatement 객체생성
 	  
    	  //rs_tc=pstmt_tc.executeQuery(); 
    	  //rs_tc.next(); // 커서 이동 하기 
    	  //count=rs_tc.getInt("tc");
      }

	 %>
	 학생수 :<%=count %>   명 
	 <table border=1  widtn=400> 
	 <tr><TD>번호 </TD><TD>아이디 </TD><TD> 패스워드 </TD><TD> 이름</TD><TD>  날짜  </TD> </tr>
	 <% 
	  while(rs.next()){    // 6) ResultSet 결과값 사용하기 
		int idx=rs.getRow();
		String id = rs.getString("id");
		String passwd = rs.getString("passwd");
		String name = rs.getString("name");
		Timestamp register= rs.getTimestamp("reg_date");
	%>
	 <tr><TD><%=idx %> </TD>
	     <TD><a href=delete.jsp?id=<%=id %>><%=id %></a>     </TD>
	     <TD><%=passwd %> </TD>
	     <TD><a href=edit.jsp?id=<%=id %>><%=name %> </a>  </TD>
	     <TD><%=register.toString() %></TD>
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
		  <option  value=id>아이디</option>
		  <option  value=passwd>암호</option>	
		</select> 
		<input  type=text  name=ch2>
		<input  type=submit  value="검색하기">  (<a href=form.jsp> 저장하기 </a>)
	</form>
	
</div>
</body>
</html>
​
