<%@ page language="java" contentType="text/html;charset=utf-8" pageEncoding="utf-8"%>
<%
request.setCharacterEncoding("utf-8");
%>
<%@ page import="board.*" %>
<%@ page import="vo.*" %>
<%@ page import="board.Basket_cont" %>
<%@ page import="java.util.ArrayList" %>


<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>장바구니 상품 삭제 메소드 호출</title>
</head>
<body>
<jsp:useBean id="user" class="board.Basket_cont">

<%
	int s = Integer.parseInt(request.getParameter("basket_no"));
	user.del(s);
	RequestDispatcher dispatcher = request.getRequestDispatcher("Product_basket.jsp");
	dispatcher.forward(request, response);
%>

</jsp:useBean>
</body>
</html>