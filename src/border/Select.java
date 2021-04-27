package border;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

public class Select implements SelectI {

	@Override
	public List<BorderVo> select() {
		
		DBBean db = DBBean.getInstance();
		Connection conn = null;
		String sql = "";
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		List<BorderVo> li = new ArrayList<BorderVo>(); //<BorderVo>명시화  6
		
		try {
			conn = db.getConnection();
			sql = "select idx,title,name,reg_date from border0427 order by idx desc limit 0,10";
			pstmt = conn.prepareStatement(sql);
			rs = pstmt.executeQuery(); // 쿼리로 실행 
			li = new ArrayList<BorderVo>();  //7
			
			while(rs.next()) {
				BorderVo m = new BorderVo(); //5
				
				m.setIdx(rs.getInt("idx")); //1
				m.setTitle(rs.getString("title")); //2
				m.setName(rs.getString("name")); //3
				m.setReg_date(rs.getTimestamp("reg_date")); //4
				li.add(m); //8
			}
			
			
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		
		
		return li; //9
	}
	
}
