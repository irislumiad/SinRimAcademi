package border.service;

import java.util.List;

import border.dao.SelectPage;
import border.dao.SelectPageI;
import border.vo.BorderVo;

public class SelectPageService implements SelectPageServiceI{
	
	
	SelectPageI dao;   // 클래스에 2가지 이상의 메소드가 생성이 될때 생성자를 통해 중복된것을 선언해 준다면 
	                   //  좀 더 타이핑 덜해도 되고 깔끔해지는구나?
	
	public SelectPageService() {  // 생성자가 초기화 해주는것?
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
