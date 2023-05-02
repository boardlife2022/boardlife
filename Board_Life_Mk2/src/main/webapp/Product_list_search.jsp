<%@ page language="java" contentType="text/html;charset=utf-8" pageEncoding="utf-8"%>
<%
request.setCharacterEncoding("utf-8");
%>
<%@ page import="board.*" %>
<%@ page import="vo.*" %>
<%@ page import="board.Product_cont" %>
<%@ page import="java.util.ArrayList" %>
<link rel="stylesheet" type="text/css" href="css/Product_list.css">
<!DOCTYPE html>
<html>
<jsp:include page="header.jsp"/>

<head>
<meta charset="UTF-8">
<title>상품 목록</title>
</head>

<style>
.warp{
margin:0 auto;
}
</style>


<body>
<div class="main-layout-wrapper">


	<div class="layout-wrapper">

		<div class="enter">입점신청</div>
		<div class="basket">장바구니(퀵메뉴 fixed)</div>
		<div class="product-menu">
			<div class="product-menu123">
				<div class="product-menu1"><input type="checkbox">단독상품</checkbox>	</div>
				<div class="product-menu2"><input type="checkbox">세일상품</div>
				<div class="product-menu3"><input type="checkbox">품절제외</div>		
			</div>
		<jsp:useBean id="user" class="board.Product_cont">
		<form action="Product_list_search.jsp" method="post"> <!-- 이 경로를 타고 들어가라 -->
			<div class="searchline">
			
				<select name="tag">
					<option value="all">전체</option>
					<option value="product">상품별</option>
					<option value="pubname">출판사별</option>
					<option value="designer">디자이너별</option>
				</select>
				<input type="text" name="search" placeholder="상품을 검색해주세요.">
				<input type="submit" value="검색">
			</div>
		</form>
	</div>



<%
String value = request.getParameter("tag"); // ?value 에 담다 getParmeter로 가져온 tag 값을? 
String search = request.getParameter("search"); // ?search에 담다 getParameter로 가져온 search 값을?

ArrayList <Product> arru = new ArrayList<Product>();

String search_product = null; //초기화 ex) db작업을 하면 트라이 캐치를 걸잔아. 초기화를 왜 시키냐면, 전역변수 때문에.. (미리 선언해두고)
String search_pubname = null; //초기화
String search_pdesigner = null; //초기화

//select name 자체가 하나의 태그 값, 즉 name값이 필요합니다. 
//name이 market_tag <select name="market_tag"> 일 경우, 그 값을 불러옵니다.
// option들은 각각의 value로 값이 "all"이거나, "product", "pbname" 이런 식으로 가져옵니다.
/*

<select name="tag">
	<option value="all">
	<ottion value="product">
	<ottion value="pbname">
 </select>
 
 <input type="text" name="search">
request.getParameter("search");
 

 request.getParameter("tag"); 태그를 불러오면, value를 가져올 수 있음.


*/
//string 값으로 all과 동일한 문자열일때
if(value.equals("all")){ 
	search_product = search; // search_product 에만 반응한다.?
	search_pubname = search;
	search_pdesigner = search;
}else if(value.equals("product")){
	search_product = search;
}else if(value.equals("pubname")){
	search_pubname = search;
}else if(value.equals("designer")){
	search_pdesigner = search;
}
	

arru = user.search(search_product,search_pubname,search_pdesigner); //출판사,상품명

%>

			<div class="product-menu4">검색된 제품 수:<%=arru.size()%>개
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
			
			
		<div class="product-new">		
			<div class="pntt">
				<div class="product-new-menu">
					<div class="product-new-title">신규 상품</div>
					<div class="product-new-view-all">전체보기+</div>
				</div>
				<div class="product-new-text">신규 상품란에 대한 설명입니다.</div>
			</div>

	<div class="rank-new-wrapper">
<% 	
	if(arru.size() > 0){	
	for(int i=0 ; i<arru.size() ; i++) { 
	%>		
				<table>
				<td>
				<div class="new-product1">
					<p><%=arru.get(i).getProduct_num()%></p>
					<a href="Product_view.jsp?Product_num=<%=arru.get(i).getProduct_num() %>">
						<div class="np-img1" name="product_img"><img class="prod" src="img/<%=arru.get(i).getProduct_img()%>"></div></a>
					<p><%=arru.get(i).getProduct_pub()%></p>
					<a href="Product_view.jsp?Product_num=<%=arru.get(i).getProduct_num() %>">
						<p><%=arru.get(i).getProduct_name()%></p></a>
					<p><%=arru.get(i).getProduct_price()%></p>
					<p>리뷰</p>
				</div>
				</td>
				</table>
	
	<% 
	} 
		}else{
			
			%>
			
		<div>결과값이 없습니다.</div>
			
	 <%
		}		
	%>
	
	</div>
</jsp:useBean>
	</div>
</div>
</div>







</div>
</body>
</html>
<jsp:include page="footer.jsp"/>
