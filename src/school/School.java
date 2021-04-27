package school;
import java.sql.*;
import java.util.ArrayList;
import java.util.List;



public class School {
	
	
	
	
	

	public List<SchoolVo> list(String k1, String k2) {  // 리스트 메소드를 만든것이다. 리턴형은 list<SchoolVo>  리스트 목록 보는 메소드 11
		
		
		DBBean db=DBBean.getInstance(); // db 연동 22
		Connection conn = null;  
		String sql = "";
		ResultSet rs = null;   // 55 resultset 으로 형 잡아준다. 
		PreparedStatement pstmt = null;  // 55
		List<SchoolVo> li = null;
		
		
		
		try {                              // 33 트라이 캐치 잡아주기 
			conn = db.getConnection();     // conn 연결
			
			if (k1 == null || k2 == "") {
			sql = "select * from school";			
			pstmt=conn.prepareStatement(sql); // 44
			
			} else if (k1.equals("id")) {
			sql = "select * from school where id like ?";
			pstmt=conn.prepareStatement(sql);
			pstmt.setString(1,"%"+k2+"%");
			
			} else if (k1.equals("name")) {
			sql = "select * from school where name like ?";	
			pstmt=conn.prepareStatement(sql);
			pstmt.setString(1,"%"+k2+"%");
			}
			
					
			rs = pstmt.executeQuery();  // 55
			li = new ArrayList<SchoolVo>();
			
						
			while (rs.next()) { // 66 루프 돌려서 찍어준다.
				   SchoolVo s = new SchoolVo(); //77 VO 에 추가해줘야해서?
				   s.setId(rs.getInt("id"));
				   s.setName(rs.getString("name"));
				   s.setKor(rs.getInt("kor"));
				   s.setEng(rs.getInt("eng"));
				   
				   li.add(s);
				   
				//rs.getInt("id");  // 66
				//rs.getString("name"); //66
			//	rs.getInt("kor");//66
				//rs.getInt("eng");//66
				
			}
			
			
			
	}catch (Exception e) {
			e.printStackTrace();
		} finally {
			try {
				rs.close();
				pstmt.close();
				conn.close();
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			
		}
		
		
		return li;
	}
	
	
	
	
	
	
	
	
	
	
	
	public SchoolVo edit(int k) {   //매개변수로 숫자가 들어올것이다.   // 선택된 내용이 보이는 메소드 11
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
				   

		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			try {
				rs.close();
				pstmt.close();
				conn.close();
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			
		}
		
		
		return m;
	}




	

public int count() {   // VO안써도 되니까 Int 로 받아줌 
	DBBean db=DBBean.getInstance(); // db 연동 22
	Connection conn = null;  
	String sql = "";
	ResultSet rs = null;   // 55 resultset 으로 형 잡아준다. 
	PreparedStatement pstmt = null;  // 55
	
	
	int tc = 0;
	
	
	try {                              // 33 트라이 캐치 잡아주기 
		conn = db.getConnection();     // conn 연결
		sql = "select count(*) as tc from school";
		pstmt=conn.prepareStatement(sql); // 44
		rs = pstmt.executeQuery();  // 55
		
		rs.next();
		
		tc = rs.getInt("tc");
		
		
		
		//	m = new SchoolVo(); //77 VO 에 추가해줘야해서?
			  // m.setId(rs.getInt("id"));
			//   m.setName(rs.getString("name"));
			//   m.setKor(rs.getInt("kor"));
			//   m.setEng(rs.getInt("eng"));
			   

	} catch (Exception e) {
		e.printStackTrace();
	} finally {
		try {
			rs.close();
			pstmt.close();
			conn.close();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
	}
	
	
	return tc;
}




public void delete(int k) {   // VO안써도 되니까 Int 로 받아줌 
	DBBean db=DBBean.getInstance(); // db 연동 22
	Connection conn = null;  
	String sql = "";
	ResultSet rs = null;   // 55 resultset 으로 형 잡아준다. 
	PreparedStatement pstmt = null;  // 55
	
	
	
	try {                              // 33 트라이 캐치 잡아주기 
		conn = db.getConnection();     // conn 연결
		sql = "delete  from  school where id=?";
		
		pstmt=conn.prepareStatement(sql); // 44
		pstmt.setInt(1, k);
		pstmt.executeUpdate();  // 55
		
	} catch (Exception e) {
		e.printStackTrace();
	} finally {
		try {
			pstmt.close();
			conn.close();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
	}
}

public void edit_ok(String k1, int k2, int k3, int k4) {   // VO안써도 되니까 Int 로 받아줌 
	DBBean db=DBBean.getInstance(); // db 연동 22
	Connection conn = null;  
	String sql = "";
	ResultSet rs = null;   // 55 resultset 으로 형 잡아준다. 
	PreparedStatement pstmt = null;  // 55
	
	
	
	try {                              // 33 트라이 캐치 잡아주기 
		conn = db.getConnection();     // conn 연결
		sql = "update school set name=?, kor=?, eng=? where id=?";
		System.out.println(sql);
		
		
		pstmt=conn.prepareStatement(sql); // 44
		pstmt.setString(1, k1);
		pstmt.setInt(2, k2);
		pstmt.setInt(3, k3);
		pstmt.setInt(4, k4);
		pstmt.executeUpdate();  // 55
		
		
	} catch (Exception e) {
		e.printStackTrace();
	} finally {
		try {
			pstmt.close();
			conn.close();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
	}
}




}
	

