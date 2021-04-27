//3
package exam0422;

import java.io.File;

import javax.servlet.ServletContext;
import javax.servlet.http.HttpServletRequest;

import com.oreilly.servlet.MultipartRequest;
import com.oreilly.servlet.multipart.DefaultFileRenamePolicy;

public class PsdFile {
    public PsdVo fileinsert(HttpServletRequest request) throws Exception{
    	
    	
    	  String realFolder="";
    	  String saveFolder ="/fileSave";
    	  String encType="UTF-8";
    	  int  maxSize=5*1024*1024;  // 5M 
    	  
    	  //ServletContext context = request.getServletContext();
    	  //realFolder=context.getRealPath(saveFolder);
    	  
    	  realFolder = request.getServletContext().getRealPath(saveFolder);
    	  //realFolder = request.getServletContext().getRealPath("/fileSave"); 요렇게도 가능 그러면 위에 file save 를 줄일 수 있지 
    	  

    	  MultipartRequest  multi =null;
    	  multi = new MultipartRequest(request,realFolder,maxSize,encType, new DefaultFileRenamePolicy());  // 실제 저장되는 곳 
    	  File file = multi.getFile("filename"); // 실제 파일 저장!!
    	     	  
    	  String  name = multi.getParameter("name");
    	  String  price = multi.getParameter("price");
    	  int priceInt = Integer.parseInt(price);
    	  String  filename=multi.getFilesystemName("filename"); // 이름    	
    	  //multi.getFileNames() --모든 것을 다 찍어줌 
    	  
    	  PsdVo vo = new PsdVo();   //  넘어가는 값
    	  vo.setName(name);
    	  vo.setPrice(priceInt);
    	  vo.setFilename(filename);
		return vo;  // 자바는 리턴할 수 있는게 1개 뿐이다.  
    }


}
