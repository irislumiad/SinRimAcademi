package exam0421;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

public class SelectEx {
	
	public List<examtblVo> select(examtblVo vo){
		DBBean db = DBBean.getInstance();
		Connection conn = null;
		PreparedStatement pstmt = null;
		String sql = "";
		ResultSet rs = null;
		List<examtblVo> li = null;
		
		
		try {
			conn = db.getConnection();
			sql = "Select * from examtbl";
			pstmt = conn.prepareStatement(sql);
			rs = pstmt.executeQuery();
			li = new ArrayList<examtblVo>();  // 리스트 형식으로 돌려줄꺼다 
			
			while (rs.next()) {
			examtblVo m  = new examtblVo();  // 담아서 넘겨줘야하기때문에 이게 필요하다 
			//1. rs.getString("sNo");
			//2. m.setsNo 에 담는다    m.setsNo(rs.getString("sNo"));
			
			m.setsNo(rs.getString("sNo"));
			m.setsName(rs.getString("sName"));
			m.setKor(rs.getInt("kor"));
			m.setEng(rs.getInt("eng"));
			m.setMath(rs.getInt("math"));
			m.setHist(rs.getInt("hist"));
			
			li.add(m);
			
			
	
				
			}
			
		
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		
		
		
		return li;
		
		
	}

}
