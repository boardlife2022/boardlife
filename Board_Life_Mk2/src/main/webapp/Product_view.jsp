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
<script type="text/javascript" src="js/#"></script>

<script>         
            function increaseQuantity(event) {
                 event.preventDefault(); // 기본 동작 취소
                 var quantityInput = document.getElementById("quantity");
                 var currentQuantity = parseInt(quantityInput.value);
                 quantityInput.value = currentQuantity + 1;
                 updateTotalPrice();
            }

            function decreaseQuantity(event) {
              event.preventDefault(); // 기본 동작 취소
              var quantityInput = document.getElementById("quantity");
              var currentQuantity = parseInt(quantityInput.value);
              if (currentQuantity > 1) {
                quantityInput.value = currentQuantity - 1;
                updateTotalPrice();
              } else {
                alert("최소 주문 수량은 1개입니다.");
              }
            }
            
//             //수량증가감소해야지 쉼표가 생겨서, 화면 들어오자마자 바로 쉼표 설정해주는 거 따로 추가했음.
//             window.onload = function() {
//                  var prodPrice = document.getElementById("prod_price").value;
//                  var formattedProdPrice = numberWithCommas(parseFloat(prodPrice));
//                  var totalPrice = "TOTAL" + "₩" + formattedProdPrice;
//                  document.getElementById("prod_price").value = formattedProdPrice;
//                  document.getElementById("prod_total_price").value = totalPrice;
//                }
            
//             //이게 쉼표넣을 자릿수 설정해주는 거. 위 window.onload랑 같이 있어야 작동하는 듯. 
//             function numberWithCommas(x) { 
//                  return x.toString().replace(/\B(?=(\d{3})+(?!\d))/g, ",");
//                }
            
            //total_price 쉼표 넣어주는 것.
             function updateTotalPrice() {
//                 var prodPrice = parseFloat(document.getElementById("prod_price").value.replace(",", ""));
               var prodPrice = document.getElementByName("sell_price").value;
                 var quantity = document.getElementByName("amount").value;
                var totalPrice = prodPrice * quantity;
                
                 //document.getElementById("prod_total_price").value = "TOTAL₩" + totalPrice.toLocaleString();
                 document.getElementById("sum").value = "TOTAL₩" + totalPrice;
               }
            
         </script>


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
						
						<form id="form1" method="post" action="#">
						
							<div class="pay-ea">
								<span>주문수량</span>
								<div class="pay-amount">
								<input type="image" src="img/shop_pay_left.gif" name="minus"><img src="img/shop_pay_left.gif">
								<input class="inputstyle" type="text" value="1" size="1" name="amount">
								<input type="button" src="img/shop_pay_right.gif" value="+" name="add"><img src="img/shop_pay_right.gif">								
								</div>
								
								<span id="sell_price"><%=product_price%>&nbsp;원</span>
							</div>
							<div style="padding:0 0 0 680px; border-bottom:1px solid lightgray;"></div>
							<div class="pay-price">
								<span id="sum">결제금액 :&nbsp;<%=product_price%>&nbsp;원</span>
							</div>
						</div>

					</div>
					<input type="submit" class="" onclick="Product_basket.jsp">
					<div class="btn-box">
						<a href="#"><div class="btn1"><p>즉시구매</p></div></a>
						<a href="#"><div class="btn2"><p>장바구니</p></div></a>
					</div>
					
						</form>
					
				</div>
			
			</div>
			
<jsp:useBean id="userr" class="board.Product_cont">
<%
ArrayList <Product> arru = new ArrayList<Product>();
arru = userr.as();
%>
			<div class="prod-related-box">
				<div class="product-related-text">
					보드게임몰에서 판매되는 신규입고 상품
					<input type=button value=전체보기+>
				</div>
				<div class="prod-related">
<% 	
	for(int i=0 ; i<arru.size() ; i++) {
	%>					
					<div class="new-product">
						<a href="Product_view.jsp?Product_num=<%=arru.get(i).getProduct_num() %>"><img class="prod" src="img/<%=arru.get(i).getProduct_img()%>"></a>
						<div class="pub"><%=arru.get(i).getProduct_pub()%></div>
						<a href=""><div><%=arru.get(i).getProduct_name()%></div></a>
						<div><%=arru.get(i).getProduct_price()%>&nbsp;원</div>
					</div>
	<% }%>							
				</div>		
			</div>	
</jsp:useBean>
			
		</div>
			
		<div class="sub-layout">
			<img src="img/<%=product_detail%>">
		</div>

	</div>



</section>
</html>

</body>
<jsp:include page="footer.jsp"/>