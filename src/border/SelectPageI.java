package border;
import java.util.List;

public interface SelectPageI {
	public List<BorderVo> select(BorderVo v);
	public int countAll();
}
