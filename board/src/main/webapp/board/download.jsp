<%@page import="java.io.BufferedOutputStream"%>
<%@page import="java.io.FileInputStream"%>
<%@page import="java.io.File"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	// 클라이언트가 요청한 파일명 가져오기
	String fileName = request.getParameter("fileName");

    // 서버의 업로드 폴더에 가서 클라이언트가 요청한 파일 읽은 후 보내기
    
    // c:\\upload\\86cb3a61-5023-44d8-9013-9faf45a6e65b_1.jpg
    String saveDir = "c:\\upload";
    String downPath = saveDir + File.separator + fileName;
    
    // 파일읽기
    FileInputStream fis = new FileInputStream(downPath);
    
    // 읽은 파일(이미지,텍스트,동영상...) 브라우저 헤더에 붙여서 보내기
    response.setContentType("application/octet-stream");
    //  %2b
    fileName = new String(fileName.getBytes("utf-8"), "iso-8859-1");
    
 	// c:\\upload\\86cb3a61-5023-44d8-9013-9faf45a6e65b_1.jpg
    int start = fileName.lastIndexOf("_");
    String oriName = fileName.substring(start + 1);
    
    // 86cb3a61-5023-44d8-9013-9faf45a6e65b_1.jpg  or 1.jpg
    response.setHeader("content-disposition", "attachment; filename="+oriName);
    
    out.clear();
    out = pageContext.pushBody();
    
    BufferedOutputStream bos = new BufferedOutputStream(response.getOutputStream());
    
    int numRead = 0;
    byte b[]=new byte[4096];
    while((numRead = fis.read(b)) != -1){
    	bos.write(b);
    }
	bos.flush();
	bos.close();
	fis.close();	
%>




