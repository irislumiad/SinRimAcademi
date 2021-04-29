package package0429.service;

import java.util.List;

import package0429.dao.EditDao;
import package0429.dao.EditDaoI;
import package0429.model.ShopVo;

public class EditService implements EditServiceI{

	@Override
	public List<ShopVo> Edit(ShopVo vo) {
		EditDaoI dao = new EditDao();
		
		List<ShopVo> edit = dao.Edit(vo);
		
		return edit;
	}

}
