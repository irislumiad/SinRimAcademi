package border;

import java.util.List;

public class SelectPageService implements SelectPageServiceI{
	
	
	SelectPageI dao;
	
	public SelectPageService() {
		dao = new SelectPage();
		
		

	}
	
	

	@Override
	public List<BorderVo> select(BorderVo v) {
		
		return dao.select(v);
	}

	@Override
	public int countAll() {
		 
		
		return dao.countAll();
	}

}
