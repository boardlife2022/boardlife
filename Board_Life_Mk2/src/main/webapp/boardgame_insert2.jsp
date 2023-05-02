<%@ page language="java" contentType="text/html;charset=utf-8" pageEncoding="utf-8" %>
<%@page import="java.sql.*"%>
<%@page import="java.util.ArrayList"%>
<%@ page import="board.*" %>
<%@ page import="vo.Boardgames2" %>

<%
request.setCharacterEncoding("utf-8");
%>

 <jsp:useBean id="user1" class="board.Freeboard_cont">
   <%
   Boardgames2 bg = new Boardgames2();
   bg.setB_img(request.getParameter("b_img"));
   bg.setB_id(request.getParameter("b_id"));
   bg.setB_title_kor(request.getParameter("b_title_kor"));
   bg.setB_title_eng(request.getParameter("b_title_eng"));
   bg.setYearof(request.getParameter("yearof"));
   bg.setPnum(request.getParameter("pnum"));
   bg.setRunning_time(request.getParameter("running_time"));
   bg.setAge(request.getParameter("age"));
   bg.setGame_level(Integer.parseInt(request.getParameter("game_level")));
   bg.setSub_lang(request.getParameter("sub_lang"));
   bg.setB_detail(request.getParameter("b_detail"));
   bg.setPublisher(request.getParameter("publisher"));
   bg.setGeeklink(request.getParameter("geeklink"));
   bg.setDesigner(request.getParameter("designer"));
   bg.setB_theme(request.getParameter("b_theme"));
   bg.setProceed(request.getParameter("proceed"));
   
//   user1.insertbg2(bg);
   
   response.sendRedirect("main.jsp");


   %>
   </jsp:useBean>