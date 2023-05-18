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
   String a = request.getParameter("post_id");
   user.delete(a);
   
   response.sendRedirect("community_list.jsp");
   %>
   </jsp:useBean>