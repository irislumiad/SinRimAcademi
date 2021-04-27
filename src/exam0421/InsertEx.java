package exam0421;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

public class InsertEx {
	public void insert(examtblVo vo){
	//              DBBean 클래스 // 메소드 ( 싱글톤패턴이라 class.getInstance();로 사용하는것이다. )
		DBBean db = DBBean.getInstance();   
		Connection conn = null;
		PreparedStatement pstmt = null;
		String sql = "";
		
		
		try {
			conn = db.getConnection();  // 커낵션 정보가 들어가 있다.  
			sql = "insert into examtbl(sNo,sName,kor,eng,math,hist) values (?,?,?,?,?,?)";
			pstmt = conn.prepareStatement(sql); // prepareStatement = sql 소환구문 
			
			
			pstmt.setString(1, vo.getsNo()); // 값을 집어 넣어 줘야 하니까 
			pstmt.setString(2, vo.getsName());
			pstmt.setInt(3, vo.getKor());
			pstmt.setInt(4, vo.getEng());
			pstmt.setInt(5, vo.getMath());
			pstmt.setInt(6, vo.getHist());
			
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
