package border;

import java.sql.Timestamp;

public class BorderVo {

	private int idx;
	private String title;
	private String name;
	private Timestamp reg_date;
	private int start;
	
	
	public int getIdx() {
		return idx;
	}
	public void setIdx(int idx) {
		this.idx = idx;
	}
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public Timestamp getReg_date() {
		return reg_date;
	}
	public void setReg_date(Timestamp reg_date) {
		this.reg_date = reg_date;
	}
	
	
	
	public int getStart() {
		return start;
	}
	public void setStart(int start) {
		this.start = start;
	}
	@Override
	public String toString() {
		return "BorderVo [idx=" + idx + ", title=" + title + ", name=" + name + ", reg_date=" + reg_date + ", start="
				+ start + "]";
	}
	
	
	
}
