<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<% request.setCharacterEncoding("utf-8"); %>
<!DOCTYPE HTML>
<html>
 <head>
    <meta charset="utf-8">
    <title>게임정보페이지</title>
    <link rel="stylesheet" type="text/css" href="css/shop_mainn.css">
    <link rel="stylesheet" type="text/css" href="css/gameinfo_main.css">
    <link rel="stylesheet" type="text/css" href="css/header_gameinfo2.css">
 </head>
 <style type="text/css">
 </style>
 <script src="https://ajax.googleapis.com/ajax/libs/jquery/2.2.4/jquery.min.js"></script>
<body>
 <div id="all">
    <header>
        <jsp:include page="header_gameinfo2.jsp"/>
    </header>
    <div class="gameinfo_main">
        <section class="wrap clearfix">
            <nav class="mainfont">
                회원님께 추천하는 보드게임</nav>
            <article id="moviearticle">       
         <div id="slider">
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
               <div class="img1"></div>
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
                <i><img src="img/Negotiation_logo1.png"></i>
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
                <i><img src="img/reasoning_logo.jpg"></i>
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
    <section id="mainshelter"><img src="img/shelterimg3.png">
        <!--<article id="mainshelterimg"></article>
        <article id="mainsheltertext"> </article>
        <article></article>-->
    </section>
    <div class="gameinfo_main">
        <div id="gamediv">
            <nav id="bestnav">
                <ul id="gamenav">
                    <li class="gmargin"><a href="#">인기게임</a></li>
                    <li class="gmargin"><a href="#">신규게임</a></li>
                    <li class="gmargin"><a href="#">모임베스트6</a></li>
                </ul>
            </nav>
            <section id="gamesection">
                <section id="bestgamesection">
    <div class="container">
       <div class="bars">
          <div class="bar bar-over" data-value='0'>
             <img src="https://cdn.cloudflare.steamstatic.com/steam/apps/367520/header.jpg?t=1625363925" alt="">
             <div class="details">
                <h3 class="details-title">Hollow Knight</h3>
                <p>Forge your own path in Hollow Knight! An epic action adventure through a vast ruined kingdom of insects.   </p>
          </div>
       </div>
       
       <div class="bar" data-value='1'>
          <img src="https://rocketleague.media.zestyio.com/rl_keyart_victory_crate_1920.jpg" alt="">
          <div class="details">
             <h3 class="details-title">Rocket League</h3>
             <p>Soccer meets driving once again in the long-awaited, physics-based multiplayer-focused sequel to Supersonic Acrobatic Rocket-Powered Battle-Cars! </p>
          </div>
       </div>
          
       <div class="bar" data-value='2'>
          <img src="https://cdn.cloudflare.steamstatic.com/steam/apps/239030/header.jpg?t=1592317543" alt="">
          <div class="details">
             <h3 class="details-title">Papers Please</h3>
             <p>Papers, Please has the player take the role of a border crossing immigration officer in the fictional dystopian Eastern Bloc-like country of Arstotzka, which has been and continues to be at political... </p>
          </div>
       </div>  

          <div class="bar" data-value='3'>
             <img src="https://cdn.cloudflare.steamstatic.com/steam/apps/367520/header.jpg?t=1625363925" alt="">
             <div class="details">
                <h3 class="details-title">Hollow Knight</h3>
                <p>Forge your own path in Hollow Knight! An epic action adventure through a vast ruined kingdom of insects.   </p>
          </div>
       </div>
          
        <div class="bar" data-value='4'>
          <img src="https://rocketleague.media.zestyio.com/rl_keyart_victory_crate_1920.jpg" alt="">
          <div class="details">
             <h3 class="details-title">Rocket League</h3>
             <p>Soccer meets driving once again in the long-awaited, physics-based multiplayer-focused sequel to Supersonic Acrobatic Rocket-Powered Battle-Cars! </p>
          </div>
       </div>
        
        <div class="bar" data-value='5'>
          <img src="https://cdn.cloudflare.steamstatic.com/steam/apps/239030/header.jpg?t=1592317543" alt="">
          <div class="details">
             <h3 class="details-title">Papers Please</h3>
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
     <h2><strong>All Games<span>( 5 )</span></strong></h2>
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
            <img src="img/catan_3d.png" />
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
                    <td><img src="img/커스텀 보드게임 이미지/build-game-box.jpg">
                    </td>
                    <td><img src="img/커스텀 보드게임 이미지/build-game-mats.jpg"></td>
                    <td><img src="img/커스텀 보드게임 이미지/custom-board-games_board.jpg">
                    </td>
                </tr>
                <tr>
                    <td><img src="img/커스텀 보드게임 이미지/custom-dices.jpg">
                    </td>
                    <td><img src="img/커스텀 보드게임 이미지/game-cards-customization.jpg"></td>
                    <td><img src="img/커스텀 보드게임 이미지/game-pieces.jpg">
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
            <img src="img/폰.png">
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
      title: 'Hollow Knight',
      pub: 'Publisher: Team Cherry',
      des: 'Forge your own path in Hollow Knight! An epic action adventure through a vast ruined kingdom of insects and heroes. Explore twisting caverns, battle tainted creatures and befriend bizarre bugs, all in a classic, hand-drawn 2D style.',
      rating: '평점: ★★★★☆',
      price: '€20',
      tags: ['Difficult', 'Puzzle', '2D']
   },
   {
      title: 'Rocket League',
      pub: 'Publisher: Psyonix',
      des: 'Soccer meets driving once again in the long-awaited, physics-based multiplayer-focused sequel to Supersonic Acrobatic Rocket-Powered Battle-Cars! Choose a variety of high-flying vehicles equipped with huge rocket boosters to score amazing aerial goals and pull-off incredible game-changing saves!',
      rating: '평점: ★★★☆☆',
      price: '€15',
      tags: ['Multiplayer', 'Competitive', 'Football']
   },
   {
      title: 'Papers Please',
      pub: 'Publisher: Lucas Pope',
      des: 'Congratulations. The October labor lottery is complete. Your name was pulled. For immediate placement, report to the Ministry of Admission at Grestin Border Checkpoint. An apartment will be provided for you and your family in East Grestin. Expect a Class-8 dwelling.',
      rating: '평점: ★☆☆☆☆',
      price: '€10',
      tags: ['Indie', 'Pixal', 'Sim']
   },
   {
      title: 'Hollow Knight',
      pub: 'Publisher: Team Cherry',
      des: 'Forge your own path in Hollow Knight! An epic action adventure through a vast ruined kingdom of insects and heroes. Explore twisting caverns, battle tainted creatures and befriend bizarre bugs, all in a classic, hand-drawn 2D style.',
      rating: '평점: ★★★★☆',
      price: '€20',
      tags: ['Difficult', 'Puzzle', '2D']
   },
   {
      title: 'Rocket League',
      pub: 'Publisher: Psyonix',
      des: 'Soccer meets driving once again in the long-awaited, physics-based multiplayer-focused sequel to Supersonic Acrobatic Rocket-Powered Battle-Cars! Choose a variety of high-flying vehicles equipped with huge rocket boosters to score amazing aerial goals and pull-off incredible game-changing saves!',
      rating: '평점: ★★★★☆',
      price: '€15',
      tags: ['Multiplayer', 'Competitive', 'Football']
   },
   {
      title: 'Papers Please',
      pub: 'Publisher: Lucas Pope',
      des: 'Congratulations. The October labor lottery is complete. Your name was pulled. For immediate placement, report to the Ministry of Admission at Grestin Border Checkpoint. An apartment will be provided for you and your family in East Grestin. Expect a Class-8 dwelling.',
      rating: '평점: ★★★★☆',
      price: '€10',
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