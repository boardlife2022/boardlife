<%@ page language="java" contentType="text/html;charset=utf-8" pageEncoding="utf-8"%>
<%
request.setCharacterEncoding("utf-8");
%>

<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>상품 등록 화면</title>
</head>
<body>
<jsp:include page="header.jsp"/>

<link rel="stylesheet" type="text/css" href="css/Product_post.css">

<jsp:useBean id="user" class="board.Product_cont">

<main>


<form action="Product_input.jsp" method="post">
	<div>상품등록시간 (product_date)<input type="text" name="product_date" size="20" placeholder=""></div>

	<div class="prod_img">
		<div class="prod_hangeul">
			<p class="prod_text">게임이미지</p>
			<p class="prod_text">게임상세설명이미지</p>		
		</div>
		
		<div class="prod_data">
			<span class="prod_text"><input type="text" name="product_img" size="20" placeholder="게임이미지" accept="image/*"></span>
			<span class="prod_text"><input type="text" name="product_detail" size="20" placeholder="상세설명 (사진)" accept="image/*"></span>
		</div>
		
	</div>

	<div class="prod_info">
		<div class="prod_hangeul">
			<p class="prod_text">상품넘버 </p>
			<p class="prod_text">출판사 선택 </p>
			<p class="prod_text">게임 이름 선택 </p>
			<p class="prod_text">간단 요약 </p>
		</div>
		
		<div class="prod_data">
			<p class="prod_text"><input type="text" name="product_num" size="20" placeholder="여섯자리숫자">product_num</p>
			<p class="prod_text"><input type="text" name="product_pub" size="20" placeholder="춢판사">product_pub</p>
			<p class="prod_text"><input type="text" name="product_name" size="20" placeholder="게임명">product_name</p>
			<p class="prod_text"><input type="text" name="product_summary" size="20" placeholder="게임 요약">product_summary</p>
		</div>		
	</div>
	

	<div class="prod_spec">
		<div class="prod_hangeul">
			<p class="prod_text">게임가격</p>
			<p class="prod_text">지원언어</span>
			<p class="prod_text">디자이너</p>
			<p class="prod_text">출시년도</p>
			<p class="prod_text">테마</p>
			<p class="prod_text">진행방식</p>
			<p class="prod_text">게임인원</p>
			<p class="prod_text">가능연령</p>
			<p class="prod_text">러닝타임</p>
			<p class="prod_text">난이도</p>
		</div>
		<div class="prod_data">
			<p class="prod_text"><input type="text" name="product_price" size="20" placeholder="가격">product_price</p>
			<span class="prod_text"><input type="text" name="product_lang" size="20" placeholder="지원언어">product_lang</span>
			<p class="prod_text"><input type="text" name="p_designer" size="30" placeholder="디자이너">p_designer</p>
			<p class="prod_text"><input type="text" name="p_year" size="20" placeholder="출시년도">p_year</p>
			<p class="prod_text"><input type="text" name="p_theme" size="20" placeholder="테마">p_theme</p>
			<p class="prod_text"><input type="text" name="p_proceed" size="20" placeholder="진행방식">p_proceed</p>
			<p class="prod_text"><input type="text" name="p_num" size="20" placeholder="인원수">p_num</p>
			<p class="prod_text"><input type="text" name="p_age" size="20" placeholder="사용연령">p_age</p>
			<p class="prod_text"><input type="text" name="p_runtime" size="20" placeholder="소요시간">p_runtime</p>
			<p class="prod_text"><input type="text" name="p_level" size="20" placeholder="난이도">p_level</p>				
		</div>		
	</div>	
	<div>
		<input type="submit" value="상품등록">
		
		<a href="Product_list.jsp"><input type="button" value="목록"></a>
	</div>
	
</form>
</main>

</jsp:useBean>


</body>
</html>
<jsp:include page="footer.jsp"/>