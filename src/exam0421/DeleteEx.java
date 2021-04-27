package exam0421;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import exam0421.DBBean;

public class DeleteEx {
	public void delete (examtblVo vo){
		DBBean db = DBBean.getInstance();
		Connection conn = null;
		PreparedStatement pstmt = null;
		String sql ="";
		
		
		try {
			conn = db.getConnection();
			sql = "delete  from  examtbl where sNo=?";
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, vo.getsNo());
			pstmt.executeUpdate();
			
			
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			try {
				conn.close();
				pstmt.close();
			} catch (SQLException e) {
				e.printStackTrace();
			}
			
		}
		
		
	
}
	
}
