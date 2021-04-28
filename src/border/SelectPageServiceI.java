package border;

import java.util.List;

public interface SelectPageServiceI {
	public List<BorderVo> select(BorderVo v);
	public int countAll();
}
