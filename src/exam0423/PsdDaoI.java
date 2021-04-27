package exam0423;

import java.util.List;

public interface PsdDaoI {
	
	
   public  void insert(PsdVo v) ;
   
   public  List<PsdVo> select();
   public  void  delete( int  k );
   public  String fileDelete (int k);
   public  PsdVo edit(int k);
   
   public  void update(PsdVo vo); 
   
}
