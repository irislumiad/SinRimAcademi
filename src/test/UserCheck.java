package test;

import java.sql.*;

public class UserCheck {
  public int userCheck(String id, String passwd) {
	  
	    Connection conn = null;
	    PreparedStatement	pstmt =null;
	    String sql ="";
	    ResultSet rs =null;
	    String dbpasswd = "";
	    int x = -1;
	    
		try {
			LogonDBBean	db=LogonDBBean.getInstance();
			conn=db.getConnection();
			sql = "select  *  from member where id= ? ";
			pstmt=conn.prepareStatement(sql);
			pstmt.setString(1, id);
			rs=pstmt.executeQuery();
			if(rs.next()) {
				dbpasswd=rs.getString("passwd");
				if (dbpasswd.equals(passwd)) {
					x =1 ;
				}else {
					x= 0 ;
				}
			}else {
				x= -1 ;
			}
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}finally {
			if(rs != null) {
				try {
					rs.close();
				} catch (SQLException e) {
					e.printStackTrace();
				}
			}
			if(pstmt != null) {
				try {
					pstmt.close();
				} catch (SQLException e) {
					e.printStackTrace();
				}
			}
			if(conn != null) {
				try {
					conn.close();
				} catch (SQLException e) {
					e.printStackTrace();
				}
			}
		}  	  
	  
	return x;	  
  }
}
