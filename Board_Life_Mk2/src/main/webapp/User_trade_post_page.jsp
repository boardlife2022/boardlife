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
<link rel="stylesheet" type="text/css" href="css/User_trade_post_page.css">
<title>게시글 작성</title>
	<body>
	
	<jsp:include page="header.jsp"/>
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

<form action="User_trade_insert.jsp" method="post">
	<div class="totalBoard">

		<div class="board_section">
			<div class="post_title">
				<h2>게시글 작성</h2>
					<div class="innerhead">
		
<!--	  	중고거래 글번호:<input type="text" name="trpost_num" size="" ><br> -->
						<div class="box4">
							<select name="tr_category" id="">
								<option value="전체">전체</option>
								<option value="판매">판매</option>
								<option value="구매">구매</option>
								<option value="교환">교환</option>
								<option value="나눔">나눔</option>							
							</select>
						</div>
      					<div class="box1"> 제목:<input type="text" name="tr_title" size="50" placeholder="제목을 입력해주세요." required><br> </div>
	  					<div class="box3"> 작성자 아아디:<input type="text" name="user_id" size="20" readonly value="<%=id %>"><br> </div>
					</div>
			
			<br></div>
		<ul style="border: 1px solid lightgray; width:90%; margin:0 auto;"></ul>
		
			<div class="middle_section">
      			<div class="feed">
      				<div class="feedImg"><br><input class="imgBox" type="file"></div>
      				<div class="feedPrice">
      					<div class="priceBox">가 격: <input type="text" name="tr_price" size="" required></div>
      				</div>     		
      				<textarea style="resize:none" class="feedText" name="tr_content" required></textarea>
      			</div>
     		</div>
     		<div class="feedBtn">
     			<div class="viewBox">	
     				<input type="submit" value="게시" >
     				<a href="User_trade_list_page.jsp"><input type="button" value="목록" class="btn1"></a>
     			</div>
     		</div>
      		

<jsp:include page="footer.jsp"/>
	</body>
</html>