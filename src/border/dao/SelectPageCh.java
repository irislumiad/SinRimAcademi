package border.dao;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import border.Bean.DBBean;
import border.dao.SelectPageChI;
import border.vo.BorderVo;

public class SelectPageCh implements SelectPageChI {
	
	

	@Override
	public List<BorderVo> select(BorderVo v) {
		
		DBBean db = DBBean.getInstance();
		Connection conn = null;
		String sql = "";
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		List<BorderVo> li = new ArrayList<BorderVo>(); //<BorderVo>명시화  6
		
		
		
		try {
			
		
			int count = 10;
			
			conn = db.getConnection();
			
				if(v.getCh1() == null || v.getCh1() == "" || v.getCh1().equals("null") ) {
				
				sql = "select idx,title,name,reg_date from border0427 order by idx desc limit ?,? ";	
				pstmt = conn.prepareStatement(sql);
				pstmt.setInt(1, v.getStart());
				pstmt.setInt(2, count);
				rs = pstmt.executeQuery(); // 쿼리로 실행 
				
				} else if (v.getCh1().equals("title")) {
					sql = "select idx,title,name,reg_date from border0427 where title like ? order by idx desc limit ?,? ";	
					pstmt = conn.prepareStatement(sql);
					pstmt.setString(1, "%" + v.getCh2() + "%");
					pstmt.setInt(2, v.getStart());
					pstmt.setInt(3, count);	
					rs = pstmt.executeQuery(); // 쿼리로 실행 
					
				} else if (v.getCh1().equals("name")) {
					sql = "select idx,title,name,reg_date from border0427 where name like ? order by idx desc limit ?,? ";	
					pstmt = conn.prepareStatement(sql);
					pstmt.setString(1, "%" + v.getCh2() + "%");
					pstmt.setInt(2, v.getStart());
					pstmt.setInt(3, count);
					rs = pstmt.executeQuery(); // 쿼리로 실행 
				}
		
			li = new ArrayList<BorderVo>();  //7  // vo으로 모은걸 arraylist 에 담아서 리턴 
			
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
		
		
		
		return li;
	}

	
	
	@Override
	public int countAll(BorderVo v) {
		DBBean db=DBBean.getInstance();
		Connection conn=null;
		String  sql ="" ;
		PreparedStatement pstmt = null;
		ResultSet rs =null;
		int  tc = 0;
		try {
			conn=db.getConnection();
			if (v.getCh1() == null ||  v.getCh1() == "" ||  v.getCh1().equals("null") ) {
			  sql ="select count(*) as tc from border0427 ";
			  pstmt=conn.prepareStatement(sql);
			} else if (v.getCh1().equals("title")) {
			  sql ="select count(*) as tc from border0427 where title like ? ";
			  pstmt=conn.prepareStatement(sql);
			  pstmt.setString(1, "%"+ v.getCh2()  +"%");
			} else if (v.getCh1().equals("name")) {
			  sql ="select count(*) as tc from border0427  where name like ?  ";
			  pstmt=conn.prepareStatement(sql);
			  pstmt.setString(1, "%"+ v.getCh2()  +"%");
		   }

			rs=pstmt.executeQuery();
				
			rs.next();
			tc=rs.getInt("tc");
			
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			db.close2(rs, pstmt, conn);
		}
		return tc;
	}

}


