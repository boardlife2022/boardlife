<%@page import="vo.*"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<%@ page import="java.util.*"%>
<%@ page import="java.text.SimpleDateFormat"%>

<%
	ArrayList<Boardgames2> articleList=(ArrayList<Boardgames2>)request.getAttribute("articleList");
    Club_PageInfo pageInfo = (Club_PageInfo)request.getAttribute("pageInfo");
	int listCount = pageInfo.getListCount();
	int nowPage = pageInfo.getPage();
	int maxPage = pageInfo.getMaxPage();
	int startPage = pageInfo.getStartPage();
	int endPage = pageInfo.getMaxPage();
%>

<jsp:include page="header.jsp"/>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8" />
<title>보드게임</title>
<link rel="stylesheet" type="text/css" href="css/boardgameinfo_top50.css">
</head>

<body>
	

	<section style="width: 1280px; padding-top: 120px; margin: 0 auto;">
		<h2><a href="boardgame_input2.jsp">보드게임입력</a></h2>
<table class="boardgamelist">
	<colgroup>
    	<col width="5%"><!--번호-->
    	<col width="15%"><!--보드게임 타이틀이미지-->
        <col width="400px"><!--제목(한글)-->
        <col width="25%"><!--출시년도-->
	 	<col width="30%"><!--유저 평점-->
        <col width="10%"><!---->
	</colgroup>

    <thead>
		<tr class="b_list_title">
			<th>번호</th>
			<th>보드게임 사진</th>
			<th colspan="3">게임제목</th>
			<th>유저 평점</th>
			<th></th>
			<th></th>
		</tr>
	</thead>	
		
		<%
		for(int i=0;i<articleList.size();i++){
		%>
		<tr class="boardgame_list">
		<td style="margin-left: 10px;"><a href="boardgameinfo_detail.jsp?<%=articleList.get(i).getB_id()%>"><%=i+1%></a></td>
		<td><a href="boardgameinfo_detail.jsp?<%=articleList.get(i).getB_id()%>"><img src="img/<%=articleList.get(i).getB_img()%>"></a></td>
   		<td id="b_t"><a href="boardgameinfo_detail.jsp?<%=articleList.get(i).getB_id()%>">
   		<h2><%= articleList.get(i).getB_title_kor()%></h2><br>
   		<h3><%= articleList.get(i).getB_title_eng()%>		
   		</a></td>
   		<td style="text-align: left; font-size: 11pt;"><a href="boardgameinfo_detail.jsp?<%=articleList.get(i).getB_id()%>">(<%=articleList.get(i).getYearof()%>)</a></td>
   		<td class="hashtag">
   		<p>
   		<span>#<%=articleList.get(i).getB_theme()%></span> <span>#<%=articleList.get(i).getProceed()%></span>
   		</p>
   		</td>
		<td><a href="boardgameinfo_detail.jsp?<%=articleList.get(i).getB_id()%>">0</td>

		</tr>
   		<% }%>
</table>
</section>
</body>
</html>
<jsp:include page="footer.jsp"/>