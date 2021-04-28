package border.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import border.Bean.DBBean;
import border.vo.BorderVo;

public class SelectPage implements SelectPageI {
	DBBean db = null;  
	
	Connection conn = null;
	String sql = "";
	PreparedStatement pstmt = null;
	ResultSet rs = null;
	List<BorderVo> li = new ArrayList<BorderVo>(); //<BorderVo>명시화  6
	
	private final String sql_select1 =  "select idx,title,name,reg_date from border0427 order by idx desc limit ?,?";
	private final String sql_count = "select count(*) as tc from border0427";
	
	
	public SelectPage() {
		db = DBBean.getInstance();
		
		
	}
	
	

	@Override
	public List<BorderVo> select(BorderVo v) {
		
		
		
		try {
			
			///////////////////
			int count = 10;
			
			
			/////////////////////
			conn = db.getConnection();
			pstmt = conn.prepareStatement(sql_select1);
			
			//////////////////
			pstmt.setInt(1, v.getStart());
			pstmt.setInt(2, count);
			
			////////////////
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

	@Override
	public int countAll() {
		
		int tc = 0;
		
		try {
			conn = db.getConnection();
			pstmt = conn.prepareStatement(sql_count);
			rs = pstmt.executeQuery(); // 쿼리로 실행 
			rs.next();
			tc = rs.getInt("tc");
			
			
			
			

			
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		
		return tc;
	}
		
		
		
		

	
	
}
