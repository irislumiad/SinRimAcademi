package test;

import java.sql.*;
import javax.naming.*;
import javax.sql.*;

public class LogonDBBean {
	private  static  LogonDBBean instance = new LogonDBBean();
	
	private  LogonDBBean() {}
	
	public  static LogonDBBean getInstance() {
		return instance;
	}
	
	@SuppressWarnings("unused")
	public Connection getConnection() throws Exception {
		
		/*
		  String url="jdbc:mysql://localhost:3306/basicjsp";
		  String user="jspid";
		  String password="jsppass";
		  Class.forName("com.mysql.jdbc.Driver");
		  Connection conn=DriverManager.getConnection(url, user, password);
		  return conn;
		*/
		
		
		Context initCtx = new InitialContext();
		Context  envCtx = (Context) initCtx.lookup("java:comp/env");
		DataSource  ds = (DataSource)envCtx.lookup("jdbc/basicjsp");
		
		
		return ds.getConnection();	
		
	
	}
	
}
