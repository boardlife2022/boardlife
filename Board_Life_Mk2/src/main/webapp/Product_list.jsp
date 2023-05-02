<%@ page language="java" contentType="text/html;charset=utf-8" pageEncoding="utf-8"%>
<%
request.setCharacterEncoding("utf-8");
%>
<%@ page import="board.*" %>
<%@ page import="vo.*" %>
<%@ page import="board.Product_cont" %>
<%@ page import="java.util.ArrayList" %>
<link rel="stylesheet" type="text/css" href="css/Product_list2.css">


<script type="text/javascript">

	var elem = document.documentElement;

	function openFullscreen() {
	  if (elem.requestFullscreen) {
	    elem.requestFullscreen();
	  } else if (elem.webkitRequestFullscreen) { /* Safari */
	    elem.webkitRequestFullscreen();
	  } else if (elem.msRequestFullscreen) { /* IE11 */
	    elem.msRequestFullscreen();
	  }
	}
</script>

<body>
<jsp:include page="header.jsp"/>


<section>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>상품 목록</title>
</head>

<div class="main-layout-wrapper">

	<div class="layout-wrapper">

		<div class="enter"><a href="Product_post.jsp" >입점신청</a></div>
		<div class="basket">장바구니(퀵메뉴 fixed)</div>
		<div class="top-menu-line">
			<div class="top-menus">
				<div class="top-menu"><input type="checkbox">단독상품</checkbox>	</div>
				<div class="top-menu"><input type="checkbox">세일상품</div>
				<div class="top-menu"><input type="checkbox">품절제외</div>		
			</div>
		<form action="Product_list_search.jsp" method="post"> <!-- form태그로 값을 보낸다! 정확히는 jsp페이지로 보내지는것.  이 경로를 타고 들어가라 -->
			<div class="searchline">
			
				<select name="tag"> <!-- 워딩에 대한 의미에 너무 깊숙히 생각하지 말자. 리퀘스트겟파라미터로 받는것이 중요.   -->
					<option value="all">전체</option>
					<option value="product">상품별</option>
					<option value="pubname">출판사별</option>
					<option value="designer">다자이너별</option>
				</select>
				<input type="text" name="search" placeholder="상품을 검색해주세요.">
				<input type="submit" value="검색"> <!-- name 이 있는것들은 모두 값이 보내진다. form 안에 있는것들만. -->
			</div>
		</form>
			<!-- post방식은 보내는것 , get 가져오기 -->
<jsp:useBean id="user" class="board.Product_cont">
<%
ArrayList <Product> arru = new ArrayList<Product>();
arru = user.as();
%>

			<div class="count-all">검색된 제품 수:<%=arru.size()%>개
 <!-- arraylist size +1 -->
					<select>
						<option value="">신상품순</option>
						<option value="">높은가격순</option>
						<option value="">낮은가격순</option>
						<option value="">인기도순</option>
						<option value="">리뷰많은순</option>
						<option value="">평가높은순</option>
					</select>
				</div>
			</div>


		
		<div class="product-rank">		

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
				<td>
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
				<div class="product-menu">
					<div class="product-text">최고의 보드게임을 확인해보세요.</div>
					<div class="product-view-all">베스트+</div>
				</div>	


			<div class="product-wrapper">
<% 	
	for(int i=0 ; i<arru.size() ; i++) {
	%>		
			<table>
				<tr>
				<td>
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

				<div class="product-menu">
					<div class="product-text">많은 보드게이머들의 선택을 받은 베스트 상품을 확인하세요.</div>	
					<div class="product-view-all">추천+</div>
				</div>
	
			<div class="product-wrapper">
<% 	
	for(int i=0 ; i<arru.size() ; i++) {
	%>		
			<table>
				<tr>
				<td>
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
</jsp:useBean>			
		</div>
		
	</div>
</div>

</section>

</html>
</body>
<jsp:include page="footer.jsp"/>



