package exam0423;

import java.sql.Timestamp;

public class PsdVo {
   private  int idx ;
   private  String idxStr;
   private  String  name;
   private  int  price;
   private  String filename;
   private  String  etc ;
   private  Timestamp  reg_date ;
   private  String  regdateString ;
   
public int getIdx() {
	return idx;
}
public void setIdx(int idx) {
	this.idx = idx;
}
public String getName() {
	return name;
}
public void setName(String name) {
	this.name = name;
}
public int getPrice() {
	return price;
}
public void setPrice(int price) {
	this.price = price;
}
public String getFilename() {
	return filename;
}
public void setFilename(String filename) {
	this.filename = filename;
}
public String getEtc() {
	return etc;
}
public void setEtc(String etc) {
	this.etc = etc;
}
public Timestamp getReg_date() {
	return reg_date;
}
public void setReg_date(Timestamp reg_date) {
	this.reg_date = reg_date;
}

public String getIdxStr() {
	return idxStr;
}
public void setIdxStr(String idxStr) {
	this.idxStr = idxStr;
}
public String getRegdateString() {
	return regdateString;
}
public void setRegdateString(String regdateString) {
	this.regdateString = regdateString;
}
@Override
public String toString() {
	return "PsdVo [idx=" + idx + ", idxStr=" + idxStr + ", name=" + name + ", price=" + price + ", filename=" + filename
			+ ", etc=" + etc + ", reg_date=" + reg_date + ", regdateString=" + regdateString + "]";
}
   
   
}
