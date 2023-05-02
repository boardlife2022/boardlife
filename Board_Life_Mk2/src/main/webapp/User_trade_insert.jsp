<%@ page language="java" contentType="text/html;charset=utf-8" pageEncoding="utf-8"%>
<%
request.setCharacterEncoding("utf-8");
%>
<%@page import="java.sql.*"%>
<%@ page import="board.*" %>
<%@ page import="vo.*" %>
<%@ page import="vo.User_trade" %>
<%@ page import="board.User_trade_cont" %>
<%@ page import="java.util.ArrayList" %>


<!DOCTYPE html>

 <html>
  <head>
   <meta charset="utf-8">
   <title>객체 안에 값을 넣어주는 페이지. 인서트하는 메서드</title>
  </head>

  <body><center>
  	<h2>게시글이 작성되었습니다.</h2>
  	<a href = "User_trade_list_page.jsp"><input type="button" value="입력확인"></a></center>
    <jsp:useBean id="user" class="board.User_trade_cont">
      
    <%
   		User_trade ur = new User_trade();

		ur.setUser_id(request.getParameter("user_id"));
		ur.setTr_title(request.getParameter("tr_title"));
		ur.setTr_category(request.getParameter("tr_category"));
		ur.setTr_price(Integer.parseInt(request.getParameter("tr_price")));
		ur.setTr_content(request.getParameter("tr_content"));

		user.in(ur);
	%>

    </jsp:useBean>
  </body>
 </html>