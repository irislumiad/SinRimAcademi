package exam0422;

import java.util.List;

public interface PsdI {
   public  void insert(PsdVo v) ;
   // public  void insert(String v1,String v2) ; // 이런식으로 만들었으면 
   
   public  List<PsdVo> select();
   public  void  delete( int  k );
   public  String fileDelete (int k);
}
