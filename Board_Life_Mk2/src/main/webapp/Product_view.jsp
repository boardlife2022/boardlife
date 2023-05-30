<%@ page language="java" contentType="text/html;charset=utf-8"
	pageEncoding="utf-8"%>
<%
request.setCharacterEncoding("utf-8");
%>
<%@ page import="board.*"%>
<%@ page import="vo.*"%>
<%@ page import="board.Product_cont"%>
<%@ page import="java.util.ArrayList"%>

<jsp:include page="header.jsp" />

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


<link rel="stylesheet" type="text/css" href="css/Product_view.css">

<script>
	
		// 함수에 사용되는 변수 선언
		var quantityInput;
		var currentQuantity;
		var qant;
		var price;
		var sum_to;
		var Sprice;
		var SpriceVal;
		var totalPrice;
		var Stotal;
		
		window.onload = function() {
			// 문서가 다 만들어지고 난 다음에 함수를 실행한다는 의미 
			
		    Sprice = document.getElementById("sell_price");
		    SpriceVal = Sprice.textContent;
		    Stotal = document.getElementById('sum_total');
		};

		function increaseQuantity(event) {
			// 수량 버튼 증가를 눌렀을 경우 실행되는 함수 
			
			event.preventDefault(); // 기본 동작 취소
			quantityInput = document.getElementById("amount");
			// 수량을 담아두는 변수
			
			currentQuantity = parseInt(quantityInput.value);
			// 현재 수량을 표시하는 변수
			
			quantityInput.value = currentQuantity + 1;
			// 현재 수량 +1 을 하는 코드
			
			totalPrice = SpriceVal * quantityInput.value;
			// 물건의 가격 * 현재수량의 결과는 물건의 총 가격
			
			//console.log("SpriceVal : " + SpriceVal);
			//console.log("quantity : " + quantityInput.value);
			//console.log("total : " + totalPrice);
			//console.log("sum_total : " + Stotal.textContent);
			// console 무덤
			
			sum_total.textContent = totalPrice;
			// 위의 코드에서 얻은 결과를 html값으로 반영
		}

		function decreaseQuantity(event) {
			// 수량버튼 감소를 눌렀을 경우 실행되는 함수
			event.preventDefault(); // 기본 동작 취소
			quantityInput = document.getElementById("amount");
			currentQuantity = parseInt(quantityInput.value);
			if (currentQuantity > 1) {
				quantityInput.value = currentQuantity - 1;
				totalPrice = SpriceVal * quantityInput.value;
				sum_total.textContent = totalPrice;
			} else {
				alert("최소 주문 수량은 1개입니다.");
			}
		}
		
		$(document).ready(function() {

		//             $('amount').on("change",function(){
		//             	var qant = document.getElementById("amount").val();
		//             	var price = document.getElementById("sell_price").innerText;

		//             	var sum_to = qant * price;

		//             	document.getElementById("sum_total").value = "TOTAL₩" + sum_to;

		//             })

		$('#amount').on("change", function() {
			qant = $("#amount").val();
			price = $("#sell_price").text();

			sum_to = qant * price;

			$("#sum_total").val("TOTAL₩" + sum_to);
		});

	});
</script>


<jsp:useBean id="user" class="board.Product_cont" />
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

	<div class="main-layout-wrapper">
		<div class="top-menu">홈 > 보드게임 > 한글판 게임</div>
		<div class="main-layout">

			<table style="width: 100%; position: relative;" cellspacing="0"
				cellpadding="0">
				<tbody>
					<tr></tr>
					<td></td>
				</tbody>
			</table>

			<div class="product-num">
				상품번호:
				<%=product_num%></div>
			<div class="prod-info">
				<div class="prod-info-l">
					<div class="img-box">
						<img src="img/<%=product_img%>">
					</div>
					<div class="spec-box">
						<div class="img-spec">
							<img src="img/shop_p_age.png"><span><%=p_age%></span>
						</div>
						<div class="img-spec">
							<img src="img/shop_p_level.png"><span><%=p_level%></span>
						</div>
						<div class="img-spec">
							<img src="img/shop_p_num.png"><span><%=p_num%></span>
						</div>
						<div class="img-spec">
							<img src="img/shop_p_runtime.png"><span><%=p_runtime%></span>
						</div>
					</div>
				</div>
			<form action="Product_basket_input.jsp" id="form1" method="post">
				<div class="prod-info-r">
					<b><%=product_name%></b> <b><%=product_pub%></b>
					<p class="font_12"><%=product_summary%></p>
					<b><%=product_price%>&nbsp;원</b>
					<div
						style="padding: 0 0 0 5px; border-bottom: 1px solid lightgray;"></div>
					<p>무료배송</p>
					<table>
						<tr>
							<td>판매사</td>
							<td>보드라이프</td>
						</tr>
						<td width="100">지원언어</td>
						<td><%=product_lang%></td>
					</table>
					<div
						style="padding: 10px 0 10px 5px; border-bottom: 1px solid lightgray;"></div>

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
					<div
						style="padding: 10px 0 0 5px; border-bottom: 1px solid lightgray;"></div>
					<div class="order-box">

						<div class="pay-box">



								<div class="pay-ea">
									<span>주문수량</span>
									<div class="pay-amount">
										<a href="#" onclick="decreaseQuantity(event)"><img
											src="img/shop_pay_left.gif"></a> <input class="inputstyle"
											type="text" value="1" size="1" id="amount" name="basket_amount">
										<a href="#" onclick="increaseQuantity(event)"><img
											src="img/shop_pay_right.gif"></a>
									</div>

									<p><span id="sell_price"><%=product_price%></span>&nbsp;원</p>
								</div>
								<div
									style="padding: 0 0 0 680px; border-bottom: 1px solid lightgray;"></div>
								<div class="pay-price">
									<p>결제금액 :&nbsp;<span id="sum_total"><%=product_price%></span>&nbsp;원
									</p>
								</div>
						</div>

					</div>
					<div class="btn-box">
						<a href="#">
							<div class="btn1">
								<p>즉시구매</p>
							</div>
						</a> 
<%-- 					<a href="Product_basket_input.jsp?basket_num=<%=amount%>"> --%>
							<input type= "submit" class="btn2" value="장바구니">
<!-- 					</a> -->
					</div>
				</div>
			</form>
		</div>

			<jsp:useBean id="userr" class="board.Product_cont">
				<%
				ArrayList<Product> arru = new ArrayList<Product>();
				arru = userr.as();
				%>
				<div class="prod-related-box">
					<div class="product-related-text">
						보드게임몰에서 판매되는 신규입고 상품 <input type=button value=전체보기+>
					</div>
					<div class="prod-related">
						<%
						for (int i = 0; i < arru.size(); i++) {
						%>
						<div class="new-product">
							<a
								href="Product_view.jsp?Product_num=<%=arru.get(i).getProduct_num()%>"><img
								class="prod" src="img/<%=arru.get(i).getProduct_img()%>"></a>
							<div class="pub"><%=arru.get(i).getProduct_pub()%></div>
							<a href=""><div><%=arru.get(i).getProduct_name()%></div></a>
							<div><%=arru.get(i).getProduct_price()%>&nbsp;원
							</div>
						</div>
						<%
						}
						%>
					</div>
				</div>
			</jsp:useBean>

		</div>

		<div class="sub-layout">
			<img src="img/<%=product_detail%>">
		</div>

	</div>
</section>

<jsp:include page="footer.jsp" />