<%@ page language="java" contentType="text/html;charset=utf-8" pageEncoding="utf-8"%>
<%
request.setCharacterEncoding("utf-8");
%>
<%@page import="java.sql.*"%>
<%@ page import="board.*" %>
<%@ page import="board.Basket_cont" %>
<%@ page import="vo.*" %>
<%@ page import="vo.Basket" %>


<!DOCTYPE html>
<html>
<head>
   <meta charset="utf-8">
<title>장바구니 안으로 데이터들이 들어가게 하자</title>
</head>
<body>
<center>
<h2>장바구니에 담겼습니다.</h2>
<a href="Product_basket.jsp"><input type="button" value="확인"></a>
</center>
<jsp:useBean id="user" class="board.Basket_cont">
	<%
	Basket ca = new Basket();
			
		ca.setUser_id(request.getParameter("user_id"));
		ca.setProduct_num(request.getParameter("product_num"));
		int basket_amount  =Integer.parseInt(request.getParameter("basket_amount"));
		
		ca.setBasket_amount(basket_amount);
		ca.setBasket_date(request.getParameter("basket_date"));	
			
		user.in(ca);
	%>
</jsp:useBean>

</body>
</html>