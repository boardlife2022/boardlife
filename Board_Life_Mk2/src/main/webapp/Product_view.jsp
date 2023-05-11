<%@ page language="java" contentType="text/html;charset=utf-8" pageEncoding="utf-8"%>
<%
request.setCharacterEncoding("utf-8");
%>
<%@ page import="board.*" %>
<%@ page import="vo.*" %>
<%@ page import="board.Product_cont" %>
<%@ page import="java.util.ArrayList" %>

<link rel="stylesheet" type="text/css" href="css/Product_view.css">

<script src="https://ajax.googleapis.com/ajax/libs/jquery/2.2.4/jquery.min.js"></script>
<script type="text/javascript" src="js/product_view.js"></script>

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
	
	<table style="width:100%;position:relative;" cellspacing="0" cellpadding="0">
		<tbody>
		<tr></tr>
		<td></td>
		</tbody>
	</table>
	
		<div class="product-num">상품번호: <%=product_num%></div>
			<div class="prod-info">
				<div class="prod-info-l">
					<div class="img-box">
						<img src="img/<%=product_img%>">
					</div>
					<div class="spec-box">
						<div class="img-spec"><img src="img/shop_p_age.png"><span><%=p_age%></span></div>
						<div class="img-spec"><img src="img/shop_p_level.png"><span><%=p_level%></span></div>
						<div class="img-spec"><img src="img/shop_p_num.png"><span><%=p_num%></span></div>
						<div class="img-spec"><img src="img/shop_p_runtime.png"><span><%=p_runtime%></span></div>
					</div>
				</div>
				
				<div class="prod-info-r">
					<b><%=product_pub%></b>
					<b><%=product_name%></b>
					<p class="font_12"><%=product_summary%></p>
					<b><%=product_price%>&nbsp;원</b>
					<div style="padding:0 0 0 5px; border-bottom:1px solid lightgray;"></div>
					<p>무료배송</p>
					<table>
					<tr>
					<td>판매사</td><td>보드라이프</td>
					</tr>
					<td width="100">지원언어</td><td><%=product_lang%></td>
					</table>
					<div style="padding:0 0 0 5px; border-bottom:1px solid lightgray;"></div>
								
					<table width=100%>						
						<tr>
							<td width="100">디자이너</td>
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
					<div style="padding:0 0 0 5px; border-bottom:1px solid lightgray;"></div>
					<div class="order-box">

						<div class="pay-box">
							<div class="pay-ea">
								<span>주문수량</span>
								<div class="pay-amount">
								<input type="image" src="img/shop_pay_left.gif" value="-" name="minus"><img src="img/shop_pay_left.gif">
								<input class="inputstyle" type="text" value="1" size="1" name="amount">
								<input type="image" src="img/shop_pay_right.gif" value="+" name="add"><img src="img/shop_pay_right.gif">
								</div>
								<span name="sell_price"><%=product_price%>&nbsp;원</span>
							</div>
							<div style="padding:0 0 0 680px; border-bottom:1px solid lightgray;"></div>
							<div class="pay-price">
								<span name="sum">결제금액 :&nbsp;<%=product_price%>&nbsp;원</span>
							</div>
						</div>

					</div>
					<div class="btn-box">
						<div class="btn1"><p>즉시구매</p></div>
						<div class="btn2"><p>장바구니</p></div>
					</div>
					
				</div>
			
			</div>
			
<jsp:useBean id="userr" class="board.Product_cont">
<%
ArrayList <Product> arru = new ArrayList<Product>();
arru = userr.as();
%>
			<div class="product-info-bottom">
				<div class="product-info-bottom-text">
					보드게임몰에서 판매되는 신규입고 상품
					<input type=button value=전체보기+>
				</div>
				<div class="product-info-bottom-related">
<% 	
	for(int i=0 ; i<arru.size() ; i++) {
	%>					
					<div class="new-product">
						<a href=""><img class="prod" src="img/<%=arru.get(i).getProduct_img()%>"></a>
						<div class="pub"><%=arru.get(i).getProduct_pub()%></div>
						<a href=""><div><%=arru.get(i).getProduct_name()%></div></a>
						<div><%=arru.get(i).getProduct_price()%>&nbsp;원</div>
					</div>
	<% }%>							
				</div>		
			</div>	
</jsp:useBean>			
			
		</div>
			<img src="img/<%=product_detail%>">
		<div class="sub-layout">
			
		</div>

	</div>



</section>
</html>

</body>
<jsp:include page="footer.jsp"/>