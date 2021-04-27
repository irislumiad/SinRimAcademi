<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="exam0423.*" %>
<% request.setCharacterEncoding("UTF-8"); %>
 
<%

  PsdFile f=new PsdFile();
  PsdVo  fso= f.fileinsert(request);
  
  String name= fso.getName();
  String etc= fso.getEtc();
  int price = fso.getPrice();
  String filename = fso.getFilename();

  PsdVo v=new  PsdVo(); 
  
  v.setName(name);
  v.setEtc(etc);
  v.setPrice(price);
  v.setFilename(filename);

	PsdDaoI  s = new PsdDao();
	s.insert(v);

response.sendRedirect("list.jsp");

%>
