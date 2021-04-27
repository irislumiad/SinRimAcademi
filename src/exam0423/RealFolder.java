package exam0423;

import javax.servlet.ServletContext;
import javax.servlet.http.HttpServletRequest;

public class RealFolder {
  public	String realFolder(HttpServletRequest request) {
	  String realFolder="";
	  String saveFolder ="/fileSave";
	  ServletContext context = request.getServletContext();
	  realFolder=context.getRealPath(saveFolder);
	return realFolder;		
	}
}
