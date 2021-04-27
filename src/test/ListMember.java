package test;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;


public class ListMember {

	public List<LogonDataBean> listMember() {  // 괄호 안에 매개변수가 들어갈 수 있다.  
		
		
		LogonDBBean db=LogonDBBean.getInstance();
		
		
		
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		String sql = "";
		List<LogonDataBean> li = null;
		
		
		try {
		conn=db.getConnection();
		sql = "select * from member";
		pstmt=conn.prepareStatement(sql);
		rs = pstmt.executeQuery();
		li = new ArrayList<LogonDataBean>();
		
		
		while (rs.next()) {
			LogonDataBean m = new LogonDataBean();
			m.setId(rs.getString("id"));
			m.setPasswd(rs.getString("Passwd"));
			m.setName(rs.getString("Name"));
			m.setReg_date(rs.getTimestamp("reg_date"));
			System.out.println(m.toString());
			
			li.add(m);
			
		}
	
		
		} catch (Exception e) {
			
		}
		
		return li;
	}
}
