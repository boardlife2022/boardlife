<%@ page language="java" contentType="text/html;charset=utf-8" pageEncoding="utf-8"%>
<%
request.setCharacterEncoding("utf-8");
%>
<%@ page import="board.*" %>
<%@ page import="vo.*" %>
<%@ page import="board.Product_cont" %>

<link rel="stylesheet" type="text/css" href="css/Product_view.css">

<body>
<jsp:include page="header.jsp"/>

<jsp:useBean id="user" class="board.Product_cont"/>
<%
	String product_num = request.getParameter("Product_num");

	Product pd = new Product();
	pd = user.as1(product_num); // 개별출력하는 메서드를 불러와야 한다. 그러기 위해 컨트롤러 파일에 개별출력 메서드를 만들어야.. 
	// as1 이라는 메서드에 product_num 이라는 변수를 넣겠다. 
		String product_pub = pd.getProduct_pub();
		String product_name = pd.getProduct_name();
		String product_summary = pd.getProduct_summary();
		int product_price = pd.getProduct_price();
		String product_lang = pd.getProduct_lang();
		String product_date = pd.getProduct_date();
		String p_designer = pd.getP_designer();
		String p_year = pd.getP_year();
		String p_theme = pd.getP_theme();
		String p_proceed = pd.getP_proceed();
		String product_img = pd.getProduct_img();
		String p_num = pd.getP_num();
		String p_age = pd.getP_age();
		String p_runtime = pd.getP_runtime();
		String p_level = pd.getP_level();
		String product_detail = pd.getProduct_detail();
%>

<section>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>상품 상세</title>
</head>



<div class="main-layout-wrapper">
	<div class="top-menu">홈 > 보드게임 > 한글판 게임</div>
	<div class="main-layout">
		<div class="product-num">상품번호: <%=product_num%></div>
		<div class="product-info">
			<div class="product-info-rl">		
				<div class="product-info-left">
					<div class="product-info-left-productimg"><img class="prod" src="img/<%=product_img%>"> : <%=product_img%></div>
					<div class="product-info-left-middle">
						<div class="product-info-left-middle-pnum"><%=p_num%></div>
						<div class="product-info-left-middle-age"><%=p_age%></div>
						<div class="product-info-left-middle-runtime"><%=p_runtime%></div>
						<div class="product-info-left-middle-difficulty"><%=p_level%></div>
					</div>
					<div class="product-info-left-banner"><img src="img/shop_product_view_logo.jpg"></div>
				</div>
			
				<div class="product-info-right">
					<div class="product-info-right-publisher">출판사 : <%=product_pub%></div>
					<div class="product-info-right-gname">게임명 : <%=product_name%></div>
					<div class="product-info-right-explain">요약 : <%=product_summary%></div>
					<div class="product-info-right-price">가격 : <%=product_price%></div>
					<div class="product-info-right-memprice">회원가</div>
					<div class="product-info-right-save-point">300마일리지 적립</div>
					<div class="product-info-right-order1">내일 출발</div>
					<div class="product-info-right-order2">무료배송!!</div>
					<div class="product-info-right-sub-lang">지원언어 : <%=product_lang%> </div>
					<div class="product-info-right-mileage">마일리지 혜택</div>
					<div class="product-info-right-picreview">포토상품평</div>
					<div class="product-info-right-review">일반상품평</div>
					<div class="product-info-right-reviewguidetext">상품평은 게임 구매 후 작성할 수 있습니다.</div>
					<table width=100%>					
						<tr>
							<td width="100" class="font13">게임분류</td>
							<td class="no-info">정보없음</td>
						</tr>	
						<tr>
							<td>디자이너</td>
							<td><%=p_designer%></td>
						</tr>
						<tr>
							<td>출시년도</td>
							<td><%=p_year%></td>
						</tr>
						<tr>
							<td>게임테마</td>
							<td><%=p_theme%></td>
						</tr>
						<tr>
							<td>진행방식</td>
							<td><%=p_proceed%></td>
						</tr>
					</table>

					<div class="product-info-right-pay">
						<div class="product-info-right-pay-box1">
							<div class="product-info-right-pay-box1-top">
								<div class="product-info-right-pay-box1-top1">주문수량</div>
								<div class="product-info-right-pay-box1-top2">n 개</div>
								<div class="product-info-right-pay-box1-top3">22,000원</div>
							</div>
							<div class="product-info-right-pay-box1-bottom">결제금액: 22,000원</div>
						</div>
						<div class="product-info-right-pay-box2">
							<div class="product-info-right-pay-box2-btn"><img src="img/shop_product_view_btn1.jpg"><a href="Order_list.jsp"></a></div>
							<div class="product-info-right-pay-box2-btn"><img src="img/shop_product_view_btn2.gif"></div>						
						</div>
					</div>					
				</div>
			</div>
				
			<div class="product-info-bottom">
				<div class="product-info-bottom-text">
					보드게임몰에서 판매되는 신규입고 상품
					<input type=button value=전체보기+>
				</div>
				<div class="product-info-bottom-related">
					<div class="new-product">
						<div class="np-img"></div>
					</div>
					<div class="new-product">
						<div class="np-img"></div>
					</div>
					<div class="new-product">
						<div class="np-img"></div>
					</div>
					<div class="new-product">
						<div class="np-img"></div>
					</div>
					<div class="new-product">
						<div class="np-img"></div>
					</div>
					<div class="new-product">
						<div class="np-img"></div>
					</div>
					<div class="new-product">
						<div class="np-img"></div>
					</div>							
				</div>		
			</div>
		</div>
		<div class="sub-Layout1">
		</div>
	</div>

</div>

</section>
</html>

</body>
<jsp:include page="footer.jsp"/>