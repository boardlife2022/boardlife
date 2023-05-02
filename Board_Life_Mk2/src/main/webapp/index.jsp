<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<% request.setCharacterEncoding("utf-8"); %>

<jsp:include page="header.jsp"/>
    <link rel="stylesheet" href="css/index.css" type="text/css">
    <script src="js/index.js"></script>
    
    <link rel="stylesheet" href="https://ajax.googleapis.com/ajax/libs/jqueryui/1.13.2/themes/smoothness/jquery-ui.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jqueryui/1.13.2/jquery-ui.min.js"></script>
    
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

    <!-- section -->

     <main>

        <div class="inner-main">

            <img src="img/celestia_pkg.png" alt="셀레스티아_패키지" class="main-pkg">

            <div class="main-info">

                <img src="img/celestia-title.png" alt="셀레스티아" class="main-title">
                <p class="main-des">"아름다운 하늘 위의 섬에서 펼쳐지는 흥미진진한 대모험"</p>

                <a href="#" class="main-btn">자세히 보기</a>

            </div>

        </div>

    </main>

    <section class="promotion">

        <div class="p-left"></div>
        <div class="p-right"></div>

        <div class="inner-promotion clearfix">

            <div class="best-game clearfix">

                <span class="best-title">실시간 베스트 게임</span>

                <div class="best-position">

                    <ul class="best-wrap">
                        <li> <span class="ranking">1</span> 슬리핑 갓즈 (2019) <span class="static">-</span></li>
                        <li> <span class="ranking">2</span> 투 매니 본즈 (2016) <span class="static">▲ 1</span></li>
                        <li> <span class="ranking">3</span> 미드가르드의 챔피언 (2015) <span class="static">▲ 3</span></li>
                        <li> <span class="ranking">4</span> 우드 크래프트 (2022) <span class="static">-</span></li>
                        <li> <span class="ranking">5</span> 7 원더스 : 대결 (2015) <span class="static">-</span></li>
                        <li> <span class="ranking">6</span> 테라포밍 마스 (2016) <span class="static">▼ 1</span></li>
                        <li> <span class="ranking">7</span> 피드 더 크라켄 (2021) <span class="static">-</span></li>
                        <li> <span class="ranking">8</span> 서쪽 왕국의 성기사 (2019) <span class="static">▼ 2</span></li>
                        <li> <span class="ranking">9</span> 팬데믹 레거시 : 시즌1 (2015) <span class="static">▼ 1</span></li>
                        <li> <span class="ranking">10</span> 롤플레이어 어드벤쳐 (2021) <span class="static">-</span></li>
                    </ul>
                </div>

                <a href="#" class="best-btn">+</a>
            </div>

            <div class="event-banner clearfix">
                <p class="event-title">보드라이프 이벤트</p>
                <span class="event-btn"> <img src="img/btn_prom_down.png" alt="btn-down"></span>
                <!--                <a href="#" class="event_btn"> &#8896;</a>-->
            </div>

        </div>

    </section>

    <section class="events">

        <div class="inner-events">

            <div class="evt-show">

                <ul class="event-wrap clearfix">

                    <li class="event" id="one">
                        <span></span>
                        <a href="#"><img src="img/evt01.jpeg" alt="스위트스파이시"></a>
                    </li>

                    <li class="event on" id="two">
                        <span></span>
                        <a href="#"><img src="img/evt02.jpeg" alt="슬리핑갓즈"></a>
                    </li>

                    <li class="event" id="three">
                        <span></span>
                        <a href="#"><img src="img/evt03.jpeg" alt="서머너즈워"></a>
                    </li>

                    <!--
                    <li class="event">
                        <span></span>
                        <a href="#"><img src="img/evt01.jpeg" alt="스위트스파이시"></a>
                    </li>
-->

                </ul>

            </div>
        </div>


    </section>

    <section class="login-reward">

        <!--   로그인전에 보이는 화면    -->
        <% if(!member){  %>
        <div class="inner-reward clearfix">

            <div class="logo">
                <img src="img/board_life_logo_white.png" alt="보드라이프">
            </div>

            <div class="field-wrap">
                <div class="explain">
                    <p class="e-title">보드라이프 회원에게 주어지는 혜택!</p>
                    <p class="e-txt">
                        보드라이프 회원이세요? 로그인을 통해 출석 보상을 받아 보세요! <br>
                        보드라이프 회원이 아니세요? 가입을 통해 포인트 혜택을 받아보세요!
                    </p>
                </div>

                <div class="btn-field">
                    <div class="btn-wrap clearfix">
                        <a href="boardlife_join.jsp">회원 가입</a>
                        <a href="login_page.jsp">로그인</a>
                    </div>
                </div>

            </div>

        </div>
        

        <!--    if else 로그인후 보이는 화면   -->
        <% }else{ %>
        <div class="inner-login clearfix">

            <div class="rank">
                <img src="img/red_dice2.png" alt="보드라이프">
            </div>

            <div class="field-wrap">
                <div class="explain">
                    <p class="e-title"><%= name %>님 환영합니다!</p>
                    <p class="e-txt">
                        회원님은 현재 <span>Yellow Dice</span> 입니다! <br>
                        <span>Blue Dice</span> 까지 16 포인트가 필요합니다.
                    </p>
                </div>

                <div class="btn-field">
                    <a href="#">마이페이지</a>
                </div>

            </div>

        </div>
         <%} %>



    </section>

    <section class="game-info">

        <div class="inner-info">

            <div class="section-menu">
                <p>Best Boardgame 10</p>
            </div>

            <div class="tab-wrap">

                <div class="tab-best active clearfix">

                    <ul class="game-list">
                        <li class="best-boardgame" id="best01">
                            <div class="clearfix">
                                <img src="img/best01.png" alt="글룸헤이븐">
                                <div class="game-detail">
                                    <p class="game-title">글룸헤이븐(2017) gloomhaven</p>
                                    <p class="game-desc">Vanquish monsters with strategic cardplay. Fulfill your quest to leave your legacy!
                                        <br> 보드라이프 평점 : 8.56 / 유저 평점 : 9.2
                                    </p>
                                </div>
                            </div>
                        </li>

                        <li class="best-boardgame" id="best02">
                            <div class="clearfix">
                                <img src="img/best02.png" alt="테라포밍 마스">
                                <div class="game-detail">
                                    <p class="game-title">테라포밍 마스
                                        (2016) Terraforming Mars</p>
                                    <p class="game-desc">Compete with rival CEOs to make Mars habitable and build your corporate empire.
                                        <br> 보드라이프 평점 : 8.56 / 유저 평점 : 9.2
                                    </p>
                                </div>
                            </div>
                        </li>

                        <li class="best-boardgame" id="best03">
                            <div class="clearfix">
                                <img src="img/best03.png" alt="메이지 나이트">
                                <div class="game-detail">
                                    <p class="game-title">메이지 나이트
                                        (2011) Mage Knight</p>
                                    <p class="game-desc">Build your hero’s spells, abilities, and artifacts as you explore &amp; conquer cities.
                                        <br> 보드라이프 평점 : 8.56 / 유저 평점 : 9.2
                                    </p>
                                </div>
                            </div>
                        </li>

                        <li class="best-boardgame" id="best04">
                            <div class="clearfix">
                                <img src="img/best04.png" alt="가이아 프로젝트">
                                <div class="game-detail">
                                    <p class="game-title">가이아 프로젝트
                                        (2017) Gaia Project</p>
                                    <p class="game-desc">Expand, research, upgrade, and settle the galaxy with one of 14 alien species.
                                        <br> 보드라이프 평점 : 8.56 / 유저 평점 : 9.2
                                    </p>
                                </div>
                            </div>
                        </li>

                        <li class="best-boardgame" id="best06">
                            <div class="clearfix">
                                <img src="img/best06.png" alt="팬데믹 레거시">
                                <div class="game-detail">
                                    <p class="game-title">팬데믹 레거시: 시즌 1(2015) Pandemic Legacy: Season 1</p>
                                    <p class="game-desc">Mutating diseases are spreading around the world - can your team save humanity?
                                        <br> 보드라이프 평점 : 8.56 / 유저 평점 : 9.2
                                    </p>
                                </div>
                            </div>
                        </li>

                    </ul>


                    <div class="main-best">

                        <img src="img/best07.png" alt="best">

                        <div class="best-captions">

                            <p class="maingame-title">글룸헤이븐(2017) gloomhaven</p>
                            <p class="maingame-desc">anquish monsters with strategic cardplay. Fulfill your quest to leave your legacy!
                                <br> 보드라이프 평점 : 8.56 / 유저 평점 : 9.2
                            </p>

                        </div>
                    </div>
                </div>
            </div>
        </div>



    </section>

    <section class="custom">

        <div class="inner-custom">

            <img src="img/bk01.png" alt="card_back" class="card-ex1">
            <img src="img/card_ex.jpg" alt="card_ex" class="card-ex2">

            <div class="card">
                <img src="img/fr01.jpg" alt="front" class="card-front">
                <img src="img/bk01.png" alt="back" class="card-back">
            </div>


            <div class="custom-wrap">
                <div class="c-title">
                    <p>BoardLife Boardgame Custom</p>
                    <span>나만의 보드게임을 직접 만들어보세요!</span>
                </div>

                <div class="custom-option">

                    <p>앞면</p>

                    <div class="front-custom clearfix">

                        <div class="option fr01 active"></div>
                        <div class="option fr02"></div>
                        <div class="option fr03"></div>
                        <div class="option fr04"></div>
                        <div class="option fr05"></div>

                    </div>

                    <p>뒷면</p>

                    <div class="back-custom clearfix">
                        <div class="option bk01 active"></div>
                        <div class="option bk02"></div>
                        <div class="option bk03"></div>
                        <div class="option bk04"></div>
                        <div class="option bk05"></div>
                    </div>


                    <a href="#">Start Creating</a>


                </div>

            </div>

        </div>

    </section>

    <section class="clubs">

        <div class="inner-clubs">

            <div class="section-menu">
                <p>Best Boardgame Clubs</p>
            </div>
            
        <div class="arrow-btn">
            <div class="left"><img src="img/next-left.png" alt="left"></div>
            <div class="right"><img src="img/next-right.png" alt="right"></div>
        </div>

            <ul class="club-wrap clearfix">

                <li class="club">
                    <span></span>
                    <a href="#"><img src="img/index-club01.jpg" alt="논알콜모임">
                        <p>논알콜 모임 : 2월 2주차 "누가 치즈를 훔쳤을까?"</p>
                    </a>
                </li>

                <li class="club on">
                    <span></span>
                    <a href="#"><img src="img/index-club02.jpg" alt="병따개 챌린지">
                        <p>제 4회 병따개 챌린지 : 2023. 02. 07(화) 오후 9시~</p>
                    </a>
                </li>

                <li class="club">
                    <span></span>
                    <a href="#"><img src="img/index-club03.jpg" alt="세상에 나쁜겜은 없다">
                        <p>세상에 나쁜겜은 없다 : 2023. 02. 08(수)</p>
                    </a>
                </li>


            </ul>

        </div>


    </section>

    <section class="shopping">

        <div class="inner-shopping">

            <div class="section-menu">
                <p>Best Boardgame Products</p>
            </div>
   
            <ul class="products-wrap disableselect disabledrag" id="move">

                <li class="product">
                    <a href="#"><img src="img/product01.jpeg" alt="">
                        <span>Best</span>
                        <p class="name">머더 미스터리 미니 시리즈: <br> 웬디, 어른이 되렴 한국어판</p>
                        <p class="price">22,000원</p>
                    </a>

                </li>

                <li class="product">
                    <a href="#"><img src="img/product02.jpeg" alt="">
                        <span>Best</span>
                        <p class="name">머더 미스터리 미니 시리즈: <br> 웬디, 어른이 되렴 한국어판</p>
                        <p class="price">22,000원</p>
                    </a>

                </li>

                <li class="product">
                    <a href="#"><img src="img/product03.jpeg" alt="">
                        <span>Best</span>
                        <p class="name">머더 미스터리 미니 시리즈: <br> 웬디, 어른이 되렴 한국어판</p>
                        <p class="price">22,000원</p>
                    </a>

                </li>

                <li class="product">
                    <a href="#"><img src="img/product04.jpeg" alt="">
                        <span>Best</span>
                        <p class="name">머더 미스터리 미니 시리즈: <br> 웬디, 어른이 되렴 한국어판</p>
                        <p class="price">22,000원</p>
                    </a>

                </li>

                <li class="product">
                    <a href="#"><img src="img/product05.jpeg" alt="">
                        <span>Best</span>
                        <p class="name">머더 미스터리 미니 시리즈: <br> 웬디, 어른이 되렴 한국어판</p>
                        <p class="price">22,000원</p>
                    </a>

                </li>

                <li class="product">
                    <a href="#"><img src="img/product06.jpeg" alt="">
                        <span>Best</span>
                        <p class="name">머더 미스터리 미니 시리즈: <br> 웬디, 어른이 되렴 한국어판</p>
                        <p class="price">22,000원</p>
                    </a>

                </li>

                <li class="product">
                    <a href="#"><img src="img/product07.jpeg" alt="">
                        <span>Best</span>
                        <p class="name">머더 미스터리 미니 시리즈: <br> 웬디, 어른이 되렴 한국어판</p>
                        <p class="price">22,000원</p>
                    </a>

                </li>

                <li class="product">
                    <a href="#"><img src="img/product08.jpeg" alt="">
                        <span>Best</span>
                        <p class="name">머더 미스터리 미니 시리즈: <br> 웬디, 어른이 되렴 한국어판</p>
                        <p class="price">22,000원</p>
                    </a>

                </li>

                <li class="product">
                    <a href="#"><img src="img/product09.jpeg" alt="">
                        <span>Best</span>
                        <p class="name">머더 미스터리 미니 시리즈: <br> 웬디, 어른이 되렴 한국어판</p>
                        <p class="price">22,000원</p>
                    </a>

                </li>

                <li class="product">
                    <a href="#"><img src="img/product10.jpeg" alt="">
                        <span>Best</span>
                        <p class="name">머더 미스터리 미니 시리즈: <br> 웬디, 어른이 되렴 한국어판</p>
                        <p class="price">22,000원</p>
                    </a>

                </li>


            </ul>

        </div>

    </section>
    
    <jsp:include page="footer.jsp"/>
