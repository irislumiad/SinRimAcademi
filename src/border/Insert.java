package border;

import java.sql.*;
import java.util.ArrayList;

public class Insert implements InsertI {

	//DAO
	
	@Override
	public void insert(BorderVo v) {   // list2는 매개변수를 받아서 넘겨야 한다 다음장으로 넘겨야 해서 
		DBBean db = DBBean.getInstance();
		String sql="";
		PreparedStatement pstmt = null;
		Connection conn = null;
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		try {
			conn = db.getConnection();
			
			String [] titleStr = {"ASP 게시판 연습","JSP MVC 프로젝트","JAVA 객체지향프로그램","제주도 가고싶다","설악산은 글쎄"}; // 배열로 받음.
			String [] nameStr = {"한소희","선희","나라","김호찌","플플","후하후하"}; // 배열로 받음.
			String [] dayStr = {"1990-12-25","2014-01-01","2024-01-01","2019-10-01","2020-03-01","2028-07-24","2024-03-01"};
			
			for (int i=0 ; i < 11 ; i++) {
				int k = (int)(Math.random()*5) + 0;
				int j = (int)(Math.random()*6) + 0;
				int l = (int)(Math.random()*8) + 0;
			    String x1 = titleStr[k] ;
			    String x2 = nameStr[j] ;
			    String x3 = dayStr[l];
				conn=db.getConnection();
				sql = "insert into border0427(title, name, reg_date)\r\n" + 
						" values (?, ?,?); ";
				pstmt=conn.prepareStatement(sql);
				pstmt.setString(1, x1);
				pstmt.setString(2, x2);
				pstmt.setString(3, x3);
				pstmt.executeUpdate();
				System.out.print(i+ " ");
				db.close1(pstmt, conn);
			}
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} finally {
			
		}
	}
   
}

	
	

