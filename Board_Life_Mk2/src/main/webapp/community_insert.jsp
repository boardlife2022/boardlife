<%@ page language="java" contentType="text/html;charset=utf-8" pageEncoding="utf-8" %>
<%@page import="java.sql.*"%>
<%@page import="java.util.ArrayList"%>
<%@ page import="board.*" %>
<%@ page import="vo.Community" %>
<%
request.setCharacterEncoding("utf-8");
%>

 <jsp:useBean id="user1" class="board.Freeboard_cont">
   <%
   Community stu = new Community();
// stu.setPost_id(Integer.parseInt(request.getParameter("post_id")));
   stu.setPost_title(request.getParameter("post_title"));
   stu.setPost_content(request.getParameter("post_content"));
   stu.setPost_category(request.getParameter("post_category"));
   stu.setB_id(request.getParameter("post_bgcategory"));
   stu.setBoardgame_img(request.getParameter("boardgame_img"));
   stu.setUser_id(request.getParameter("user_id"));
   
   user1.insert1(stu);
   
   response.sendRedirect("community_list.jsp");

   
   %>
   </jsp:useBean>