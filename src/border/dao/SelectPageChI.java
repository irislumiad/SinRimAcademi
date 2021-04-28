package border.dao;

import java.util.List;

import border.vo.BorderVo;

public interface SelectPageChI {
	public List<BorderVo> select(BorderVo v);
	public int countAll(BorderVo v); // 서치가 된것의 카운터니까 매개변수를 받아야 한다.  
}
