<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<% request.setCharacterEncoding("utf-8"); %>

<jsp:include page="header.jsp"/>

	<!-- CSS -->
    <link rel="stylesheet" href="css/boardgameclub_main.css" type="text/css">
    
    <!--javascript and Jquery-->
    <script src="js/boardgameclub_main.js"></script>
    
    
      <main>

        <div class="inner_main">

            <div class="main_wrap">
                <p>함께하는 보드게임 라이프</p>
                <a href="#">바로 신청하기</a>
            </div>

        </div>

    </main>

    <div class="about clearfix">

        <div class="inner_about">

            <div class="a_left">

                <div class="a_left_wrap">
                    <div class="title">
                        <span>About Board Game Club</span>
                        <div class="bar">
                            <hr>
                        </div>
                    </div>

                    <p>
                        <span>Let's Enjoy it together</span> <br>
                        혼자서 할 수 없는 보드게임 <br>
                        보드라이프 클럽 모임을 통해 다양한 사람들을 만나고 <br>
                        다같이 모여 즐거운 시간을 만들어요!
                    </p>
                </div>
            </div>

            <div class="a_right">

                <div class="a_img"><img src="img/about.jpeg" alt="about"></div>

            </div>

        </div>

    </div>

    <div class="peoples_title clearfix">

        <div class="img_box">

            <div class="cover"></div>

        </div>

        <div class="right_box">

            <div class="title">
                <span>Board Life Clubs</span>
                <div class="bar">
                    <hr>
                </div>
                <p>보드라이프 클럽에 함께하는 사람들</p>
            </div>

        </div>

    </div>

    <div class="statistics">

        <div class="s_values clearfix">

            <div class="v_title">
                <p class="txt">개설된 보드게임 클럽</p>
                <p class="num" id="total_clubs">65</p>
            </div>
            <div class="v_title">
                <p class="txt">진행중인 클럽</p>
                <p class="num" id="proc_clubs">12</p>
            </div>
            <div class="v_title">
                <p class="txt">누적 참여자 수</p>
                <p class="num" id="peoples">1,872</p>
            </div>

        </div>

    </div>


    <p class="r_title">
        지금,
    </p>

    <div class="reasons">
        <div class="inner-reasons">

            <div class="r_wrap clearfix">
                <p>보드게임 클럽에 참여해야 하는 이유</p>

                <div class="r_box">
                    <div class="r_img r1"></div>
                    <div class="rbar">
                        <hr>
                    </div>
                    <p>01 개성 있는 사람들이 모여</p>
                </div>

                <div class="r_box">
                    <div class="r_img r2"></div>
                    <div class="rbar">
                        <hr>
                    </div>
                    <p>02 다양한 보드게임을 함께 즐기고</p>
                </div>

                <div class="r_box">
                    <div class="r_img r3"></div>
                    <div class="rbar">
                        <hr>
                    </div>
                    <p>03 친목을 쌓아 갑니다</p>
                </div>

            </div>

        </div>

    </div>

    <div class="guide_wrap clearfix">

        <div class="title">
            <span>Board Game Club Guide</span>
            <div class="bar">
                <hr>
            </div>
        </div>

        <div class="guide_odd">
            <div class="guide_txt">
                <p class="guide_title_kor">오프라인 보드게임 클럽</p>
                <p class="guide_title_eng">Offline Board Game Club</p>
                <span>Lorem Ipsum</span>
            </div>

            <div class="guide_img cl_offline"></div>
        </div>

        <div class="guide_even">

            <div class="guide_img cl_cafe"></div>

            <div class="guide_txt">
                <p class="guide_title_kor">보드게임카페 클럽 모임</p>
                <p class="guide_title_eng">Board Game Cafe</p>
                <span>Lorem Ipsum</span>
            </div>

        </div>

        <div class="guide_odd">
            <div class="guide_txt">
                <p class="guide_title_kor">테마별 보드게임 클럽</p>
                <p class="guide_title_eng">Theme Board Game Club</p>
                <span>Lorem Ipsum</span>
            </div>

            <div class="guide_img cl_theme"></div>
        </div>

        <div class="guide_even 4">

            <div class="guide_img cl_online"></div>

            <div class="guide_txt">
                <p class="guide_title_kor">온라인 보드게임 클럽</p>
                <p class="guide_title_eng">Online Board Game Club</p>
                <span>Lorem Ipsum</span>
            </div>

        </div>

    </div>


    <div class="clubs">

        <div class="inner_clubs">

            <div class="title">
                <span>Clubs</span>
                <div class="bar">
                    <hr>
                </div>
                <p>진행중인 클럽</p>
            </div>

            <div class="club_wrap clearfix">

                <div class="club">
                    <a href="#" class="inner_club">
                        <p class="game_title">세븐 원더스</p>
                        <p class="hashtag">#인터랙션 #평등 #공평</p>
                        <img src="img/club01.png" alt="세븐원더스">
                        <div class="c_info">
                            <span>onffline</span>
                            <span>인터랙션</span>
                            <span>part 213</span>
                        </div>
                    </a>
                    <p class="club_title">안양 타이레놀 - 제 213회 모임 &lt; 평등과 공평 &gt;</p>

                </div>

                <div class="club">
                    <a href="#" class="inner_club">
                        <p class="game_title">퍼틸리티</p>
                        <p class="hashtag">#가족끼리 #소소하게 #패밀리_게임</p>
                        <img src="img/club02.jpeg" alt="퍼틸리티">
                        <div class="c_info">
                            <span>offline</span>
                            <span>패밀리</span>
                            <span>part 4</span>
                        </div>
                    </a>
                    <p class="club_title">나주 보노보노 - 가족끼리 소소하게 패밀리 게임</p>

                </div>

                <div class="club">
                    <a href="#" class="inner_club">
                        <p class="game_title">윙스팬</p>
                        <p class="hashtag">#동물 #카드게임 #simple&amp;easy</p>
                        <img src="img/club03.png" alt="윙스팬">
                        <div class="c_info">
                            <span>offline</span>
                            <span>카드게임</span>
                            <span>part 116</span>
                        </div>
                    </a>
                    <p class="club_title">포나보여 : 포도나무의 보드게임 여행</p>

                </div>

                <div class="club">
                    <a href="#" class="inner_club">
                        <p class="game_title">반지전쟁 : 가운데 땅의 전사들</p>
                        <p class="hashtag">#판타지 #소설원작 #전략</p>
                        <img src="img/club04.webp" alt="반지전쟁">

                        <div class="c_info">
                            <span>offline</span>
                            <span>전략</span>
                            <span>part 3</span>
                        </div>
                    </a>
                    <p class="club_title">뜨겁게 불태울 이틀 간의 8연전 </p>

                </div>

                <div class="club">
                    <a href="#" class="inner_club">
                        <p class="game_title">스타워즈 : 리벨리온</p>
                        <p class="hashtag">#SF #전략 #주사위</p>
                        <img src="img/club05.png" alt="스타워즈">

                        <div class="c_info">
                            <span>offline</span>
                            <span>SF</span>
                            <span>part 1</span>
                        </div>
                    </a>
                    <p class="club_title">서산 보드게임 : 스타워즈 리벨리온 </p>

                </div>

                <div class="club">
                    <a href="#" class="inner_club">
                        <p class="game_title">스위트랜디아</p>
                        <p class="hashtag">#카드 #경매 #입찰</p>
                        <img src="img/club06.webp" alt="스위트랜디아">

                        <div class="c_info">
                            <span>offline</span>
                            <span>경매</span>
                            <span>part 17</span>
                        </div>
                    </a>
                    <p class="club_title">세상에 나쁜겜은 없다</p>

                </div>

            </div>

        </div>

    </div>

    <div class="find">

        <div class="find_cafe">

            <div class="title">
                <span>Find Board Game Cafe</span>
                <div class="bar">
                    <hr>
                </div>
            </div>

            <div class="find_wrap clearfix">

                <div class="find_img"><img src="img/cafe_img.png" alt="cafe"></div>
                <div class="find_txt">
                    <p class="find_title">Feel Board Game Cafe Closely</p>
                    <p class="find_content">나와 가까운 보드게임 카페 클럽을 빠르게찾아보세요!</p>

                    <a href="#">클럽 찾아 보기</a>

                </div>

            </div>

        </div>

    </div>
    
    <jsp:include page="footer.jsp"/>