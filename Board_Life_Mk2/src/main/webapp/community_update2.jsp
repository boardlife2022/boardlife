<%@ page language="java" contentType="text/html;charset=utf-8" pageEncoding="utf-8" %>
<%@ page import="java.sql.*"%>
<%@ page import="java.util.ArrayList"%>
<%@ page import="board.*" %>
<%@ page import="vo.*" %>
<%
 request.setCharacterEncoding("utf-8");
%>

 <jsp:useBean id="user" class="board.Freeboard_cont">
   <%
   Community comu = new Community();
   comu.setPost_id(Integer.parseInt(request.getParameter("post_id")));
   comu.setPost_title(request.getParameter("post_title"));
   comu.setPost_content(request.getParameter("post_content"));
   comu.setPost_category(request.getParameter("post_category"));
   comu.setB_id(request.getParameter("post_bgcategory"));
   user.update(comu);
   
   response.sendRedirect("community_list.jsp");
   %>
   </jsp:useBean>