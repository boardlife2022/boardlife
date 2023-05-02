<%@ page language="java" contentType="text/html;charset=utf-8" pageEncoding="utf-8" %>
<%@page import="java.sql.*"%>
<%@page import="java.util.ArrayList"%>
<%@ page import="board.*" %>
<%@ page import="vo.Boardgames" %>

<%
request.setCharacterEncoding("utf-8");
%>

 <jsp:useBean id="user1" class="board.Freeboard_cont">
   <%
   Boardgames bg = new Boardgames();
   bg.setB_id(request.getParameter("b_id"));
   bg.setB_title(request.getParameter("b_title"));
   bg.setYearof(request.getParameter("yearof"));
   bg.setPrice(Integer.parseInt(request.getParameter("price")));
   bg.setPnum(request.getParameter("pnum"));
   bg.setRunning_time(request.getParameter("running_time"));
   bg.setAge(request.getParameter("age"));
   bg.setB_img(request.getParameter("b_img"));
   bg.setGame_level(Integer.parseInt(request.getParameter("game_level")));
   bg.setDesigner(request.getParameter("designer"));
   bg.setSub_lang(request.getParameter("sub_lang"));
   bg.setB_theme(request.getParameter("b_theme"));
   bg.setProceed(request.getParameter("proceed"));
   bg.setB_detail(request.getParameter("b_detail"));
   bg.setPublisher(request.getParameter("publisher"));
   
   user1.insertbg(bg);
   
   response.sendRedirect("main.jsp");

   
   %>
   </jsp:useBean>