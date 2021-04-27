package school;

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
		DataSource  ds = (DataSource)envCtx.lookup("jdbc/basicjsp");  // 톰캣에 있는 서버.sml 에 있는 아이디를 부른것이다.
		
		
		return ds.getConnection();	
		
	
	}
	
}