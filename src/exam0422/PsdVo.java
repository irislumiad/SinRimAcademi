package exam0422;

import java.io.File;
import java.sql.Timestamp;

public class PsdVo {
	
  private  int  idx;
  private  String idxString;
  private  String  name;
  private  String  filename;  // 파일이름 
  private  File    file;      // 실제 파일 
  private  Timestamp  reg_date;
  
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
public String getFilename() {
	return filename;
}
public void setFilename(String filename) {
	this.filename = filename;
}
public File getFile() {
	return file;
}
public void setFile(File file) {
	this.file = file;
}
public Timestamp getReg_date() {
	return reg_date;
}
public void setReg_date(Timestamp reg_date) {
	this.reg_date = reg_date;
}

@Override
public String toString() {
	return "PsdVo [idx=" + idx + ", name=" + name + ", filename=" + filename + ", file=" + file + ", reg_date="
			+ reg_date + "]";
} 
  
}
