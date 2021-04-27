<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="exam0423.*" %>
<%@ page import="java.io.*" %>
<% request.setCharacterEncoding("UTF-8"); %>
 
<!--
<jsp:useBean id="PsdVo" class="exam0423.PsdVo"/>
<jsp:setProperty property="*" name="PsdVo"/>
 -->
 
 
<%  //파일 삭제 메소드 

	
	PsdDaoI p= new PsdDao();

	String fileT=p.fileDelete(PsdVo.getIdx());
	
	
	System.out.println(fileT);
	
	RealFolder r = new RealFolder();
	String realFolder = r.realFolder(request);

	String  fileName = realFolder +"/" + fileT ;
	File file = new File(fileName);
	file.delete();  // 파일 삭제 메소드 
%>

<%
	PsdFile f=new PsdFile();
	PsdVo  fso= f.updateFileName(request);
	
	String idx= fso.getIdxStr();
	String name= fso.getName();
	String etc= fso.getEtc();
	int price = fso.getPrice();
	String filename = fso.getFilename();
	
	
	
	PsdVo v=new  PsdVo(); 
	
	v.setIdxStr(idx);
	v.setName(name);
	v.setEtc(etc);
	v.setPrice(price);
	v.setFilename(filename);

	PsdDaoI  s = new PsdDao();
	s.update(v);
	
	response.sendRedirect("list.jsp");




%>