package exam0421;

import java.util.List;

public interface ExamExI {  // 지정된 메소드를 사용하라고 쓴다 . 
	
	public int Count();
	public void delete(examtblVo vo);
	public examtblVo edit(examtblVo vo);
	public List<examtblVo> select(examtblVo vo);
	
	
	
	
}
/*
싱글톤패턴  <-  메모리에 올려두는것  
-> 하나의 주소값만 사용 하는것이다. 



스태틱 메모리 보다 높은 개념 

*/