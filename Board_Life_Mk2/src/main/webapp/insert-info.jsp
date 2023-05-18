<%@ page language = "java" contentType = "text/html;charset=utf-8" pageEncoding="utf-8" %>
<%@ page import="java.sql.*" %>
<%@ page import="com.oreilly.servlet.MultipartRequest" %>
<%@ page import="com.oreilly.servlet.multipart.DefaultFileRenamePolicy" %>
<%@ page import="java.util.*" %>

<%
    request.setCharacterEncoding("utf-8"); 
    String user_id = request.getParameter("user_id");
    String password = request.getParameter("password");
    String email = request.getParameter("email_id") + request.getParameter("email_addr");
    String gender = request.getParameter("gender");
    String name = request.getParameter("name");
    String address = request.getParameter("address") + " " + request.getParameter("address-d");
    String phone = request.getParameter("phone");
    String nickname = request.getParameter("nickname");
    String birth = request.getParameter("birth_y") + request.getParameter("birth_m") + request.getParameter("birth_d");
    String p_image = request.getParameter("p_image");

    Connection conn = null;
    Statement stmt = null;

     try {
        Class.forName("com.mysql.cj.jdbc.Driver");
        conn = DriverManager.getConnection("jdbc:mysql://15.165.215.248:3306/boardgame?useUnicode=true&characterEncoding=utf8", "boardlife", "0518");
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

