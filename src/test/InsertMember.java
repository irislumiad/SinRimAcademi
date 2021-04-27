package test;

import java.sql.*;

public class InsertMember {
	public  void  insertMember(LogonDataBean member) {
		PreparedStatement pstmt =null;
		String sql ="";
		Connection	conn =null;
		try {
			LogonDBBean	db=LogonDBBean.getInstance();
			conn=db.getConnection();
			sql ="insert into member values(?,?,?,?)" ;
			pstmt=conn.prepareStatement(sql);
			pstmt.setString(1, member.getId());
			pstmt.setString(2, member.getPasswd());
			pstmt.setString(3, member.getName());
			pstmt.setTimestamp(4, member.getReg_date());
			pstmt.executeUpdate();
			
			
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
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
	}
}
