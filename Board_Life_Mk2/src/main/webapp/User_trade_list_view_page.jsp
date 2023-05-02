<%@ page language="java" contentType="text/html;charset=utf-8" pageEncoding="utf-8"%>
<%request.setCharacterEncoding("utf-8");%>
<%@page import="java.sql.*"%>
<%@ page import="board.*" %>
<%@ page import="vo.*" %>
<%@ page import="board.User_trade_cont" %>
<%@ page import="java.util.ArrayList" %>


<!DOCTYPE html>
<html>
<head></head>
<meta charset="UTF-8">
<link rel="stylesheet" type="text/css" href="css/User_trade_list_view_page.css">
<title>게시글 상세</title>
	<body>
	
	<jsp:include page="header.jsp"/>
	
	
<jsp:useBean id="user" class="board.User_trade_cont"/>

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
<% 	
	String trpost_num = request.getParameter("Trpost_num");

	User_trade ut = new User_trade(); 
	ut = user.us1(trpost_num);

		String mody_id = ut.getUser_id(); // java에서는 변수값을 String으로 저장하고, jsp 에서는 변수값을 var로 저장한다. 가져와야 하니까, setUser_id가 아닌 getUser_id
		String mody_title = ut.getTr_title();
		String mody_category = ut.getTr_category();
		int mody_price = ut.getTr_price();
		String mody_content = ut.getTr_content();
%>	


<form action="User_trade_list_page.jsp" method="post" encType="">
	<div class="totalBoard">

		<div class="board_section">
			<div class="post_title">
				<h2>중고장터 <span>Second Hand Market</span></h2>
					<div class="innerhead">
		
<!--	  	중고거래 글번호:<input type="text" name="trpost_num" size="" ><br> -->
						<div class="box4">
							<select name="tr_category" id="" >
								<option class="sell" value="판매">판매</option>
								<option class="buy" value="구매">구매</option>
								<option class="exchange" value="교환">교환</option>
								<option class="share" value="나눔">나눔</option>							
							</select>
						</div>
      					<div class="box1"> <input readonly type="text" name="tr_title" size="50" value="<%=mody_title%>"><br> </div>
	  					<div class="box3"> <input readonly type="text" name="user_id" size="20" value="<%=mody_id%>"><br> </div>
					</div>
			
			<br></div>
		<ul style="border: 1px solid lightgray; width:90%; margin:0 auto;"></ul>
		
			<div class="middle_section">
      			<div class="middle">
      				<div class="middle_left_section">
      	  				<div class="middleleft"><img src="img/ring4.8.jpg"></div>
      	
<!--      	작성시간:<input type="text" name="tr_date" size="" ><br> -->
		  				<div class="middleright">
							<div class="box2"> 제목:<input readonly type="text" name="tr_title" size="50" value="<%=mody_title%>"><br> </div>
      						<div class="price"> 가격:&nbsp;<input readonly type="text" name="tr_price" size="" value="<%=mody_price%>"><br> </div>
		  				</div>
      				</div>
      			</div>

      			<textarea readonly style="resize:none" class="feed" name="tr_content" required><%=mody_content%></textarea>

     		</div>
     		<div class="feedBtn">     		
     			<div class="viewBox">
     				<input type="button" onclick="location.href='User_trade_del.jsp?trpost_num=<%=trpost_num%>';" value="삭제">
     				<input type="button" onclick="location.href='User_trade_mod_page.jsp?trpost_num=<%=trpost_num%>';" value="수정하기">
     				<a href="User_trade_list_page.jsp"><input type="button" value="목록" class="btn1"></a>
     			</div>
     		</div>
     		</div>
     		</div>
     		</form>

<jsp:include page="footer.jsp"/>
	</body>
</html>