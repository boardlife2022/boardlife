<%@ page language="java" contentType="text/html;charset=utf-8" pageEncoding="utf-8"%>
<%
request.setCharacterEncoding("utf-8");
%>
<%@ page import="board.*" %>
<%@ page import="vo.*" %>
<%@ page import="board.User_trade_cont" %>
<%@ page import="java.util.ArrayList" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>삭제 메소드 호출</title>
</head>
<body>
<jsp:useBean id="user" class="board.User_trade_cont">

<%
	int s = Integer.parseInt(request.getParameter("trpost_num")); 
	user.del(s);
	RequestDispatcher dispatcher = request.getRequestDispatcher("User_trade_list_page.jsp");
	dispatcher.forward(request, response);
%>

</jsp:useBean>
</body>
</html>