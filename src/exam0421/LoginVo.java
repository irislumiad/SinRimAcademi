package exam0421;

public class LoginVo {
	private  String  sno;
	private  String  id;
	private  String  pwd;
	
	public String getSno() {
		return sno;
	}
	public void setSno(String sno) {
		this.sno = sno;
	}
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public String getPwd() {
		return pwd;
	}
	public void setPwd(String pwd) {
		this.pwd = pwd;
	}
	@Override
	public String toString() {
		return "LoginVo [sno=" + sno + ", id=" + id + ", pwd=" + pwd + "]";
	}
	
	
}
