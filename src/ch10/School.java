package school;

import java.sql.*;
import java.util.ArrayList;
import java.util.List;

public class School {
	
	  DBBean  db=DBBean.getInstance();
	  Connection conn =null;
	  String sql = "";
	  PreparedStatement pstmt = null;
	  ResultSet rs = null;
	
	public  void close() {
		try {
			rs.close();
			pstmt.close();
			conn.close();
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}  
	
	public  void close1() {
		try {			
			pstmt.close();
			conn.close();
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}  
	
	public void edid_ok(String k1, int k2, int k3, int k4) {
		  try {
			conn =db.getConnection();
			sql = "update school set name=? , kor=? , eng=? where idx=?";
			pstmt=conn.prepareStatement(sql);
			pstmt.setString(1, k1);
			pstmt.setInt(2, k2);
			pstmt.setInt(3, k3);
			pstmt.setInt(4, k4);
			pstmt.executeUpdate();			
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			close1();
		}	  
	}
	
	
	public void delete(int k) {
		  try {
			 conn =db.getConnection();
			 sql = "delete  from  school where idx=?";
			 pstmt=conn.prepareStatement(sql);
			 pstmt.setInt(1, k);
			 pstmt.executeUpdate();			
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			close1();
		}	  
	}
	
	public int count() {
	
		  int tc =0;
		  try {
			 conn =db.getConnection();
			 sql = "select  count(*) as tc  from  school ";
			 pstmt=conn.prepareStatement(sql);
			 rs=pstmt.executeQuery();
			 rs.next();
			 tc=rs.getInt("tc");
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			close();
		}	  
		return tc;		
	}
	
	public List<SchoolVo>  list() {
	  	
	  List<SchoolVo> li =null;
	  try {
		 conn =db.getConnection();
		 sql = "select  *  from  school";
		 pstmt=conn.prepareStatement(sql);
		 rs=pstmt.executeQuery();
		 li = new ArrayList<SchoolVo>();
		 
		 while(rs.next()) {
			 SchoolVo s=new  SchoolVo();
			 s.setIdx(rs.getInt("idx"));
			 s.setName(rs.getString("name"));
			 s.setKor(rs.getInt("kor"));
			 s.setEng(rs.getInt("eng"));
			li.add(s) ;
		 }
		 
	} catch (Exception e) {
		e.printStackTrace();
	} finally {
		close();
	}	  
	return li;	  
  }
  
  public SchoolVo edit(int k) {	  
	  
	  SchoolVo m =null;
	  try {
		 conn =db.getConnection();
		 sql = "select  *  from  school where idx=?";
		 pstmt=conn.prepareStatement(sql);
		 pstmt.setInt(1, k);
		 rs=pstmt.executeQuery();
		 rs.next();
			 m=new  SchoolVo();
			 m.setIdx(rs.getInt("idx"));
			 m.setName(rs.getString("name"));
			 m.setKor(rs.getInt("kor"));
			 m.setEng(rs.getInt("eng"));
	} catch (Exception e) {
		e.printStackTrace();
	} finally {
		close();
	}	  
	return m;	  	  
  }
}
