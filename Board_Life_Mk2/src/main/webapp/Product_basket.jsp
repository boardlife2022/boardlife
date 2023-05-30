<%@ page language="java" contentType="text/html;charset=utf-8" pageEncoding="utf-8"%>
<%
request.setCharacterEncoding("utf-8");
%>
<%@page import="java.sql.*"%>
<%@ page import="board.*" %>
<%@ page import="vo.*" %>
<%@ page import="board.Basket_cont" %>

<link rel="stylesheet" type="text/css" href="css/Product_basket.css">    
<jsp:include page="header.jsp"/>      
    
<%
String login = (String)session.getAttribute("LOGIN"); 
 boolean member = false;
 String id = "";
 String name = "";

 if(login != null){
	 id = (String) session.getAttribute("ID");
	 name = (String) session.getAttribute("NAME");
	 member = true;
 }
%>    

<section>
    <div class="main-Layout-wrapper">
    	<div class="top-menu">
    		<h2>장바구니</h2>
    		<h4>장바구니 > 주문결제 > 주문완료</h4>
    	</div>
    	<div class="main-Layout">
    		<table>
    			<tbody>
    				<tr>
    					<td>판매자</td>
    					<td>상품명</td>
    					<td>수량</td>
    					<td>총주문금액</td>
    				</tr>
    				
<jsp:useBean id="user" class="board.Basket_cont">
<%

	Basket bk = new Basket();
	
	String user_id = bk.getUser_id();
	String product_num = bk.getProduct_num();
	int basket_amount = bk.getBasket_amount();
	String basket_date = bk.getBasket_date();	
%>
    				
    				<tr>
    					<td>보드게임몰</td>
    					<td><div>상품이미지</div>
    					<a href=""></a>
    					<%=product_num %>상품이름</td>
    					<td><%=basket_amount%>n개</td>
    					<td><% %>-----원</td>
    				</tr>
</jsp:useBean>
    			
    			</tbody>
    		
    		</table>
    	
    	</div>


  
    
    </div>
    



</section>

<jsp:include page="footer.jsp"/>