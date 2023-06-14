<%@page import="vo.Club_PageInfo"%>
<%@page import="vo.Boardgames2"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<% request.setCharacterEncoding("utf-8"); %>

    <!--pc용/ico-->
    <link rel="shortcut icon" href="img/favicon.ico">

    <!--안드로이드/png-->
    <link rel="shortcut icon" href="img/favicon-16x16.png">

    <!--아이폰/png, jpg-->
    <link rel="apple-touch-icon" href="img/favicon-16x16.png">
    
    <!--구글웹폰트-->
    <link href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR:wght@300;400&display=swap" rel="stylesheet">
    
<!DOCTYPE HTML>
<html>
 <head>
    <meta charset="utf-8">
    <title>게임정보페이지</title>
    <link rel="stylesheet" type="text/css" href="css/shop_mainn.css">
    <link rel="stylesheet" type="text/css" href="css/gameinfo_main.css">
 </head>
 <style type="text/css">
 </style>
 <script src="https://ajax.googleapis.com/ajax/libs/jquery/2.2.4/jquery.min.js"></script>
 <script src="js/boardgameinfo_main.js"></script>
 
<body>

 <div id="all">
        <jsp:include page="header_gameinfo2.jsp"/>
    <div class="gameinfo_main">
        <section class="wrap clearfix">
            <nav class="mainfont">
                회원님께 추천하는 보드게임</nav>
            <article id="moviearticle">       
         <div id="gameinfomain_slider">
            <div id="infomain_slider">
            <!--
  <a href="#" class="control_next">></a>
  <a href="#" class="control_prev"><</a>
    -->
  <ul>
    <li>
      <div class="slide_one slide">
        <div>
          <video muted autoplay loop class="slide">
            <source src="img/ELDEN_RING_Board_Game.mp4" type="video/mp4">
              <strong>
                Your browser does not support the video tag.
              </strong>
          </video>
          <div class="slide-copy">
            <h2>&nbsp;</h2>
            <p>&nbsp;</p>
          </div>
        </div>
      </div>
    </li>
<!--
    <li>
      <div class="slide_two slide">
        <div>
          <video muted autoplay loop class="slide">
            <source src="img/Catan Trailer.mp4" type="video/mp4">
              <strong>
                Your browser does not support the video tag.
              </strong>
          </video>
          <div class="slide-copy">
            <h2>&nbsp;</h2>
            <p>&nbsp;</p>
          </div>
        </div>
      </div>
    </li>

    <li>
      <div class="slide_three slide">
        <div>
          <video muted autoplay loop class="slide">
            <source src="img/Runar_-_The_Boardgame.mp4" type="video/mp4">
              <strong>
                Your browser does not support the video tag.
              </strong>
          </video>
          <div class="slide-copy">
            <h2>&nbsp;</h2>
            <p>&nbsp;</p>
          </div>
        </div>
      </div>
    </li>

    <li>
      <div class="slide_two slide">
        <div>
          <video muted autoplay loop class="slide">
            <source src="img/Catan Trailer.mp4" type="video/mp4">
              <strong>
                Your browser does not support the video tag.
              </strong>
          </video>
          <div class="slide-copy">
            <h2>&nbsp;</h2>
            <p>&nbsp;</p>
          </div>
        </div>
      </div>
     </li>--> 

  </ul>  
</div>
      </div>
            </article>
            <article id="moviearticleside">
                <div class="moviearticlesidediv">
                    <ul>
                        <li class="sliderside">
                            <img src="img/CATAN-696x392.png">
                        </li>
                        <li class="sliderside2"><h4>CATAN</h4></li>
                    </ul>
                </div>
                <div class="moviearticlesidediv">
                    <ul>
                        <li class="sliderside">
                            <img src="img/eldenring.png">
                        </li>

                        <li class="sliderside2"><h4>ELDENRING</h4></li>
                    </ul>
                </div>
                <div class="moviearticlesidediv">
                    <ul>
                        <li class="sliderside">
                            <img src="img/pic7053634.png">
                        </li>
                        <li class="sliderside2"><h4>RUNAR</h4></li>
                    </ul>
                </div>
                <div class="moviearticlesidediv">
                    <ul>
                        <li class="sliderside"><img src="img/pic6653293.png"></li>
                        <li class="sliderside2"><h4>
                        Deep Rock</h4></li>
                    </ul>
                </div>
            </article>
        </section>
        <section>
            <nav class="mainfont">
                테마별로 살펴보기
            </nav>
            <article id="maintheme">
                <div class="options">
   <div class="option active" style=" background-image: url('img/Fantasy_World.png');">
      <div class="shadow"></div>
      <div class="label">
         <div class="icon">
            <i><img src="img/dragon-logo_1.jpg"> </i>
         </div>
         <div class="info">
            <div class="main">Fantasy</div>
            <div class="sub">판타지</div>
         </div>
      </div>
   </div>
   <div class="option" style=" background-image: url(img/Negotiation_main.png);">
        <div class="shadow"></div>
        <div class="label">
            <div class="icon">
                <i><img src="img/negotiation_logo.png"></i>
            </div>
            <div class="info">
                <div class="main">Negotiation</div>
                <div class="sub">협상</div>
            </div>
        </div>
    </div>
    <div class="option" style="background-image:url(img/reasoning.jpg);">
        <div class="shadow"></div>
        <div class="label">
            <div class="icon">
                <i><img src="img/Reasoning_logo.png"></i>
            </div>
            <div class="info">
                <div class="main">Reasoning</div>
                <div class="sub">추론</div>
             </div>
        </div>
    </div>
    <div class="option" style="background-image:url(img/Horror_main.jpg);">
        <div class="shadow"></div>
        <div class="label">
            <div class="icon">
                <i><img src="img/scream.png"></i>
            </div>
            <div class="info">
                <div class="main">Horror</div>
                <div class="sub">공포</div>
            </div>
        </div>
    </div>
    <div class="option" style="background-image:url(img/Action.jpg);">
        <div class="shadow"></div>
        <div class="label">
            <div class="icon">
                <i><img src="img/Dexterity_logo.png"></i>
            </div>
            <div class="info">
                <div class="main">Action&Dexterity</div>
                <div class="sub">액션&재주</div>
            </div>
        </div>
    </div>
    <div class="option" style="background-image:url(img/dice_main.jpg);">
        <div class="shadow"></div>
        <div class="label">
            <div class="icon">
                <i><img src="img/dice_logo.png"></i>
            </div>
            <div class="info">
                <div class="main">Dice</div>
                <div class="sub">주사위</div>
            </div>
        </div>
    </div>
        </div>
            <a></a>
            </article>
        </section>
    </div>
    <section id="mainshelter">
    	<img src="img/shelterimg3.png">
    </section>
    <div class="gameinfo_main">
        <div id="gamediv">
            <nav id="bestnav">
                <ul id="gamenav">
                    <li class="gmargin"><a href="#">인기 보드게임</a></li>
                    <li class="gmargin"><a href="#">신규 보드게임</a></li>
                    <li class="gmargin"><a href="#">모임 베스트6</a></li>
                </ul>
            </nav>
            <section id="gamesection">
                <section id="bestgamesection">
    <div class="container">
       <div class="bars">
          <div class="bar bar-over" data-value='0'>
             <img src="img/Marvel_Champions_The_Card_Game.jpg" alt="">
             <div class="details">
                <h3 class="details-title">마블 챔피언스: 카드 게임</h3>
                <p>Forge your own path in Hollow Knight! An epic action adventure through a vast ruined kingdom of insects.   </p>
          </div>
       </div>
       
       <div class="bar" data-value='1'>
          <img src="img/Mansions_of_Madness_Second_Edition.jpg" alt="">
          <div class="details">
             <h3 class="details-title">광기의 저택</h3>
             <p>Soccer meets driving once again in the long-awaited, physics-based multiplayer-focused sequel to Supersonic Acrobatic Rocket-Powered Battle-Cars! </p>
          </div>
       </div>
          
       <div class="bar" data-value='2'>
          <img src="img/Wingspan.png" alt="">
          <div class="details">
             <h3 class="details-title">윙스팬</h3>
             <p>Papers, Please has the player take the role of a border crossing immigration officer in the fictional dystopian Eastern Bloc-like country of Arstotzka, which has been and continues to be at political... </p>
          </div>
       </div>  

          <div class="bar" data-value='3'>
             <img src="img/Viticulture_Essential_Edition.jpg" alt="">
             <div class="details">
                <h3 class="details-title">비티컬처 에센셜 에디션</h3>
                <p>Forge your own path in Hollow Knight! An epic action adventure through a vast ruined kingdom of insects.   </p>
          </div>
       </div>
          
        <div class="bar" data-value='4'>
          <img src="img/Splendor.png" alt="">
          <div class="details">
             <h3 class="details-title">스플렌더</h3>
             <p>Soccer meets driving once again in the long-awaited, physics-based multiplayer-focused sequel to Supersonic Acrobatic Rocket-Powered Battle-Cars! </p>
          </div>
       </div>
        
        <div class="bar" data-value='5'>
          <img src="img/Star_Wars_Rebellion.png" alt="">
          <div class="details">
             <h3 class="details-title">스타 워즈 : 카드 게임</h3>
             <p>Papers, Please has the player take the role of a border crossing immigration officer in the fictional dystopian Eastern Bloc-like country of Arstotzka, which has been and continues to be at political... </p>
          </div>
       </div>   
       <div class="col">
          <div class="content">
             <h2 id="game-title"></h2>
             <p id="game-pub"></p>
             <p id="game-details"></p>
             <p id="game-ratings"></p>
             <p id="game-price"></p>
             <p id="game-tags"></p>
          </div>
       </div>
       </div>
    </div>
                </section>
            </section>
            </div>
    <section id="mainshelter2">
                <article>
                <div class="wrapper">
     <h2><strong>All Games<span>( 70 )</span></strong></h2>
     <div class="cards">
        <figure class="card">
            <img src="img/pic6293412.png" />
            <figcaption>Ark Nova</figcaption>
        </figure>
        <figure class="card">
            <img src="https://www.linkpicture.com/q/2_965.jpg" />
            <figcaption>Stick Fight</figcaption>
        </figure>
        <figure class="card">
            <img src="https://www.linkpicture.com/q/3_695.jpg" />
            <figcaption>Minion Masters</figcaption>
        </figure>
        <figure class="card">
            <img src="https://www.linkpicture.com/q/4_543.jpg" />
            <figcaption>KoseBoz!</figcaption>
        </figure>
        <figure class="card">
            <img src="img/pic3490053.png" />
            <figcaption>Brass: Birmingham</figcaption>
        </figure>
       </div>
     <h2><strong>What's new?</strong></h2>
     <div class="news">
        <figure class="article">
            <img src="img/pic3163924.png" />
            <figcaption>
                <h3>New Item</h3>
                <p>
                In today’s update, two heads are better than one, and three heads are better than that, as the all-new Flockheart’s Gamble Arcana item for Ogre Magi makes its grand debut.
                </p>
            </figcaption>
        </figure>
        <figure class="article">
            <img src="img/CATAN-3D.png" />
            <figcaption>
                <h3>Update</h3><br>
                <p>
                전 세계에서 수많은 보드게임 팬이 열광한 바로 그 게임,
                전 서계에서 가장 영향력 있는 보드게임,
                <카탄>이 3D로 새롭게 재탄생했습니다.
                풍요로운 들판과 산, 숲 등 땅 타일이 3D로 제작되어,
                더욱 우아하고 멋스럽게 게임을 즐길 수 있습니다.
                </p>
            </figcaption>
        </figure>
        <figure class="article">
            <img src="img/acropolice.jpg" />
            <figcaption>
                <h3>2023 황금의 에이스 수상작</h3><br>
                <p>
                올해의 게임 부문에 '모든 대중(Tout Public)'이라는 이름이 부여됐다. 이 부문은 가장 광범위한 대중을 대상으로 하는 게임을 다룬다. 이 항목의 후보작은 어린이부터 성인까지 동등한 수준으로 즐길 수 있어야 하며, 쉽게 설명할 수 있는 규칙을 가지고 있으며, 1시간 미만 동안 진행되어야 한다.
                </p>
            </figcaption>
        </figure>
     </div>
     </div>
    </article>
        </section>
    </div>
    <nav id="layout">
    </nav>
        </div>
    <div id="bimage">
    <div>
 
        <nav><center>
                <article id="customstartfont"><strong>
                    세상에 하나뿐인 보드게임을 직접 디자인해 보세요!
                </article></center></strong>
        </nav>
        <div id="customstart" align="center">
            <table>
                <tr>
                    <td><img src="img/build-game-box.jpg">
                    </td>
                    <td><img src="img/build-game-mats.jpg"></td>
                    <td><img src="img/custom-board-games_board.jpg">
                    </td>
                </tr>
                <tr>
                    <td><img src="img/custom-dices.jpg">
                    </td>
                    <td><img src="img/game-cards-customization.jpg"></td>
                    <td><img src="img/game-pieces.jpg">
                    </td>
                </tr>
            </table>
            <div id="custombutton" align="center">
                <button class="button4">커스텀 페이지로</button>
            </div>
        </div>
    </div>
    <section class="custommainimg">
        <img src="img/tiles-170814.jpg">
        <div class="custombottomimg">
            <img src="img/Pawn.png">
        </div>
    </section>
    <section class="custommainimg">
        <img src="img/card_stock_price_down_2020_webbanner_20200915.jpg">
        <div class="custombottomimg">
            <img src="img/customcard.png">
        </div>
    </section>
    <section class="custommainimg">
        <img src="img/gloss-linen-box-170215.jpg">
        <div class="custombottomimg">
            <img src="img/board.png">
        </div>
    </section>
    <div align="center">
        <aside>
            <a href="#"> 상단으로 </a>
        </aside>
    </div>
    <div id="custombutton2" align="center">
        <button class="button button4">more image</button>
    </div>
</div>
 <script>
const bar = document.querySelectorAll('.bar');
const title = document.querySelector('#game-title');
const pub = document.querySelector('#game-pub');
const details = document.querySelector('#game-details');
const rating = document.querySelector('#game-ratings');
const price = document.querySelector('#game-price');
const tags = document.querySelector('#game-tags');

window.onload = () => {
   title.innerHTML = gameDetails[0].title;
   pub.innerHTML = gameDetails[0].pub;
   details.innerHTML = gameDetails[0].des;
   rating.innerHTML = gameDetails[0].rating;
   price.innerHTML = gameDetails[0].price;
   tags.innerHTML = "<span>Tags: </span>" + gameDetails[0].tags.join(', ');
}

bar.forEach(bar => bar.addEventListener('mouseover', barOver));

function barOver(e) {
   let arrRef = e.currentTarget.getAttribute('data-value');
   bar.forEach(bar => bar.classList.remove('bar-over'));
   
   e.currentTarget.classList.add('bar-over');
   title.innerHTML = gameDetails[arrRef].title;
   pub.innerHTML = gameDetails[arrRef].pub;
   details.innerHTML = gameDetails[arrRef].des;
   rating.innerHTML = gameDetails[arrRef].rating;
   price.innerHTML = gameDetails[arrRef].price;
   tags.innerHTML = "<span>Tags: </span>" + gameDetails[arrRef].tags.join(', ');
}

const gameDetails = [
   {
      title: '마블 챔피언스: 카드 게임',
      pub: 'Publisher: Team Cherry',
      des: '전략적으로 적을 패는 재미와 마블 히어로의 능력을 잘 살린 게임으로 몰입감이 좋다. 또한 카드를 조합하여 만들어 하는 재미. 1인으로 해도 손색없는 1인 게임의 높은 점수를 준다.',
      rating: '난이도: ★★★☆☆',
      price: '₩89,000',
      tags: ['핸드 관리', '플레이어별 특수능력', '협력 게임']
   },
   {
      title: '광기의 저택',
      pub: 'Publisher: ADC Blackfire Entertainment',
      des: '보드게임의 혁명이 나타났다!!!! 룰이 엄청쉽고 전자기기를 이용해서 어려운 보드게임을 쉽게 즐길수 있게 만들어놓은 게임!!! 시나리오가 조금 적은게 단점인데 확장도 나왔으면 좋겠어요!!!!! 너무 재밌어요!!! 2행동하고 앱만 따라가면 금방금방 적응할수도있고...!!!',
      rating: '난이도: ★★★☆☆',
      price: '₩120,000',
      tags: ['핸드관리', '주사위 굴림', '플레이어별 특수능력']
   },
   {
      title: '윙스팬',
      pub: 'Publisher: 999 Games',
      des: '평화로운 노래 하나 틀어놓고 윙스팬을 즐겨보자. 귀여운 새들을 하나둘 씩 들여놓고 알을 낳다보면 어느새 "인간이 미안해"를 외치는 자신을 만나게 된다',
      rating: '난이도: ★★☆☆☆',
      price: '₩30,000',
      tags: ['핸드 관리', '주사위 굴림', '셋 컬렉션']
   },
   {
      title: '비티컬처 에센셜 에디션',
      pub: 'Publisher: Maldito Games',
      des: '와인 농장 테마의 정수 다양한 방문객으로 리플레이성 및 재미 보장 카빨망겜 - 입문 전략으로써 매우 좋은 포지션 선턴이 너무 유리함. 기상차트 2번 칸의 녹색카드 얻기가 왜 1원얻기보다 위에 있는지 의문. ->이는 투스카니에서 패치가 되어 두개의 위치가 바뀌고, 선턴의 강점을 막아주는 요소 증가. 투스카니가 없다면 중반 이후부터 기상차트에서 무조건 선턴을 잡고 보는 광경을 볼 수 있음 - 기상차트의 의미 퇴색 참고 비티컬쳐는 와이너리로 방문객들을 끌어들이는 테마 비뉴스는 와인을 만들어 품평회를 통해 명성을 떨치는 테마',
      rating: '난이도: ★★★☆☆',
      price: '₩39,000',
      tags: ['핸드관리', '일꾼 놓기', '솔로/솔로테어 게임']
   },
   {
      title: '스플렌더',
      pub: 'Publisher: Brain Games',
      des: ' 아이들과 가장 많이 돌리는 게임 룰이 간단하고, 구성품도 간단하고, 확장판도 재미있고. 2년전 유치원다니는 아들도 이길수 있었던 누구나 즐길수 있는 최고의 가족게임.',
      rating: '난이도: ★★☆☆☆',
      price: '₩49,000원',
      tags: ['Multiplayer', 'Competitive', 'Football']
   },
   {
      title: '스타 워즈 : 카드 게임',
      pub: 'Publisher: Edge Entertainment',
      des: '시스템 상으로 절묘하게 돌아가는 구석이 없는 바는 아니나, 뭔가 좀 아쉬운 맛이 자꾸 느껴지는 게임입니다. 기본판만으로는 다양성이 확보되지 않는 느낌이 워해머 인베이젼보다 좀 강하고, 속도가 약간 더디게 느껴지는 편입니다. 그러나 다크사이드와 라이트사이드의 미묘한 대결구도를 테마성으로 느끼기는 좋은 듯합니다. 적어도 기본판만으로는 그렇습니다.',
      rating: '난이도: ★★★☆☆',
      price: '₩89,000',
      tags: ['Indie', 'Pixal', 'Sim']
   },
]
</script>
<script>
   $(".option").click(function(){
   $(".option").removeClass("active");
   $(this).addClass("active");
   });
 </script>
 <script>
$(document).ready(function () {
    
    $('#gamenav').children('li').first().children('a').addClass('active')
        .next().addClass('is-open').show();
        
    $('#gamenav').on('click', 'li > a', function() {
        
      if (!$(this).hasClass('active')) {

        $('#gamenav .is-open').removeClass('is-open').hide();
        $(this).next().toggleClass('is-open').toggle();
          
        $('#gamenav').find('.active').removeClass('active');
        $(this).addClass('active');
      } else {
        $('#gamenav .is-open').removeClass('is-open').hide();
        $(this).removeClass('active');
      }
   });
});
  </script>
  
  <jsp:include page="footer.jsp"/>
</body>
</html>