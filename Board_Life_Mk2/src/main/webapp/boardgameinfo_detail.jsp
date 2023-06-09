<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ page import="java.sql.*"%>
<%@ page import="vo.*" %>
<% request.setCharacterEncoding("utf-8"); %>

<%
	Boardgames2 articleList = (Boardgames2)request.getAttribute("article");
	Club_PageInfo pageInfo = (Club_PageInfo)request.getAttribute("pageInfo");
 %>
<%
	int rating = 0;
%>

<link rel="stylesheet" type="text/css" href="css/boardgameinfo_detail.css">
<link rel="stylesheet" type="text/css" href="reset.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/2.2.4/jquery.min.js"></script>
<script src="js/boardgameinfo_detail.js"></script>

<style>

.detail_backgroundimg {
    
    width: 1360px;
    margin: 0 auto;
    background-image: url(img/<%=articleList.getB_img()%>);
    background-size: 660px;
    background-repeat: no-repeat;
    background-position: right;
    	
}

</style>

<jsp:include page="header.jsp"/>
		
        <section style="width: 100%; padding-top: 120px;">
        
        <jsp:useBean id="user" class="board.Freeboard_cont" />
        <div class="detail_backgroundimg">
			<div class="detail_main">
				<div class="detail_gameleft">
					<div class="detail_headertitle">
						<div class="detail_gameimg">
							<img alt="보드게임이미지" src="img/<%=articleList.getB_img() %>" title="BoardGame">	
						</div>
					</div>
					<div class="detail_info">
						한글판
					</div><br/>
					<div style="color: white;" class="hash">
					
						<span>#<%=articleList.getFirst_proceed()%></span><br/>
						<%if(articleList.getSecond_proceed().equals(articleList.getFirst_proceed())){ %>
						<span>#<%=articleList.getSecond_proceed()%></span><br/>
						<%//}else if(articleList.getThird_proceed() == articleList.getSecond_proceed()){ %>
						<span>#<%=articleList.getThird_proceed()%></span><br/>
						<%//}else if(articleList.getFourth_proceed() == null){ %>
						<span>#<%=articleList.getFourth_proceed()%></span><br/>
						<%}%>
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
							7.6
						</div>
						<div>
							<p class="detail_title"><%=articleList.getB_title_kor() %><span class="detail_year"> (<%=articleList.getYearof()%>)</span></p> 
							<p class="detail_title_eng"><%=articleList.getB_title_eng() %></p><br><br>
						</div>
						
						<div class="detail_evaluation">
							평가 0건
						</div><br><br>
					 </div>
					</div>
					<div class="detail_right_info">
					&nbsp;
						<div class="detail_gameinfo2">
							<%=articleList.getPnum() %>명<br>
						<div class="detail_gameinfo3">
							인원
						</div>
						</div>
						
						<div class="detail_gameinfo2">
							<%=articleList.getRunning_time() %>분<br>
						<div class="detail_gameinfo3">
							플레이 시간
						</div>
						</div>
						
						<div class="detail_gameinfo2">
							<%=articleList.getAge() %><br>
						<div class="detail_gameinfo3">
							사용 연령
						</div><br>
						</div>
						<div class="detail_gameinfo2">
							<%=articleList.getGame_level() %> / 5<br>
						<div class="detail_gameinfo3">
							난이도
						</div>
						</div><br><br><br><br>
					</div>
					<div class="detail_detail">
						<div>
							<div>디자이너:</div> <div><%=articleList.getDesigner() %></div><br>
						</div><br>
						<div>
							<div>출판사:</div> <div><%=articleList.getPublisher() %></div><br>
						</div><br>
						<div>
							<div>한글화:</div> <div><%=articleList.getSub_lang() %></div><br>
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
			</div><br/>
			<section class="boardgame_detail0" >
				<div>
					<ul class="tab_tit">
					    <li class="on" data-tab="tab1">게임평</li>
					    <li data-tab="tab2">커뮤니티</li>
					  </ul>
					<a href="<%=articleList.getGeeklink() %>">
						<div class="boardgame_geeklink">
							<img alt="linkimg" src="img/link2.png"> BoardGameGeek
						</div></a>
				</div>
			
			<div class="container">
  
  <div id="tab1" class="cnt on">
    <div class="detail_bottom_layout">
			<% for(int i =0;i < 1;i++) { %>
				<div class="boardgame_detail_rating">
					<div class="detail_rating1">
							7.6
					</div>
					<div class="detail_bottomrating">
						<div>
							준열
						</div>
						<div>
							2023-06-12
						</div><br/><br/>
						<div>
							재미
						</div>
					</div>
			<%}%>
				</div>
				
	</div>
  </div>
  <div id="tab2" class="cnt">
    <div class="detail_bottom_layout">
			<% for(int i =0;i < 1;i++) { %>
				<div class="boardgame_detail_rating">
					<div class="detail_rating2">
							9.0
					</div>
					<div class="detail_bottomrating">
						<div>
							광의
						</div>
						<div>
							2023-06-13
						</div><br/><br/>
						<div>
							있습니다.
						</div>
					</div>
			<%}%>
				</div>
				
	</div>
  </div>
  <div id="tab3" class="cnt">
    <h2>제목3</h2>
    <ul>
      <li>3</li>
      <li>3</li>
    </ul>
  </div>  
</div>
			</section>
        </section>
<jsp:include page="footer.jsp"/>