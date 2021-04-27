package exam0421;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

public class UpdateEx {
	public void update(examtblVo vo) {
		DBBean db = DBBean.getInstance();   
		Connection conn = null;
		PreparedStatement pstmt = null;
		String sql = "";
		
		
		try {
			conn = db.getConnection();  // 커낵션 정보가 들어가 있다.  
			sql = "update examtbl set sName=?,kor=?,eng=?,math=?,hist=? where sNo=?";
			pstmt = conn.prepareStatement(sql); // prepareStatement = sql 소환구문 
			
			
			
			pstmt.setString(1, vo.getsName());
			pstmt.setInt(2, vo.getKor());
			pstmt.setInt(3, vo.getEng());
			pstmt.setInt(4, vo.getMath());
			pstmt.setInt(5, vo.getHist());
			pstmt.setString(6, vo.getsNo()); // 값을 집어 넣어 줘야 하니까 
			
			pstmt.executeUpdate();
			
			
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
		
		
	}
	
	
}
