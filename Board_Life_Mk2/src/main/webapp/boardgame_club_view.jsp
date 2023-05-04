<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="vo.Offerclub" %> 
<%@ page import="vo.Boardgames"%>
<%@ page import="java.util.*"%>
<%@ page import="java.text.NumberFormat" %>
<%@ page import="java.util.Locale" %>
<%@ page import="java.text.SimpleDateFormat" %>
<%@ page import="java.util.Date" %>

<jsp:include page="header.jsp"/>
<link rel="stylesheet" href="css/boardgameclub_view.css">

<%
	Offerclub club = (Offerclub)request.getAttribute("club");
    String nowPage = (String)request.getAttribute("page");
    ArrayList<Boardgames> ClubBgames = (ArrayList<Boardgames>)request.getAttribute("ClubBgames");
    
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
                    <span class="title"><%= ClubBgames.get(0).getB_title() %></span>
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
                        <img src="img/<%= ClubBgames.get(0).getB_img() %>" alt="Peaky Blinders: Under New Management (2019)" data-value="Create and manage your criminal network in a gang war set in 1920's England." class="choice" id="boardgame1">
                        <img src="img/7wonders.png" alt="7 Wonders Duel (2015)" data-value="Science Military What will you draft to win this head-to-head version of 7 Wonders" id="boardgame2">
                        <img src="img/sleeping_gods.png" alt="Sleeping Gods (2021)" data-value="Voyages of the steamship 'Manticore'' and her crew on the Wandering Sea." id="boardgame3">
                    </div>

                </div>

            </div>


        </div>

        <ul class="view_tab_menu clearfix">
            <li class="active" id="tab1">상세정보</li>
            <li id="tab2">참여후기(0)</li>
            <li id="tab3">Q&amp;A(0)</li>
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

                    <li class="review clearfix">
                        <div class="img_wrap">
                            <img src="img/user.png" alt="user">
                        </div>
                        <div class="txt_wrap">
                            <p class="nickname">nickname</p>
                            <p class="sentence">존 셸비의 보드게임 클럽 모임에 참여해보았는데, 정말 즐거운 시간을 보냈습니다. 모임장인 존 셸비는 매우 친절하고 재미있는 보드게임을 준비해주어 모임에 참여하는 모든 사람들이 즐길 수 있도록 배려해주었습니다.</p>
                            <p class="r_date">셸비 가문의 보드게임 / 23. 04. 07.</p>
                            <p class="btn">☆</p>
                        </div>
                    </li>

                    <li class="review clearfix">
                        <div class="img_wrap">
                            <img src="img/user.png" alt="user">
                        </div>
                        <div class="txt_wrap">
                            <p class="nickname">nickname</p>
                            <p class="sentence">게임이 시작되면 모임원들끼리 친목을 도모하며 게임을 진행해나갈 수 있는 분위기를 만들어주었고, 게임을 마친 후에는 함께 이야기를 나눌 수 있는 시간도 가지게 해주었습니다.</p>
                            <p class="r_date">셸비 가문의 보드게임 / 23. 04. 07.</p>
                            <p class="btn">☆</p>
                        </div>
                    </li>

                    <li class="review clearfix">
                        <div class="img_wrap">
                            <img src="img/user.png" alt="user">
                        </div>
                        <div class="txt_wrap">
                            <p class="nickname">nickname</p>
                            <p class="sentence">또한, 클럽 모임의 장소 역시 넓고 깨끗한 공간을 사용하였고, 보드게임에 필요한 모든 장비와 음료 등도 제공해주어 편안하게 게임을 즐길 수 있었습니다.</p>
                            <p class="r_date">셸비 가문의 보드게임 / 23. 04. 07.</p>
                            <p class="btn">☆</p>
                        </div>
                    </li>

                    <li class="review clearfix">
                        <div class="img_wrap">
                            <img src="img/user.png" alt="user">
                        </div>
                        <div class="txt_wrap">
                            <p class="nickname">nickname</p>
                            <p class="sentence">총평하자면, 존 셸비의 보드게임 클럽 모임은 게임을 즐기는 것 뿐만 아니라 사람들과 소통하고 친해지는 좋은 기회가 되어주는 모임이었습니다. 강력 추천합니다!</p>
                            <p class="r_date">셸비 가문의 보드게임 / 23. 04. 07.</p>
                            <p class="btn">☆</p>
                        </div>
                    </li>

                </ul>
            </div>


            <div class="tab" id="tab3Detail">

                <div class="reviewGuide">

                    <p>💬참여하실 클럽에 대해 궁금하신 점이 있으면 문의주세요.</p>
                    <a href="#" class="btn">문의하기</a>

                </div>

                <ul class="qna_wrap">

                    <li class="qna clearfix">
                        <div class="img_wrap">
                            <img src="img/user.png" alt="user">
                        </div>
                        <div class="txt_wrap">
                            <p class="nickname">nickname</p>
                            <p class="sentence">톰 셸비의 보드게임 여행 보드게임 클럽에서 가장 인기 있는 보드게임 상위 3개는 무엇인가요?</p>
                            <p class="r_date">셸비 가문의 보드게임 / 23. 04. 07.</p>
                            <p class="btn"></p>
                        </div>
                    </li>

                    <li class="qna clearfix">
                        <div class="img_wrap">
                            <img src="img/user.png" alt="user">
                        </div>
                        <div class="txt_wrap">
                            <p class="nickname">nickname</p>
                            <p class="sentence">톰 셸비의 보드게임 여행 클럽에서 회원들이 주로 참여하는 활동들은 어떤 것들이 있나요?</p>
                            <p class="r_date">셸비 가문의 보드게임 / 23. 04. 07.</p>
                            <p class="btn"></p>
                        </div>
                    </li>

                    <li class="qna clearfix">
                        <div class="img_wrap">
                            <img src="img/user.png" alt="user">
                        </div>
                        <div class="txt_wrap">
                            <p class="nickname">nickname</p>
                            <p class="sentence">클럽 회원들에게 제공되는 혜택이나 서비스는 어떤 것들이 있나요? 예를 들어, 할인 이벤트, 게임 대여 서비스 등이 있을까요?</p>
                            <p class="r_date">셸비 가문의 보드게임 / 23. 04. 07.</p>
                            <p class="btn"></p>
                        </div>
                    </li>

                    <li class="qna clearfix">
                        <div class="img_wrap">
                            <img src="img/user.png" alt="user">
                        </div>
                        <div class="txt_wrap">
                            <p class="nickname">nickname</p>
                            <p class="sentence">톰 셸비의 보드게임 여행 클럽에서 주최하는 특별한 이벤트나 대회가 있나요? 있다면, 어떤 종류의 이벤트가 있는지 설명해 주세요.</p>
                            <p class="r_date">셸비 가문의 보드게임 / 23. 04. 07.</p>
                            <p class="btn"></p>
                        </div>
                    </li>

                    <li class="qna clearfix">
                        <div class="img_wrap">
                            <img src="img/user.png" alt="user">
                        </div>
                        <div class="txt_wrap">
                            <p class="nickname">nickname</p>
                            <p class="sentence">클럽에 가입하려면 어떤 절차를 거쳐야 하며, 회비는 어느 정도인가요? 회비를 납부하면 어떤 서비스를 이용할 수 있는지 알려주세요.</p>
                            <p class="r_date">셸비 가문의 보드게임 / 23. 04. 07.</p>
                            <p class="btn"></p>
                        </div>
                    </li>


                </ul>

            </div>

        </div>

    </section>

    <section id="boardgame_club_list">

        <h3>👀함께 본 클럽</h3>

        <div class="inner_club_list">

            <div class="club_wraps clearfix">

                <a href="#" class="club">
                    <img src="img/peakyblinders.png" alt="7wonders" class="boardgame">

                    <div class="club_info">
                        <p class="club_title">톰 셸비와 함께 하는 보드게임 여행</p>
                        <p class="club_moder">by green</p>
                        <p class="hashtag"><span>#1회차</span><span>#Crime</span><span>#Business</span><span>#Offline</span></p>

                        <p class="club_detail">톰 셸비가 직접 안내하는 보드게임 여행은 다양한 보드게임을 즐기며 새로운 사람들과 친구가 될 수 있는 좋은 기회입니다. 각종 이벤트와 대회도 준비되어 있으며, 보드게임을 좋아하는 사람이라면 누구나 참여할 수 있습니다.</p>
                    </div>

                    <div class="lower">
                        <div class="participate clearfix">
                            <img src="img/user.png" alt="user">
                            <p>23.04.12-13 | 수, 목 | 18-20시 | 경기 | 1/5명 | 8,000원 </p>
                        </div>
                    </div>

                </a>

                <a href="#" class="club">
                    <img src="img/woodcraft.png" alt="7wonders" class="boardgame">

                    <div class="club_info">
                        <p class="club_title">톰 셸비와 함께 하는 보드게임 여행</p>
                        <p class="club_moder">by green</p>
                        <p class="hashtag"><span>#1회차</span><span>#Crime</span><span>#Business</span><span>#Offline</span></p>

                        <p class="club_detail">톰 셸비가 직접 안내하는 보드게임 여행은 다양한 보드게임을 즐기며 새로운 사람들과 친구가 될 수 있는 좋은 기회입니다. 각종 이벤트와 대회도 준비되어 있으며, 보드게임을 좋아하는 사람이라면 누구나 참여할 수 있습니다.</p>
                    </div>

                    <div class="lower">
                        <div class="participate clearfix">
                            <img src="img/user.png" alt="user">
                            <p>23.04.12-13 | 수, 목 | 18-20시 | 경기 | 1/5명 | 8,000원 </p>
                        </div>
                    </div>

                </a>


                <a href="#" class="club">
                    <img src="img/7wonders.png" alt="7wonders" class="boardgame">

                    <div class="club_info">
                        <p class="club_title">톰 셸비와 함께 하는 보드게임 여행</p>
                        <p class="club_moder">by green</p>
                        <p class="hashtag"><span>#1회차</span><span>#Crime</span><span>#Business</span><span>#Offline</span></p>

                        <p class="club_detail">톰 셸비가 직접 안내하는 보드게임 여행은 다양한 보드게임을 즐기며 새로운 사람들과 친구가 될 수 있는 좋은 기회입니다. 각종 이벤트와 대회도 준비되어 있으며, 보드게임을 좋아하는 사람이라면 누구나 참여할 수 있습니다.</p>
                    </div>

                    <div class="lower">
                        <div class="participate clearfix">
                            <img src="img/user.png" alt="user">
                            <p>23.04.12-13 | 수, 목 | 18-20시 | 경기 | 1/5명 | 8,000원 </p>
                        </div>
                    </div>

                </a>

            </div>

        </div>

    </section>

    <section id="reviews">
        
        <h3>🌟 최근 리뷰</h3>

        <div class="review_tab">
            <p class="review_title">Review</p>

            <ul class="review_wrap">

                <li class="review clearfix">
                    <div class="img_wrap">
                        <img src="img/user.png" alt="user">
                    </div>
                    <div class="txt_wrap">
                        <p class="nickname">nickname</p>
                        <p class="sentence">존 셸비의 보드게임 클럽 모임에 참여해보았는데, 정말 즐거운 시간을 보냈습니다. 모임장인 존 셸비는 매우 친절하고 재미있는 보드게임을 준비해주어 모임에 참여하는 모든 사람들이 즐길 수 있도록 배려해주었습니다.</p>
                        <p class="r_date">셸비 가문의 보드게임 / 23. 04. 07.</p>
                        <p class="btn">☆</p>
                    </div>
                </li>

                <li class="review clearfix">
                    <div class="img_wrap">
                        <img src="img/user.png" alt="user">
                    </div>
                    <div class="txt_wrap">
                        <p class="nickname">nickname</p>
                        <p class="sentence">게임이 시작되면 모임원들끼리 친목을 도모하며 게임을 진행해나갈 수 있는 분위기를 만들어주었고, 게임을 마친 후에는 함께 이야기를 나눌 수 있는 시간도 가지게 해주었습니다.</p>
                        <p class="r_date">셸비 가문의 보드게임 / 23. 04. 07.</p>
                        <p class="btn">☆</p>
                    </div>
                </li>

                <li class="review clearfix">
                    <div class="img_wrap">
                        <img src="img/user.png" alt="user">
                    </div>
                    <div class="txt_wrap">
                        <p class="nickname">nickname</p>
                        <p class="sentence">또한, 클럽 모임의 장소 역시 넓고 깨끗한 공간을 사용하였고, 보드게임에 필요한 모든 장비와 음료 등도 제공해주어 편안하게 게임을 즐길 수 있었습니다.</p>
                        <p class="r_date">셸비 가문의 보드게임 / 23. 04. 07.</p>
                        <p class="btn">☆</p>
                    </div>
                </li>

                <li class="review clearfix">
                    <div class="img_wrap">
                        <img src="img/user.png" alt="user">
                    </div>
                    <div class="txt_wrap">
                        <p class="nickname">nickname</p>
                        <p class="sentence">총평하자면, 존 셸비의 보드게임 클럽 모임은 게임을 즐기는 것 뿐만 아니라 사람들과 소통하고 친해지는 좋은 기회가 되어주는 모임이었습니다. 강력 추천합니다!</p>
                        <p class="r_date">셸비 가문의 보드게임 / 23. 04. 07.</p>
                        <p class="btn">☆</p>
                    </div>
                </li>

            </ul>

        </div>

    </section>

<jsp:include page="footer.jsp"/>