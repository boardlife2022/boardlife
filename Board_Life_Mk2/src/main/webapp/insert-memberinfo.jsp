<%@ page language = "java" contentType = "text/html;charset=utf-8" pageEncoding="utf-8" %>
<%@ page import="java.sql.*" %>
<%@ page import="com.oreilly.servlet.MultipartRequest" %>
<%@ page import="com.oreilly.servlet.multipart.DefaultFileRenamePolicy" %>
<%@ page import="java.util.*" %>

<%
	request.setCharacterEncoding("utf-8"); 
	String uploadPath=request.getRealPath("/upload");
	
	// 변수 선언
	int size = 10*160*160;
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
    

    Connection conn = null;
    Statement stmt = null;

     try {
        Class.forName("com.mysql.jdbc.Driver");
        conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/boardgame?useUnicode=true&characterEncoding=utf8", "root", "rhkddml");
        if(conn == null) {
            throw new Exception("Unable to connect database.");
        }
        stmt = conn.createStatement();
        String command = String.format("insert into member_info values ('%s', '%s', '%s', '%s', '%s', '%s', '%s', '%s', '%s', '%s');", user_id, password, email, gender, name, address, phone, nickname, birth, p_image);
        
        int rowsAffected = stmt.executeUpdate(command);

        if(rowsAffected < 1) {
            throw new Exception("Unable to connect data to DB.");
        }


    } finally {
        try {
            stmt.close();
        } catch (Exception ignored) {
        }
         try {
            conn.close();
         } catch (Exception ignored) {

         }
    }

    response.sendRedirect("/BoardLife/join_complete.jsp");


%>


Success

