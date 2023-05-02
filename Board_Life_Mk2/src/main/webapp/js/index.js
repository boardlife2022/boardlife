// index.js

$(document).ready(function () {

    // main animation
    // 초기 상태
    $(".main-pkg").hide();
    $(".main-title").hide();
    $(".main-des").hide();
    $(".main-btn").hide();

    // slider 
    $(".events").hide();

    // fadeIn animation
    $(".main-pkg").fadeIn(2000);
    $(".main-title").fadeIn(2800);
    $(".main-des").fadeIn(3600);
    $(".main-btn").fadeIn(4400);

    // 토글슬라이더 스위치
    var toggle_switch = false;

    // 광클방지
    var Gclick = false;
    var ClubClick = false;


    // 텍스트(베스트게임 순위 txt) 슬라이더

    var txt = 0;

    function downmove() {

        txt++;

        if (txt === 10) {
            $(".best-wrap").css({
                top: 0
            });
            txt = 0;
        }

        $(".best-wrap").animate({
            top: 60 * -txt
        }, 800);

    } // downmove

    var txt_slider = setInterval(function () {
        downmove();
    }, 3000);


    // event section animation(slide-down)
    $(".event-btn").click(function () {

        //        console.log(Gclick);

        // 광클일경우 실행안되게함
        if (Gclick) return false;
        Gclick = true;

        $(".events").slideToggle(1000);
        if (toggle_switch) {
            $(".event-btn img").attr('src', 'img/btn_prom_down.png');
            toggle_switch = false;
        } else {
            $(".event-btn img").attr('src', 'img/btn_prom_up.png');
            toggle_switch = true;
        }

        // 광클 금지
        setTimeout(function () {
            //            console.log("광클금지");
            Gclick = false;
            //            console.log(Gclick);
        }, 1000);

    });


    // event auto slide animation
    var e_page = 0;

    function event_slide() {

        e_page++;

        if (e_page == 3) {
            e_page = 0;
        }

        var $event_wrap = $('.event-wrap');
        var $firstEvent = $('.event-wrap > .event').first();
        var eventWidth = $firstEvent.outerWidth(true);
        var $seconEvent = $(".event-wrap > .event").eq(2);


        //        console.log(eventWidth);

        $event_wrap.animate({
            left: -eventWidth
        }, function () {
            $(".event-wrap > .event").removeClass('on');

            $firstEvent.appendTo(".event-wrap");
            $event_wrap.css('left', 0);

            $seconEvent.addClass('on');

        });

        $(".event-btn-grp")
        //        console.log(e_page);

    } // event_slide

    var auto_event_flow = setInterval(event_slide, 5000);


    // boardgame Info - bestGame

    var mainImg = $(".main-best img");
    var mainCap = $(".best-captions");

    var mainSrc;
    var mainTitle;
    var mainDesc;

    $(".best-boardgame").click(function () {

        $(".best-boardgame").removeClass("on");
        $(this).addClass("on");

        mainSrc = $(this).attr("id");
        mainTitle = $(this).children("div").children("div").children("p:first-child").text();
        mainDesc = $(this).children("div").children("div").children("p:nth-child(2)").text();
        
        mainImg.attr("src", "img/" + mainSrc + ".png");
        mainCap.children("p:first-child").text(mainTitle);
        mainCap.children("p:nth-child(2)").text(mainDesc);



    }); // best-boardgame click function


    // boardgame custom

    var card_front = $(".card-front");
    var card_back = $(".card-back");

    var bgImg;
    var imgSrc;

    $(".front-custom .option").click(function () {
        console.log("click");

        $(".front-custom .option").removeClass("active");
        bgImg = $(this).attr("class");
        $(this).addClass("active");
        imgSrc = bgImg.substring(7);
        //        console.log(bgImg);
        //        console.log(bgSrc);
        card_front.attr("src", "img/" + imgSrc + ".jpg");

        // Rotate the front of the card
        card_front.css({
            transform: "rotateY(0deg)",
            backfaceVisibility: "hidden"
        }, 300);

        card_back.css({
            transform: "rotateY(-180deg)",
            backfaceVisibility: "hidden"
        }, 300);

    }); // option.click function

    $(".back-custom .option").click(function () {
        //        console.log("click");

        $(".back-custom .option").removeClass("active");
        bgImg = $(this).attr("class");
        $(this).addClass("active");
        imgSrc = bgImg.substring(7);
        //        console.log(bgImg);
        //        console.log(bgSrc);
        card_back.attr("src", "img/" + imgSrc + ".png");

        // Rotate the front of the card
        card_front.css({
            transform: "rotateY(-180deg)",
            backfaceVisibility: "hidden"
        }, 300);

        card_back.css({
            transform: "rotateY(0deg)",
            backfaceVisibility: "hidden"
        }, 300);

    }); // option.click function
    
    // boardgame club section
    
    var $club_wrap = $(".club-wrap");
    var $firstClub;
    var $lastClub;
    var clubWidth;
    var $secondClub;
    
    $(".left").click(function(){
		// click 광클금지
		if (ClubClick) return false;
        ClubClick = true;
		
		$lastClub = $(".club-wrap > .club").last();
		clubWidth = $lastClub.outerWidth(true);
    	$secondClub = $(".club-wrap > .club").first();
		 	
		 $($club_wrap).animate({
			 left: clubWidth -330
			 
		 }, function(){
			 $(".club-wrap > .club").removeClass('on');
			 
			 $lastClub.prependTo(".club-wrap");
			 $club_wrap.css('left', -330);
			 
			 $secondClub.addClass('on');
			 
		 });
		 //console.log(clubWidth);

		// 광클 금지
        setTimeout(function () {
            //            console.log("광클금지");
            ClubClick = false;
            //            console.log(Gclick);
        }, 500);
		
	}); // left click function

	 $(".right").click(function(){	
		 //광클금지
		if (ClubClick) return false;
        ClubClick = true;
		 
		$firstClub = $(".club-wrap > .club").first();
		clubWidth = $firstClub.outerWidth(true);
    	$secondClub = $(".club-wrap > .club").eq(2);
		 	
		 $($club_wrap).animate({
			 left: -clubWidth - 330
			 
		 }, function(){
			 
			 $(".club-wrap > .club").removeClass('on');
			 
			 $firstClub.appendTo(".club-wrap");
			 $club_wrap.css('left', -330);
			 
			 $secondClub.addClass('on');
			 
		// 광클 금지
        setTimeout(function () {
            //            console.log("광클금지");
            ClubClick = false;
            //            console.log(Gclick);
        }, 500);
			 
			 
		 });
		 //console.log(clubWidth);
		
	}); // left click function
	
	
	// shopping
     //드래그할 대상 : #move
     console.log("active")
     
    $('#move').draggable({
          axis: 'x' // x축을 고정     
        }); // draggable


     $('#move').css({
         transition: 'all .6s ease-out'
     }); //css
     
     // 이동위치 한계 설정
     
     $(".shopping").on('mouseup mouseover', function(){
		 
		 // 1. 움직이는 박스(#move)의 현재 left 값 알아오기
		 var mpos = $("#move").offset().left;
		 
		 // 2. 화면 절반크기 계산 (첫번째 한계점)
		 var fpoint = 0;
		 
		 // 3. 마지막 이미지의 한계점
		 var lpoint = 1890;
		 
		 // 4. 처음과 마지막 위치 값 강제 설정하기
		 if(mpos > fpoint){
			 $("#move").css({
				 left: fpoint + 'px'
			 });
		 } else if (mpos < -lpoint) {
			 // 마지막 한계점보다 더 왼쪽으로 이동 했을 때
			 $("#move").css({
				 left: -lpoint + 'px'
			 });
		 }
		 
	 }); // on
     
      

}); // function
