
package exam0421;

import java.sql.*;

import javax.sql.*;
import javax.naming.*;


	public class DBBean {
	
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		
		
		
		
		
		private  static  DBBean instance = new DBBean();
		
		private  DBBean() {}
		
		public  static DBBean getInstance() {
			return instance;
		}
		
		@SuppressWarnings("unused")
		public Connection getConnection() throws Exception {
			
			
			Context initCtx = new InitialContext();
			Context  envCtx = (Context) initCtx.lookup("java:comp/env");
			DataSource  ds = (DataSource)envCtx.lookup("jdbc/basicjsp");  // 톰캣에 있는 서버.sml 에 있는 아이디를 부른것이다.
			
			
			System.out.println(ds);
			
			return ds.getConnection();	
			
		
		}
		
		
		public void close1(PreparedStatement pstmt, Connection conn) {
			if (pstmt != null ) {
			try {
				pstmt.close();
				conn.close();
			} catch (SQLException e) {
				e.printStackTrace();
			}
			
		}
			
			
		}
		
		public void close2(ResultSet rs, PreparedStatement pstmt, Connection conn) {
			if (rs != null ) {
			try {
				rs.close();
				pstmt.close();
				conn.close();
			} catch (SQLException e) {
				e.printStackTrace();
			}
			
		}
			
			
		}
		
	}
	


	
	
	// DBCP 를 이용 한 스태틱 옆 중간 형태를 만들어 준것
	// 이건 싱글톤 메모리를 가르키고 있어서 1개의 주소값을 사용하기에 리소스를 줄여준다.  
	// 이건 당연하게 쓴다 
	
	
	
	//자바
	/*
	싱글톤패턴  <-  메모리에 올려두는것  
	-> 하나의 주소값만 사용 하는것이다. 
	스태틱 메모리 보다 높은 개념 
	*/
