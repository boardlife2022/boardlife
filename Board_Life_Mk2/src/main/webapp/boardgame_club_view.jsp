<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="vo.Offerclub" %> 
<%@ page import="vo.Boardgames"%>
<%@ page import="vo.ClubReview"%>
<%@ page import="vo.ClubQnA"%>
<%@ page import="java.util.*"%>
<%@ page import="java.text.NumberFormat" %>
<%@ page import="java.util.Locale" %>
<%@ page import="java.text.SimpleDateFormat" %>
<%@ page import="java.util.Date" %>


<jsp:include page="header.jsp"/>
<link rel="stylesheet" href="css/boardgameclub_view.css">

<%
	// request를 통해 정보 받아오기
	Offerclub club = (Offerclub)request.getAttribute("club");
    String nowPage = (String)request.getAttribute("page");
    ArrayList<Boardgames> ClubBgames = (ArrayList<Boardgames>)request.getAttribute("ClubBgames");
    ArrayList<ClubReview> ClubReviews = (ArrayList<ClubReview>)request.getAttribute("ClubReviews");
    ArrayList<ClubQnA> ClubQNAs = (ArrayList<ClubQnA>)request.getAttribute("ClubQNAs");
    ArrayList<ClubReview> RecentlyReviews = (ArrayList<ClubReview>)request.getAttribute("RecentlyReviews");
    ArrayList<Offerclub> Rclub = (ArrayList<Offerclub>)request.getAttribute("Rclub");
    
    // 가격 정보 원화로 전환하기
    NumberFormat nf = NumberFormat.getCurrencyInstance(Locale.KOREA);
    String clubFee = nf.format(club.getMembership_fee());
    
    // 날짜정보 가져와서 년, 월, 일 값으로 반환하기
    SimpleDateFormat inputFormat = new SimpleDateFormat("yyMMdd");
    Date date = inputFormat.parse(club.getStart_date());
    SimpleDateFormat outputFormat = new SimpleDateFormat("yyyy년 M월 d일");
    String formattedDate = outputFormat.format(date);
   
%>

    <!--  CSS  -->
    <link rel="stylesheet" href="css/boardgameclub_view.css">
    <link rel="stylesheet" href="css/boardgameclub.css">

    <!--  JS  -->
    <script src="js/boardgame_club_View.js"></script>
    
    <style>
    .club_apply .club_img {
    width: 730px;
    height: 730px;
    float: left;
    border-radius: 10px;
    box-shadow: 0 2px 4px rgba(0, 0, 0, 0.3);
    background-size: cover;
    position: relative;
    background-image: url("img/<%= ClubBgames.get(0).getB_img() %>");
	}
    </style>
    
</head>

<body>

     <section id="boardgame_club_view">

        <div class="club_apply clearfix">

            <div class="club_img">
                <span class="cover"></span>
                <img src="img/<%= ClubBgames.get(0).getB_img() %>" alt="peakyblinders">
                <p class="boardgame_detail">
                    <span class="title"><%= ClubBgames.get(0).getB_title() %> (<%= ClubBgames.get(0).getYearof() %>) </span>
                    <br>
                    <span class="description"><%= ClubBgames.get(0).getB_detail() %></span>
                </p>
            </div>

            <div class="club_info">

                <div class="club_detail">

                    <p class="club_title"><%= club.getClub_title() %></p>
                    <p class="hashtag">
                    <span>#<%= club.getClub_reps() %>회차</span>
                    <span>#<%= club.getB_theme() %> </span>
                    <span>#<%= club.getProceed() %> </span>
                    <span>#<% if(club.getClub_place().equals("online")){ out.print("online"); } else {out.print("offline");} %></span>
                    </p>

                    <div class="user_info clearfix">
                        <div class="user_img">
                            <img src="img/user.png" alt="user_id">
                        </div>

                        <div class="user_detail">
                            <p class="nickname">Moderator : <%= club.getUser_id() %></p>
                            <p class="career">- 제 1회 버밍엄 보드게임 클럽 모임 진행(2022.12.12)</p>
                        </div>
                    </div>

                    <p class="detail">
                        <span class="item">날짜</span>
                        <span class="info"><%= formattedDate %>(<%= club.getClub_day() %>)</span>
                    </p>

                    <p class="detail">
                        <span class="item">장소</span>
                        <span class="info"><%= club.getClub_place() %></span>
                    </p>

                    <p class="detail">
                        <span class="item">시간</span>
                        <span class="info"><%= club.getClub_time() %>시</span>
                    </p>

                    <p class="club_fee"><%= clubFee %></p>


                    <div class="btn_wrap clearfix">
                        <a href="#" class="like"><img src="img/heart-empty.png" alt="like"></a>
                        <a href="#"><img src="img/bookmark-white.png" alt="bookmark"></a>
                        <a href="#"><img src="img/share.png" alt="share"></a>
                        <a href="#"><img src="img/shopping-cart.png" alt="shoping-cart"></a>
                        <a href="#" class="apply_btn">클럽 신청하기</a>

                    </div>

                </div>

                <div class="club_boardgame">

                    <p>Board Games</p>

                    <div class="boardgame_wrap clearfix">
                        
                        <% for(int bg=0; bg < ClubBgames.size(); bg++){ %>
                        <img src="img/<%= ClubBgames.get(bg).getB_img() %>" alt="<%= ClubBgames.get(bg).getB_title() %> (<%= ClubBgames.get(bg).getYearof() %>)" 
                        data-value="<%= ClubBgames.get(bg).getB_detail() %>" class="<% if(bg==0){%>choice<%}%>" id="boardgame<%= bg + 1%>">
                        <% } %>
                    </div>

                </div>

            </div>


        </div>

        <ul class="view_tab_menu clearfix">
            <li class="active" id="tab1">상세정보</li>
            <li id="tab2">참여후기(<%= ClubReviews.size() %>)</li>
            <li id="tab3">Q&amp;A(<%= ClubQNAs.size() %>)</li>
        </ul>


        <div id="tab_wrap">

            <div class="tab active" id="tab1Detail">

                <pre class="detail">
 🎉 <%= club.getClub_intro() %>
 
<b>🎲 보드게임 클럽 소개</b>
 
<%= club.getClub_detail() %>
              
               
<b style="color: red">🛑 주의해주세요!!</b>
                  
<b>1. 존중과 예의를 지켜주세요</b> - 클럽 내부에서는 서로 존중하고 예의를 지켜주는 것이 기본적인 원칙입니다. 이는 게임 내에서도 마찬가지입니다.

<b>2. 게임 규칙을 숙지해주세요</b> - 모임에서 즐길 게임들의 규칙을 숙지해주세요. 새로운 게임을 소개할 때도 규칙을 충분히 설명하고, 모두가 게임을 즐길 수 있도록 합니다.

<b>3. 게임 재료와 시설물을 소중히 다루어주세요</b> - 게임 재료와 시설물을 소중히 다루어서 손상되거나 분실되지 않도록 합니다. 게임을 마친 후에는 깨끗하게 정리하고, 다음 모임 때도 모두가 좋은 환경에서 게임을 즐길 수 있도록 합니다.

<b>4. 개인 물품은 본인이 관리해주세요</b> - 클럽에서는 개인 물품 관리는 본인 책임하에 진행합니다. 게임 재료나 시설물 외에 개인적인 물건은 클럽에서 보관하지 않으니, 개인적인 물건은 각자 챙겨서 관리해주세요.

<b>5. 모임 참석 여부를 미리 알려주세요</b> - 매주 모임이 열리는 요일에 참석하지 못할 경우에는 미리 클럽 내부 온라인 커뮤니티를 통해 모임 참석 여부를 알려주세요. 이는 게임 참여 인원을 파악하고, 게임 시간을 효율적으로 활용할 수 있도록 도와줍니다.
               
                </pre>

            </div>

            <div class="tab" id="tab2Detail">

                <div class="reviewGuide">

                    <p>👍참여하신 클럽의 후기나 보드게임 리뷰를 남겨주세요. <br> 작성시 500 포인트를 지급해드립니다.</p>
                    <a href="#" class="btn">후기 작성하기</a>

                </div>

                <ul class="review_wrap">

					<% if(ClubReviews.size() > 0){ %>
					<% for(int cr=0; cr < ClubReviews.size(); cr++){  %>
                    <li class="review clearfix">
                        <div class="img_wrap">
                            <img src="img/user.png" alt="user">
                        </div>
                        <div class="txt_wrap">
                            <p class="nickname"><%= ClubReviews.get(cr).getUser_id() %></p>
                            <p class="sentence"><%= ClubReviews.get(cr).getClub_review_content() %></p>
                            <p class="r_date"><%= ClubReviews.get(cr).getClub_review_title() %> / <%= ClubReviews.get(cr).getClub_review_date() %></p>
                            <p class="btn">☆</p>
                        </div>
                    </li>
                    <% } // for %>
                    <%} else { %>
                    <li class="empty">여러분의 후기를 기다리고 있어요!</li>
                    <%} //else %>
                </ul>
            </div>


            <div class="tab" id="tab3Detail">

                <div class="reviewGuide">

                    <p>💬참여하실 클럽에 대해 궁금하신 점이 있으면 문의주세요.</p>
                    <a href="#" class="btn">문의하기</a>

                </div>
                    <%if(0<ClubQNAs.size()){ %>
                    <table class="qna_wrap">
                    <colgroup>
                    	<col width="7%">
                    	<col width="48%">
                    	<col width="20%">
                    	<col width="15%">
                	</colgroup>
                
                <thead>
                    <tr>
                        <th>상태</th>
                        <th>제목</th>
                        <th>작성자</th>
                        <th>등록일</th>
                    </tr>
                </thead>
                
                <tbody>
                
                <%for(int q=0; q<ClubQNAs.size(); q++){ %>
                    <tr>
                		<td>답변대기</td>
                		<td><a href="#"><%= ClubQNAs.get(q).getClub_qna_title() %></a></td>
                		<td><%= ClubQNAs.get(q).getUser_id() %></td>
                		<td><%= ClubQNAs.get(q).getClub_qna_date() %></td>
                	</tr>
                 <%} // for문 %>
                
                	<tr>
                		<td></td>
                		<td></td>
                		<td></td>
                		<td></td>
                	</tr>
                </tbody>
                    
                    </table>

                <%}else{ %>
                <p class="empty"> 등록된 문의가 없습니다. </p>
                <%} //if else%>
               
			</div>

        </div>

    </section>

    <section id="boardgame_club_list">

        <h3>👀 같은 테마의 보드게임 클럽</h3>

        <div class="inner_club_list">

            <div class="club_wraps clearfix">

		<%  for(int i=0; i < Rclub.size(); i++ ){ %>
                <a href="ClubDetail.cl?clubNum=<%=Rclub.get(i).getClub_num()%>&page=<%=nowPage%>" class="club">
                
                    <img src="img/<%= Rclub.get(i).getB_img() %>" alt="<%= Rclub.get(i).getB_img() %>" class="boardgame">

                    <div class="club_info">
                        <p class="club_title"><%= Rclub.get(i).getClub_title() %></p>
                        <p class="club_moder">by <%= Rclub.get(i).getUser_id() %></p>
                        <p class="hashtag"><span>#<%= Rclub.get(i).getClub_reps() %>회차</span><span>#<%= Rclub.get(i).getProceed() %></span>
                        <span>
                        #<% if(Rclub.get(i).getClub_place().equals("online")){ out.print("online"); } else {out.print("offline");} %>
                        </span>
                        </p>
                        <p class="club_detail"><%= Rclub.get(i).getClub_intro() %></p>
                    </div>
                    
                    <div class="lower">
                        <div class="participate clearfix">
                            <img src="img/user.png" alt="user">
                            <p>
                            23. 04. <%=Rclub.get(i).getStart_date().substring(4)%> 
                            | <%= Rclub.get(i).getClub_day() %> 
                            | <%= Rclub.get(i).getClub_time() %>시 
                            | <% if(Rclub.get(i).getClub_place().equals("online")){ out.print("online"); } else {out.print(Rclub.get(i).getClub_place().substring(0, 2));} %>
                            | 1/<%= Rclub.get(i).getCapacity() %>명 
                            | <%= Rclub.get(i).getMembership_fee() %>원
                            </p>
                        </div>
                    </div>

                </a>
        <% }  // for문 %>

            </div>

        </div>

    </section>

    <section id="reviews">
        
        <h3>🌟 최근 리뷰</h3>

        <div class="review_tab">
            <p class="review_title">Review</p>

            <ul class="review_wrap">

				<%for(int rr=0; rr<RecentlyReviews.size(); rr++){ %>
                <li class="review clearfix">
                    <div class="img_wrap">
                        <img src="img/user.png" alt="user">
                    </div>
                    <div class="txt_wrap">
                        <p class="nickname"><%= RecentlyReviews.get(rr).getUser_id() %></p>
                        <p class="sentence"><%= RecentlyReviews.get(rr).getClub_review_content() %></p>
                        <p class="r_date">
                        <%= RecentlyReviews.get(rr).getClub_review_title() %> 
                        / <%= RecentlyReviews.get(rr).getClub_review_date() %></p>
                        <p class="btn">☆</p>
                    </div>
                </li>
                <%} %>

            </ul>

        </div>

    </section>
    
    </body>

<jsp:include page="footer.jsp"/>