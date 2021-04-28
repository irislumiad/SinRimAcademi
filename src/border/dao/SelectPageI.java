package border.dao;
import java.util.List;

import border.vo.BorderVo;

public interface SelectPageI {
	public List<BorderVo> select(BorderVo v);
	public int countAll();
}
