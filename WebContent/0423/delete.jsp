<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.io.*" %>
<%@ page import="exam0423.*" %>
<%

   int idx = Integer.parseInt(request.getParameter("idx"));
   PsdDaoI p= new PsdDao();

   String fileT=p.fileDelete(idx);
   System.out.print("fileT:" + fileT );
   RealFolder r = new RealFolder();
   String realFolder = r.realFolder(request);


	String  fileName = realFolder +"/" + fileT ;
	System.out.println("fileName:" + fileName);
	File file = new File(fileName);
	file.delete();  // 파일 삭제 메소드 

    p.delete(idx);  // 레코드 삭제

 response.sendRedirect("list.jsp");
%>