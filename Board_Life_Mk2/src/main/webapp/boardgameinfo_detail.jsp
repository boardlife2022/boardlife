<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ page import="java.sql.*"%>
<%@ page import="vo.*" %>
<% request.setCharacterEncoding("utf-8"); %>

<%
	Boardgames2 articleList = (Boardgames2)request.getAttribute("articleList");
	Club_PageInfo pageInfo = (Club_PageInfo)request.getAttribute("pageInfo");
 %>


<link rel="stylesheet" type="text/css" href="css/boardgameinfo_detail.css">

<jsp:include page="header.jsp"/>
		
        <section style="width: 100%; height: 800px; padding-top: 120px">
        
        <jsp:useBean id="user" class="board.Freeboard_cont" />
        <div class="detail_backgroundimg">
			<div class="detail_main">
				<div class="detail_gameleft">
					<div class="detail_headertitle">
						<div class="detail_gameimg">
							<img alt="보드게임이미지" src="img/Pandemic_Legacy.png" title="BoardGame">
						</div>
					</div>
					<div class="detail_info">
						한글판
					</div>
				</div>
				<div class="detail_gameright">
					<div class="detail_top">
						<div class="detail_rank">
							<img alt="순위" src="img/trophy.png"> 순위 <span>000</span>
						</div>
						<div>
							<img alt="관련겜" src="img/open-book.png"> 관련 게임 <span>000</span>
						</div><br>
					</div>
					<div class="detail_right_title">
					 <div>
						<div class="detail_rating">
							7.3
						</div>
						<div>
							<h1 class="detail_title">카탄의 개척자</h1>
							<h2 class="detail_title_eng"> The Settlers of Catan</h2>
						</div>
						<div class="detail_year">
							(1995)
						</div><br><br>
						<div>
							평가 0건
						</div><br><br>
					 </div>
					</div>
					<div class="detail_right_info">
					&nbsp;
						<div class="detail_gameinfo2">
							3~4명<br>
						<div class="detail_gameinfo3">
							인원
						</div>
						</div>
						
						<div class="detail_gameinfo2">
							6-120분<br>
						<div class="detail_gameinfo3">
							플레이 시간
						</div>
						</div>
						
						<div class="detail_gameinfo2">
							10세 이상<br>
						<div class="detail_gameinfo3">
							사용 연령
						</div><br>
						</div>
						<div class="detail_gameinfo2">
							2.30 / 5<br>
						<div class="detail_gameinfo3">
							난이도
						</div>
						</div><br><br><br><br>
					</div>
					<div class="detail_detail">
						<div>
							<div>디자이너: </div> <div>Klaus Teuber</div><br>
						</div><br>
						<div>
							<div>출판사: </div> <div>999 Games</div><br>
						</div><br>
						<div>
							<div>한글화: </div> <div>일부 간단한 텍스트 존재 (84%)</div><br>
						</div><br>
					</div>
					<div class="detail_other">
						<div>
							<button class="button" type="button">
  							<img alt="카트" src="img/shopping-cart.png"> <span>게임구매</span>
							</button>
							
							<button class="button" type="button"> <img alt="컬렉션" src="img/list_white.png">
  							<span>컬렉션 추가</span>
							</button>
							
							<button class="button" type="button"> <img alt="즐겨찾기" src="img/star_white.png">
  							<span>즐겨찾기 추가</span>
							</button>
							
						</div>
					</div>
					</div>
				</div>
			</div>
        </section>
<jsp:include page="footer.jsp"/>