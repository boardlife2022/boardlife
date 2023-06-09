<%@ page language="java" contentType="text/html;charset=utf-8" pageEncoding="utf-8"%>
<%
request.setCharacterEncoding("utf-8");
%>
<%@ page import="board.*" %>
<%@ page import="vo.*" %>
<%@ page import="board.Product_cont" %>
<%@ page import="java.util.ArrayList" %>
<link rel="stylesheet" type="text/css" href="css/Product_list.css">

<script type="text/javascript" src="js/product_list.js"></script>
<jsp:include page="header.jsp"/>

<%
String id = (String) session.getAttribute("ID");
%>

<section>

<div>

	<div class="layout-wrapper">

			<div class="main_slider">
			
				<div class="inner_slider">

				<div class="slider_show">
					<ul class="banner_wrap clearfix">
						<li class="banner">
						<img src="img/shop_banner02.png">
						</li>
						
						<li class="banner">
						<img src="img/shop_banner03.png">
						</li>
						
						<li class="banner">
						<img src="img/shop_banner04.png">
						</li>
						
						<li class="banner">
						<img src="img/shop_banner05.png">
						</li>
						
						<li class="banner">
						<img src="img/shop_banner06.png">
						</li>
					</ul>
				</div>
			
				</div>
			
			</div>

		<div class="moving">	
			<div class="enter"><a href="Product_post.jsp"><p>입점신청</p><img src="img/shop_enter1.png"></a></div>
			<div class="basket"><a href="Product_basket.jsp?id=<%=id%>"><p>장바구니</p><img src="img/shop_basket.png"></a></div>		
		</div>
		
		<div class="top-menu-line">
			<div class="top-menus">

				<div class="top-menu"><input type="checkbox"><span style="padding-left:10px;">품절제외</span></div>		
			</div>
		<form action="Product_list_search.jsp" method="post"> <!-- form태그로 값을 보낸다! 정확히는 jsp페이지로 보내지는것.  이 경로를 타고 들어가라 -->

			
			<div class="searchline">
				
				<div style="padding:0 0 0 5px; border-bottom:3px solid #76cc1e;">
				<select class="selec" name="tag" style="border:0;"> <!-- 워딩에 대한 의미에 너무 깊숙히 생각하지 말자. 리퀘스트겟파라미터로 받는것이 중요.   -->
					<option value="all">전체</option>
					<option value="product">상품별</option>
					<option value="pubname">출판사별</option>
					<option value="designer">다자이너별</option>
				</select>
				
				<input type="text" name="search" class="search" style="border:0;">								
				<input class="dotbogi" type="image" src="img/shop_search_btn.png" value="검색" style="border:0;"> <!-- name 이 있는것들은 모두 값이 보내진다. form 안에 있는것들만. -->

				</div>
			</div>
		</form>
			<!-- post방식은 보내는것 , get 가져오기 -->
<jsp:useBean id="user" class="board.Product_cont">
<%
ArrayList <Product> arru = new ArrayList<Product>();
ArrayList <Product> arruu = new ArrayList<Product>();
arru = user.as();
arruu = user.ass();
%>

			<div class="count-all">전체 제품 수:&nbsp;<%=arru.size() + arruu.size()%>개
 <!-- arraylist size +1 -->

				</div>
			</div>
			

			
		<div class="product-rank">		
				<h2>신규 상품</h2>
				<div class="product-menu">
					<div class="product-text">Board Life Market에 입고된 신작과 재입고 상품을 확인하세요.</div>
					<button class="product-view-all">신규+</button>
				</div>


			<div class="product-wrapper">
<% 	
	for(int i=0 ; i<arru.size() ; i++) {
	%>		
			<table>
				<tr>
				<td class = "productB">
				<span class="green-number"><%=i+1%></span>
				<div class="product-box">
					<p hidden><%=arru.get(i).getProduct_num()%></p>
					<a href="Product_view.jsp?Product_num=<%=arru.get(i).getProduct_num() %>">
						<div class="prod-img" name="product_img"><img class="prod" src="img/<%=arru.get(i).getProduct_img()%>"></div></a>
					<p><%=arru.get(i).getProduct_pub()%></p>
					<a href="Product_view.jsp?Product_num=<%=arru.get(i).getProduct_num() %>">
						<p class="game-name"><%=arru.get(i).getProduct_name()%></p></a>
					<div class="price-container"><span class="price"><span class="won">₩</span><%=arru.get(i).getProduct_price()%></span></div>
					<p class="review">리뷰</p>
				</div>
				</td>
				</tr>
			</table>
	
	<% }%>
			</div>		
		</div>
		
			
		<div class="product-rank">
				<h2>베스트 상품</h2>
				<div class="product-menu">
					<div class="product-text">최고의 보드게임을 확인해보세요.</div>
					<button class="product-view-all">베스트+</button>
				</div>	


			<div class="product-wrapper">
<% 	
	for(int i=0 ; i<arruu.size() ; i++) {
	%>		
			<table>
				<tr>
				<td class = "productB">
				<span class="green-number"><%=i+1%></span>
				<div class="product-box">
					<p hidden><%=arruu.get(i).getProduct_num()%></p>
					<a href="Product_view.jsp?Product_num=<%=arruu.get(i).getProduct_num() %>">
						<div class="prod-img" name="product_img"><img class="prod" src="img/<%=arruu.get(i).getProduct_img()%>"></div></a>
					<p><%=arruu.get(i).getProduct_pub()%></p>
					<a href="Product_view.jsp?Product_num=<%=arruu.get(i).getProduct_num() %>">
						<p class="game-name"><%=arruu.get(i).getProduct_name()%></p></a>
					<div class="price-container"><span class="price"><span class="won">₩</span><%=arruu.get(i).getProduct_price()%></span></div>
					<p class="review">리뷰</p>
				</div>
				</td>
				</tr>
			</table>	
	<% }%>
			</div>		
		</div>
		
</jsp:useBean>			
		
		
	</div>
</div>

</section>


<jsp:include page="footer.jsp"/>



