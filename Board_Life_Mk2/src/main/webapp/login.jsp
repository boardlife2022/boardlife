<%@ page language = "java" contentType = "text/html;charset=utf-8" pageEncoding="utf-8"  %>
<%@page import="java.sql.*"%>

<%
    String value_id = request.getParameter("userid");
    String value_pw = request.getParameter("userpw");
    Statement stmt = null;
    String uid = "";
    String upw = "";
    String uname = "";
    Connection conn = null;

    try {
        Class.forName("com.mysql.cj.jdbc.Driver");
        conn = DriverManager.getConnection("jdbc:mysql://15.165.215.248:3306/boardgame?useUnicode=true&characterEncoding=utf8", "boardlife", "0518");
        if(conn == null)
            throw new Exception("Unable to connect database.");
        stmt = conn.createStatement();
        ResultSet rs = stmt.executeQuery("select * from member_info where user_id ='" + value_id + "';");
        if(!rs.next())
            throw new Exception("There is no data");
        uid = rs.getString("user_id");
        upw = rs.getString("password");
        uname = rs.getString("name");


    } catch (Exception e) {


    } finally {
        try {
            stmt.close();
        } catch(Exception ignored) {
        }
        try {
            conn.close();
        } catch(Exception ignored){

        }
    }
%>

<%

        if(value_id.equals(uid) && value_pw.equals(upw)) {
			out.println("success");
			
	        String login = "on";
	        session.setAttribute("LOGIN", login);
	        session.setAttribute("ID", uid);
	        session.setAttribute("NAME", uname);
	        
            response.sendRedirect("/");
            
		} else {
			out.println("fail");
            response.sendRedirect("/login_page.jsp?warn=fail");
		}
%>