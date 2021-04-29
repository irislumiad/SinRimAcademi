package package0429.conn;

import java.sql.*;
import javax.sql.*;
import javax.naming.*;

public class DBBean {

	private  static  DBBean instance = new DBBean();
	
	private  DBBean() {}
	
	public  static DBBean getInstance() {
		return instance;
		
	}
	
	@SuppressWarnings("unused")
	public Connection getConnection() throws Exception {
		Context initCtx = new InitialContext();
		Context  envCtx = (Context) initCtx.lookup("java:comp/env");
		DataSource  ds = (DataSource)envCtx.lookup("jdbc/basicjsp");
		return ds.getConnection();			
	}
	
	public  void  close1(PreparedStatement pstmt ,Connection conn) {
		if (pstmt !=null) {
			try {
				pstmt.close();							
			} catch (SQLException e) {
				e.printStackTrace();
			}
		 }
		if (conn !=null) {
			try {
				conn.close();							
			} catch (SQLException e) {
				e.printStackTrace();
			}
		 }
	}
	
	public  void  close2(ResultSet rs, PreparedStatement pstmt ,Connection conn) {
		if (rs !=null) {
			try {
				rs.close();							
			} catch (SQLException e) {
				e.printStackTrace();
			}
		 }
		
		if (pstmt !=null) {
			try {
				pstmt.close();							
			} catch (SQLException e) {
				e.printStackTrace();
			}
		 }
		if (conn !=null) {
			try {
				conn.close();							
			} catch (SQLException e) {
				e.printStackTrace();
			}
		 }
	}
}
