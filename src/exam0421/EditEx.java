package exam0421;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import school.DBBean;

public class EditEx {
	
	public examtblVo edit (examtblVo vo){
		
		DBBean db = DBBean.getInstance();
		Connection conn = null;
		PreparedStatement pstmt = null;
		String sql = "";
		ResultSet rs = null;
		examtblVo m = null;
		
		try {
			conn = db.getConnection();
			
			sql = "select  *  from  examtbl where sNo=?";
			pstmt=conn.prepareStatement(sql);
			pstmt.setString(1, vo.getsNo());  
			rs = pstmt.executeQuery();
			System.out.println(rs.getString("sNo"));
			
			rs.next();
			
			
			m = new examtblVo();
				m.setsNo(rs.getString("sNo"));
				m.setsName(rs.getString("sName"));
				m.setKor(rs.getInt("kor"));
				m.setEng(rs.getInt("eng"));
				m.setMath(rs.getInt("math"));
				m.setHist(rs.getInt("hist"));
			
			
			
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			try {
				conn.close();
				pstmt.close();
				rs.close();
				
			} catch (SQLException e) {
				e.printStackTrace();
			}
		}
		
		
		
		
		return m;
		
		
		
	}

}


/*public SchoolVo edit(int k) {   //매개변수로 숫자가 들어올것이다.   // 선택된 내용이 보이는 메소드 11
		DBBean db=DBBean.getInstance(); // db 연동 22
		Connection conn = null;  
		String sql = "";
		ResultSet rs = null;   // 55 resultset 으로 형 잡아준다. 
		PreparedStatement pstmt = null;  // 55
		
		SchoolVo m = null;
		
		
		try {                              // 33 트라이 캐치 잡아주기 
			conn = db.getConnection();     // conn 연결
			sql = "select  *  from  school where id=?";
			pstmt=conn.prepareStatement(sql); // 44
			pstmt.setInt(1, k);
			rs = pstmt.executeQuery();  // 55
			
			
			
			rs.next();
			
				m = new SchoolVo(); //77 VO 에 추가해줘야해서?
				   m.setId(rs.getInt("id"));
				   m.setName(rs.getString("name"));
				   m.setKor(rs.getInt("kor"));
				   m.setEng(rs.getInt("eng"));
				   */
