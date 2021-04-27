package test;

import java.sql.*;

public class EditMember {
	
	public LogonDataBean Editmember(String k){
		LogonDBBean db = LogonDBBean.getInstance();
		Connection conn = null;
		PreparedStatement pstmt = null;
		String sql = "";
		ResultSet rs = null;
		LogonDataBean m = null;
		
		
		
		try {
		conn = db.getConnection();
		sql = "select * from member where id =?";
		pstmt=conn.prepareStatement(sql);
		pstmt.setString(1, k);
		rs=pstmt.executeQuery();
		rs.next();
		
		m = new LogonDataBean();
		
		m.setId(rs.getString("id"));
		m.setPasswd(rs.getString("passwd"));
		m.setName(rs.getString("name"));
		m.setReg_date(rs.getTimestamp("reg_date"));
		
		
		}catch(Exception e) {
			e.printStackTrace();
		} finally {
			
			try {
				rs.close();
				pstmt.close();
				conn.close();
			} catch (SQLException e) {
				e.printStackTrace();
			}
			
			
		}
		
		return m;
		
	}
		
}
