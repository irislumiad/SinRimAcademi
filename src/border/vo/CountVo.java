package border.vo;

public class CountVo {

	private int tc;
	private int totalPage;
	private int nowPage;
	private int start;
	
	private String ch1;
	private String ch2;
	
	public int getTc() {
		return tc;
	}
	public void setTc(int tc) {
		this.tc = tc;
	}
	public String getCh1() {
		return ch1;
	}
	public void setCh1(String ch1) {
		this.ch1 = ch1;
	}
	public String getCh2() {
		return ch2;
	}
	public void setCh2(String ch2) {
		this.ch2 = ch2;
	}
	public int getTotalPage() {
		return totalPage;
	}
	public void setTotalPage(int totalPage) {
		this.totalPage = totalPage;
	}
	public int getNowPage() {
		return nowPage;
	}
	public void setNowPage(int nowPage) {
		this.nowPage = nowPage;
	}
	public int getStart() {
		return start;
	}
	public void setStart(int start) {
		this.start = start;
	}
	@Override
	public String toString() {
		return "CountVo [tc=" + tc + ", totalPage=" + totalPage + ", nowPage=" + nowPage + ", start=" + start + ", ch1="
				+ ch1 + ", ch2=" + ch2 + "]";
	}
	
	
}
