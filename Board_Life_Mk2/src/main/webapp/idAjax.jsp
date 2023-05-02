<%@ page language = "java" contentType = "text/html;charset=utf-8" pageEncoding="utf-8"  %>
<%@page import="java.sql.*"%>

<%
    String value = request.getParameter("id");
    Connection conn = null;
    Statement stmt = null;
    String uid = "";

    try {
        Class.forName("com.mysql.jdbc.Driver");
        conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/boardgame", "root", "0407");
        if(conn == null)
            throw new Exception("Unable to connect database.");
        stmt = conn.createStatement();
        ResultSet rs = stmt.executeQuery("select * from member_info where user_id = '" + value + "';");
        if(!rs.next())
            throw new Exception("There is no data");

        uid = rs.getString("user_id");

        out.println(1);

    } catch (Exception e) {

        out.println(2);

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

