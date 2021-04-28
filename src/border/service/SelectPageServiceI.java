package border.service;

import java.util.List;

import border.vo.BorderVo;

public interface SelectPageServiceI {
	public List<BorderVo> select(BorderVo v);
	public int countAll();
}
