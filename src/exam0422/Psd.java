package exam0422;

import java.sql.*;
import java.util.ArrayList;
import java.util.List;

public class Psd  implements PsdI {
	DBBean db = DBBean.getInstance();
	Connection conn=null;
	String sql="";
	PreparedStatement pstmt=null;
	ResultSet rs =null;
	
	
	@Override
	public void insert(PsdVo v) { // 매개변수 2개로 받아주면 public void insert(String v1, String v2) ; 로 바꿔준다.  

		try {
			
			  Timestamp now = new Timestamp(System.currentTimeMillis());
			  
			  conn =db.getConnection();
			  sql = "insert  into  psd0422(num_id, file, reg_date) values(?,?,?)" ;
			  pstmt=conn.prepareStatement(sql); 
			  pstmt.setString(1, v.getName()); // 매개변수 2개로 받아주면 pstmt.setString(1, v1()); 
			  pstmt.setString(2, v.getFilename());// 매개변수 2개로 받아주면 pstmt.setString(1, v2());로 받아주면 된다 
			  pstmt.setTimestamp(3, now);
			  pstmt.executeUpdate();
			  
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			db.close1(pstmt, conn);
		}
		
		
	}

	@Override
	public List<PsdVo> select() {
		List<PsdVo> li = null;
		try {
			conn =db.getConnection();
			sql ="select  *  from  psd0422";
			pstmt=conn.prepareStatement(sql);
			rs=pstmt.executeQuery();
			li=new ArrayList<PsdVo>();
			while(rs.next()) {
				PsdVo vo=new PsdVo();
				int idx =rs.getInt("idx");
				String name= rs.getString("name");
				String filename= rs.getString("file");
				Timestamp reg_date = rs.getTimestamp("reg_date");
				
				vo.setIdx(idx);
				vo.setName(name);
				vo.setFilename(filename);
				vo.setReg_date(reg_date);
				li.add(vo);
			}
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} finally {
			db.close2(rs, pstmt, conn);
		}
			
		return li;
	}

	@Override
	public void delete(int k) {		

		 try {
			conn =db.getConnection();
			sql ="delete  from  psd0422 where num_id=?";
			pstmt=conn.prepareStatement(sql);
			pstmt.setInt(1, k);
			pstmt.executeUpdate();
			
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} finally {
			db.close1(pstmt, conn);
		}
		
	}

	@Override
	public String fileDelete(int k) {
		String filename ="";

		try {
			conn =db.getConnection();
			sql ="select  *  from  psd0422 where num_id=?";
			pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, k);
			rs=pstmt.executeQuery();
			rs.next();
            filename=rs.getString("file");
            
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} finally {
			db.close2(rs, pstmt, conn);
		}
		
		return filename;
	}

}
