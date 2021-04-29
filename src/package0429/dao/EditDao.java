package package0429.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;
import package0429.conn.DBBean;
import package0429.model.ShopVo;

public class EditDao implements EditDaoI {
	DBBean	db=null;
	Connection conn =null;
	PreparedStatement pstmt=null;
	String sql="";
	ResultSet rs=null;
	
	public EditDao() {
		db=DBBean.getInstance();
	}
	


	@Override
	public List<ShopVo> Edit(ShopVo vo) {
		  List<ShopVo> li =null;
		      //<ShopVo> 제네릭 
		 try {
			conn=db.getConnection();
			sql="select * from  border0429 where idx = ?";
			pstmt=conn.prepareStatement(sql);
			pstmt.setInt(1, vo.getIdx());
			rs=pstmt.executeQuery();
			
			    li =new ArrayList<ShopVo>();
			    
				rs.next();
				ShopVo m=new ShopVo();
				m.setIdx(rs.getInt("idx"));
				m.setName(rs.getString("name"));
				m.setPrice(rs.getInt("price"));
				m.setEtc(rs.getString("etc"));
				m.setAmount(rs.getInt("amount"));
				li.add(m);
		
		} catch (Exception e) {			
			e.printStackTrace();
		}
		return li;
	}
	


}
