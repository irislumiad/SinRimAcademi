package package0429.service;

import java.util.List;

import package0429.dao.SelectDao;
import package0429.dao.SelectDaoI;
import package0429.model.ShopVo;

public class SelectService implements SelectServiceI{

	@Override
	public List<ShopVo> select() {
		SelectDaoI dao = new SelectDao();
		return dao.select();
		
		
	}
	

}
