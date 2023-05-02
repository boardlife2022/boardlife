<%@ page language="java" contentType="text/html;charset=utf-8" pageEncoding="utf-8"%>
<%
request.setCharacterEncoding("utf-8");
%>

<%@ page import="java.sql.*"%>
<%@ page import="board.*" %>
<%@ page import="board.Product_cont" %>
<%@ page import="vo.*" %>
<%@ page import="vo.Product" %>
<%@ page import="java.util.ArrayList" %>


<!DOCTYPE html>
<html>
<head>
   <meta charset="utf-8">
<title>객체안에 값을 넣어주는 페이지</title>
</head>
<body>
<center>
<h2>게시글이 작성되었습니다.</h2>

<a href = "Product_list.jsp"><input type="button" value="입력확인"></a></center>
<jsp:useBean id="user" class="board.Product_cont">
	<%
		Product pd = new Product();
	
		pd.setProduct_date(request.getParameter("product_date"));
		pd.setProduct_num(request.getParameter("product_num"));
		pd.setProduct_pub(request.getParameter("product_pub"));
		pd.setProduct_name(request.getParameter("product_name"));
		pd.setProduct_img(request.getParameter("product_img"));
		pd.setProduct_summary(request.getParameter("product_summary"));
		pd.setProduct_detail(request.getParameter("product_detail"));
		pd.setProduct_price(Integer.parseInt(request.getParameter("product_price")));
		pd.setProduct_lang(request.getParameter("product_lang"));
		pd.setP_designer(request.getParameter("p_designer"));
		pd.setP_year(request.getParameter("p_year"));
		pd.setP_theme(request.getParameter("p_theme"));
		pd.setP_proceed(request.getParameter("p_proceed"));
		pd.setP_num(request.getParameter("p_num"));
		pd.setP_age(request.getParameter("p_age"));
		pd.setP_runtime(request.getParameter("p_runtime"));
		pd.setP_level(request.getParameter("p_level"));
		
		user.in(pd);
	%>


</jsp:useBean>


</body>
</html>
