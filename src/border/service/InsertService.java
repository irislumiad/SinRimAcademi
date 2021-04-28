package border.service;

import border.dao.Insert;
import border.vo.BorderVo;

public class InsertService implements InsertServiceI {

	@Override
	public void insert(BorderVo v) {
	Insert	i = new Insert();
	i.insert(v);
		
	}

	
}
