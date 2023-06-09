<%@page import="javax.tools.DocumentationTool.Location"%>
<%@ page language="java" contentType="text/html;charset=utf-8" pageEncoding="utf-8"%>
<%
request.setCharacterEncoding("utf-8");
%>
<%@page import="java.sql.*"%>
<%@ page import="board.*" %>
<%@ page import="vo.*" %>
<%@ page import="board.Basket_cont" %>
<%@ page import="java.util.ArrayList" %>

<link rel="stylesheet" type="text/css" href="css/Product_basket.css">    
<jsp:include page="header.jsp"/>
<jsp:useBean id="userr" class="board.Product_cont"/>
<jsp:useBean id="user" class="board.Basket_cont"/>   

<%
String login = (String)session.getAttribute("LOGIN"); 
String id = (String) session.getAttribute("ID");
String name = (String) session.getAttribute("NAME");
 boolean member = false;
 if(login == null||login ==""){
	 response.sendRedirect("login_page.jsp");
 }
%>




<section>

<form action="Product_basket.jsp" method="post">
    <div class="main-Layout-wrapper">
    	<div class="top-menu">
    		<h2>장바구니</h2>
    		<span class="process"><h4>장바구니 </h4>&nbsp;<h5>	>	주문결제	>	주문완료</h5></span>
    	</div>
    	<div class="main-Layout">
    		<table>
   				<colgroup>
   					<col style="width: 5%"/>
   					<col style="width: 20%"/>
   					<col style="width: 10%"/>
   					<col style="width: 25%"/>
   					<col style="width: 10%"/>
   					<col style="width: 10%"/>
   					<col style="width: 20%"/>
   				</colgroup>
    			<tbody>
    				<tr>
    					<td></td>
    					<td>상품명</td>
    					<td>상품번호</td>
    					<td>상품이미지</td>
    					<td>수량</td>
    					<td>가격</td>
    					<td>합계</td>
    				</tr>

	<%

		
		ArrayList<Basket> arru = new ArrayList<Basket>();
		arru = user.as(id);
		int total = 0;

		for(int i=0 ; i<arru.size() ; i++){
			Product pd = userr.as1(arru.get(i).getProduct_num());
//			Basket bk = new Basket();
//			Basket bk =  user.is();
			
//			String user_id = bk.getUser_id();
//			String product_num = bk.getProduct_num();
//			int basket_amount = bk.getBasket_amount();
//			String basket_date = bk.getBasket_date();	
			int sum = arru.get(i).getBasket_amount()*pd.getProduct_price();
			total = total + sum;
// 			total += aa;
	%>

    				
    				<tr>
    					<td><input type="image" src="img/basket_delete.png"  name="basket_no"></td>
    					<td><input type="hidden" value=<%=pd.getProduct_name() %> name="product_name"><%=pd.getProduct_name() %></td>   					 					
    					<td><input type="hidden" value=<%=arru.get(i).getProduct_num() %> name="product_num"><%=arru.get(i).getProduct_num() %></td>
    					<td><img src="img/<%=pd.getProduct_img() %>"></td>     					
    					<td><input type="hidden" value=<%=arru.get(i).getBasket_amount() %> name="basket_amount"><%=arru.get(i).getBasket_amount() %>&nbsp;개</td>
    					<td><input type="hidden" value=<%=pd.getProduct_price() %> name="product_price"><%=pd.getProduct_price() %>&nbsp;원</td>
    					<td><input type="hidden" value=<%=sum%>><%=sum%>&nbsp;원</td>
    				</tr>
    				
    	<% }%>
    				<tr>
    					<td/>
    					<td/>
    					<td/>
    					<td/>
    					<td/>
    					<td/>
    					<td>총 주문금액 : 
    					<%=total%>&nbsp;원 
    					</td>
       				</tr>
       				    	    			
    			</tbody>
    		
    		</table>
			<div class="btn-box">
			<input type="button" value="결제" class="btn1">			
			</div>
    	</div>

    
    </div>
    


</form>
</section>

<jsp:include page="footer.jsp"/>