package package0429.dao;

import java.sql.*;
import java.util.ArrayList;
import java.util.List;

import package0429.conn.DBBean;
import package0429.model.ShopVo;

public class SelectDao implements SelectDaoI  {
	DBBean	db=null;
	Connection conn =null;
	PreparedStatement pstmt=null;
	String sql="";
	ResultSet rs=null;
	
	public SelectDao() {
		db=DBBean.getInstance();
	}

	@Override
	public List<ShopVo> select() {
		  List<ShopVo> li =null;
		 try {
			 
			conn=db.getConnection();
			sql="select *  from  border0429";
			pstmt=conn.prepareStatement(sql);
			rs=pstmt.executeQuery();
			li =new ArrayList<ShopVo>();
			
			while(rs.next()) {
				ShopVo m=new ShopVo();
				m.setIdx(rs.getInt("idx"));
				m.setName(rs.getString("name"));
				m.setPrice(rs.getInt("price"));
				m.setEtc(rs.getString("etc"));
				m.setAmount(rs.getInt("amount"));
				li.add(m);
			}
		} catch (Exception e) {			
			e.printStackTrace();
		}
		return li;
	}

}
