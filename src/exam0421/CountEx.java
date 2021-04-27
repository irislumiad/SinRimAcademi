package exam0421;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

public class CountEx {
	public int count() {
		DBBean db = DBBean.getInstance();   
		Connection conn = null;
		PreparedStatement pstmt = null;
		String sql = "";
		ResultSet rs = null;
		int tc = 0;
		
		try {
			conn = db.getConnection();  // 커낵션 정보가 들어가 있다.  
			sql = "Select count(*) as tc from examtbl";
			pstmt = conn.prepareStatement(sql); // prepareStatement = sql 소환구문
			rs = pstmt.executeQuery();
			rs.next();
			tc = rs.getInt(tc);
			System.out.println(tc);
			
			
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			
			try {
				pstmt.close();
				conn.close();
			} catch (SQLException e) {
				e.printStackTrace();
			}
			
		}
		return tc;
		
		
	}
	
	
}