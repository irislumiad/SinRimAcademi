package package0429.service;

import package0429.dao.InsertDao;
import package0429.dao.InsertDaoI;
import package0429.model.ShopVo;

public class InsertSerivce implements InsertServiceI {

	@Override
	public void Insert(ShopVo v) {
		InsertDaoI dao = new InsertDao();
		dao.Insert(v);
	}

}
