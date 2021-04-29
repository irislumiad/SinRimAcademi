package package0429.dao;


import java.sql.*;

import package0429.conn.DBBean;
import package0429.model.ShopVo;

public class InsertDao implements InsertDaoI {
	
	DBBean db = null;
	public InsertDao() {
		db = DBBean.getInstance();
	}
	

	@Override
	public void Insert(ShopVo v) {
		
		Connection conn = null;
		PreparedStatement pstmt = null;
		String sql = "";
		
		try {
			conn = db.getConnection();
			sql = "Insert into border0429 (name, price, etc, amount) values(?,?,?,?)";
			pstmt = conn.prepareStatement(sql);
			
			pstmt.setString(1, v.getName());
			pstmt.setInt(2, v.getPrice());
			pstmt.setString(3, v.getEtc());
			pstmt.setInt(4, v.getAmount());
			pstmt.executeUpdate();
			System.out.println(pstmt);
			
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			db.close1(pstmt, conn);
		}
	}

	
	
}
