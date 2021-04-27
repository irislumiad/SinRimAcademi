package exam0423;

import java.io.File;

import javax.servlet.ServletContext;
import javax.servlet.http.HttpServletRequest;

import com.oreilly.servlet.MultipartRequest;
import com.oreilly.servlet.multipart.DefaultFileRenamePolicy;

public class PsdFile {
    public PsdVo fileinsert(HttpServletRequest request) throws Exception{
    	
    	  
    	  String encType="UTF-8";
    	  int  maxSize=5*1024*1024;  // 5M 
    	
    	  /*
    	  String realFolder="";
    	  String saveFolder ="/0423/fileSave";
    	  ServletContext context = request.getServletContext();
    	  realFolder=context.getRealPath(saveFolder);
    	   */
    	  
    	  RealFolder r = new RealFolder();
    	  
    	  String realFolder= r.realFolder(request);
    	  
    	  MultipartRequest  multi =null;
    	  multi = new MultipartRequest(request,realFolder,maxSize,encType, new DefaultFileRenamePolicy());
    	  File file = multi.getFile("filename"); // 실제 파일 저장!!
    	  System.out.println("파일저장확인 " +file); 
    	  
    	  
    	  String  idx = multi.getParameter("idx");
    	  String  name = multi.getParameter("name");
    	  String     price = multi.getParameter("price").trim();
    	  int priceInt = Integer.parseInt(price);
    	  String  etc = multi.getParameter("etc"); 	  
    	  String  filename=multi.getFilesystemName("filename"); // 이름    	
    	 
    	  PsdVo vo = new PsdVo();
    	  vo.setIdxStr(idx);
    	  vo.setName(name);
    	  vo.setPrice(priceInt);
    	  vo.setEtc(etc);
    	  vo.setFilename(filename);
    	  
		return vo;
    }
    
    public PsdVo updateFileName(HttpServletRequest request) throws Exception{
    	
  	  
  	  String encType="UTF-8";
  	  int  maxSize=5*1024*1024;  // 5M 
  	
 
  	  RealFolder r = new RealFolder();
  	  String realFolder= r.realFolder(request);
  	  
  	  
  	  MultipartRequest  multi =null;
  	  multi = new MultipartRequest(request,realFolder,maxSize,encType, new DefaultFileRenamePolicy());
  	  File file = multi.getFile("filename"); // 실제 파일 저장!!
  	  System.out.println("파일저장확인 " +file); 
  	  
  	  
  	  String  idx = multi.getParameter("idx");
  	  String  name = multi.getParameter("name");
  	  String     price = multi.getParameter("price").trim();
  	  int priceInt = Integer.parseInt(price);
  	  String  etc = multi.getParameter("etc"); 	  
  	  String  filename=multi.getFilesystemName("filename"); // 이름    	
  	 
  	  PsdVo vo = new PsdVo();
  	  vo.setIdxStr(idx);
  	  vo.setName(name);
  	  vo.setPrice(priceInt);
  	  vo.setEtc(etc);
  	  vo.setFilename(filename);
  	  
		return vo;
  }
    
    
    
}
