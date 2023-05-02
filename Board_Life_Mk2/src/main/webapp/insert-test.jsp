<%@ page language = "java" contentType = "text/html;charset=utf-8" pageEncoding="utf-8" %>
<%@ page import="java.sql.*" %>
<%@ page import="com.oreilly.servlet.MultipartRequest" %>
<%@ page import="com.oreilly.servlet.multipart.DefaultFileRenamePolicy" %>
<%@ page import="java.util.*" %>

<%
	request.setCharacterEncoding("utf-8"); 
	String uploadPath=request.getRealPath("/upload");
	
	// 변수 선언
	int size = 10*1024*1024;
	String user_id = "";
    String password = "";
    String email = "";
    String gender = "";
    String name = "";
    String address = "";
    String phone = "";
    String nickname = "";
    String birth = "";
    String p_image = "";



	String filename1="";
	String origfilename1="";
    
    try{
		MultipartRequest multi=new MultipartRequest(request,
							uploadPath,
							size, 
							"UTF-8",
				new DefaultFileRenamePolicy());

		
	    user_id = multi.getParameter("user_id");
	    password = multi.getParameter("password");
	    email = multi.getParameter("email_id") + multi.getParameter("email_addr");
	    gender = multi.getParameter("gender");
	    name = multi.getParameter("name");
	    address = multi.getParameter("address") + " " + multi.getParameter("address-d");
	    phone = multi.getParameter("phone");
	    nickname = multi.getParameter("nickname");
	    birth = multi.getParameter("birth_y") + multi.getParameter("birth_m") + multi.getParameter("birth_d");
	    p_image = multi.getParameter("p_image");
		
		Enumeration files=multi.getFileNames();
		
		String file1 =(String)files.nextElement();
		p_image=multi.getFilesystemName(file1);
		origfilename1= multi.getOriginalFileName(file1);

		
	}catch(Exception e){
		e.printStackTrace();
	}
    
 %>
 
 
 	usser_id : <%= user_id %> <br>
  	password : <%= password %> <br>
   	email : <%= email %> <br>
    gender : <%= gender %> <br>
    name : <%= name %> <br>
    address : <%= address %> <br>
    phone : <%= phone %> <br>
    nickname : <%= nickname %> <br>
    birth : <%= birth %> <br>
    p_image : <%= p_image %> <br>
          