
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@ page import=" java.util.* , java.io.* , java.awt.image.*" %>
<%@page import="com.oreilly.servlet.MultipartRequest"%>
<%@page import="com.oreilly.servlet.multipart.DefaultFileRenamePolicy"%>
<%@page import="edu.kosa.thumb.Thumbnail"%>

<%
	String realPath = ""; // 웹 어플리케이션상의 절대경로
    String savePath = "upload";
    String encType = "UTF-8";
    int maxSize = 1024 * 1024 * 5 ; // 최대 업로드 파일 크기 - 5MB
    
	//현재 jsp 페이지의 웹 어플리케이션상의 절대 경로 구함
	ServletContext context = getServletContext();
    realPath = context.getRealPath(savePath);  //  upload\
    
    try {
    	MultipartRequest multi = new MultipartRequest(
    										request,
    										realPath,
    										maxSize,
    										encType,
    										new DefaultFileRenamePolicy()  );
    	
    	 Enumeration files = multi.getFileNames();
    	 int zoom = 5;
    	 
    	 ///////////////////// //////////////////
    	 for(int i=0; i < files.size() ; i++) {
    		 String originalFileName = files.get(i).getOriginalFilename();
    		 int index = originalFileName.lastIndexOf(".");
    		 String fileName = originalFileName.substring(0, index); // 파일명
    		 String fileExt = originalFileName.substring(index+1); // 확장자
    		 
    		 File file = new File(originalFileName);
    		 
    		 savePath.get(i).transferTo(file);
    		 
    		 // 썸네일을 생성하는 메소드 호출한다.
    		 Thumbnail.createImage(file.getAbsolutePath(), originalFileName, fileExt, zoom);
    		 
    	 } // end for
    	 ///////////////////////////////////////////////////////
    	 
    	  while( files.hasMoreElements() ) {
    		 String name = (String)files.nextElement();
    		 String fileName = multi.getFilesystemName(name); //물리적 경로에 있는 이름
    		 String original = realPath+"\\"+fileName;
    		 String thumbFileName = realPath+"\\"+fileName;
    		 
 %>
 	원본 파일 저장 경로 및 파일명 : <%= original %><br>
 	<img src="<%= original %>"  border="0"/> <br><br><br>
 	
 	<% Thumbnail.createImage(original, thumbFileName, fileExt, zoom); %>
 	
 	썸네일 이미지 저장 경로 및 파일명 
 	원본 파일 저장 경로 및 파일명 : <%= thumbFileName %><br>
 	<img src="../upload/<%= thumbFileName %>"  border="0"/> 
 	
 <%
    	  } // while end
    } catch(Exception e) {
    	e.printStackTrace();
    }
  %>
  
  
  
  
  
  
  
  