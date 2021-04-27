package exam0421;
//자바빈을 속성과 메소드로 이루어진것이라네 
// 속성과 메소드가 있고 
// Vo 만든게 자바빈이다 


public class examtblVo {
	private String sNo;
	private String sName;
	private int kor;
	private int eng;
	private int math;
	private int hist;
	
	private String ch1;
	private String ch2;
	
	
	
	public String getsNo() {
		return sNo;
	}
	public void setsNo(String sNo) {
		this.sNo = sNo;
	}
	public String getsName() {
		return sName;
	}
	public void setsName(String sName) {
		this.sName = sName;
	}
	public int getKor() {
		return kor;
	}
	public void setKor(int kor) {
		this.kor = kor;
	}
	public int getEng() {
		return eng;
	}
	public void setEng(int eng) {
		this.eng = eng;
	}
	public int getMath() {
		return math;
	}
	public void setMath(int math) {
		this.math = math;
	}
	public int getHist() {
		return hist;
	}
	public void setHist(int hist) {
		this.hist = hist;
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
	@Override
	public String toString() {
		return "examtblVo [sNo=" + sNo + ", sName=" + sName + ", kor=" + kor + ", eng=" + eng + ", math=" + math
				+ ", hist=" + hist + ", ch1=" + ch1 + ", ch2=" + ch2 + "]";
	}
	
	
	
	
}


