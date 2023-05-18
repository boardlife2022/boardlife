$(document).ready(function () {
    
    // boardGame info function
    var $bgImg = $('.club_img img');
    var $clubBG = $('.club_img');
    var $clubTitle = $('.boardgame_detail .title');
    var $clubDesc = $('.boardgame_detail .description');

    var BoardgameTitle;
    var BoardgameSrc;
    var BoardgameDesc;
    var $ClubBgImg;

    var imgIndex;
    var newBackgroundImage;

    var overClick = false;
    
    // boardGame Club Review Modal 
    
    // 광클 금지
    
    // click tab function
    var clickValue; //클릭한 탭의 값을 담아두는 역할
    
	// 보드게임클럽 게임 클릭시 메인게임 화면이 전환되는 효과
    $(".boardgame_wrap img").click(function () {
        //        console.log($(this).attr('alt'));
        //        console.log($(this).attr('src'));
        //        console.log($(this).data('value'));

        if (overClick) {
            return false;
        }
        overClick = true;
        //광클 금지

        BoardgameSrc = $(this).attr('src');
        BoardgameTitle = $(this).attr('alt');
        BoardgameDesc = $(this).data('value');
        // 클릭한 요소의 이미지 파일 경로 & 보드게임 이름 & 설명을 받아옴.

        /*
        console.log(BoardgameSrc);
        console.log(BoardgameTitle);
        console.log(BoardgameDesc);
        */

        $(".boardgame_wrap img").removeClass("choice");
        $(this).addClass("choice");

        //$clubBG.css('background-image', ("../" + BoardgameSrc));
        // 클럽 게임의 Background-img 변경

        //L console.log($clubBG.css('background-image'));

        $ClubBgImg = $clubBG.css('background-image');

        //console.log("ClubBgImg : " + $ClubBgImg);

        // img/ 이후의 값을 변경하기 위해 문자열에서 img/ 위치를 찾습니다.
        imgIndex = $ClubBgImg.indexOf('img/');

        //console.log("imgIndex : " + imgIndex);

        // 새로운 이미지 파일 이름을 지정하고, 기존 문자열에 삽입합니다.
        if (imgIndex !== -1) {
            newBackgroundImage = $ClubBgImg.slice(0, imgIndex) + BoardgameSrc;

            //$ClubBgImg.slice(imgIndex + 4 + 'old-image.jpg'.length);
            //console.log(newBackgroundImage);

            $clubBG.css('background-image', newBackgroundImage);
        }

        $clubTitle.html(BoardgameTitle);
        $clubDesc.html(BoardgameDesc);

        //$bgImg.attr('src', BoardgameSrc);
        //$clubBG.attr('background-image')

        // 이미지 fade out
        $bgImg.fadeOut(10, function () {
            // fade out 완료 후 실행되는 콜백 함수

            // 이미지의 src 변경 및 클래스 업데이트
            //$(".boardgame_wrap img").removeClass("choice");
            //$(this).addClass("choice");
            $bgImg.attr('src', BoardgameSrc);

            $bgImg.fadeIn(1000, function () {
                // fade in 완료 후 실행되는 콜백 함수
                overClick = false;
            });

        }); // fade animation
        //광클금지 스위치 해제

    }); // click Event
    
    
    $(".view_tab_menu li").click(function(){
        
        
        $(".view_tab_menu li").removeClass("active");
        $(this).addClass("active");
        
        clickValue = this.id + "Detail";
        
        console.log(clickValue);
        
        $("#tab_wrap .tab").removeClass("active");
        
        $("#" + clickValue).addClass("active");
        
    }); // tab click function
    
    
    // 리뷰하기 클릭할경우 모달창 띄우기
    $("#rBtn").click(function(){
		
		$("#modal.modal-overlay").css("display", "flex");
		document.body.style.overflow = 'hidden';
		
	}); // click rBtn
	
	// 취소 버튼 클릭할 경우 모달창 끄기
	$("#cancle").click(function(){
		
		$("#modal.modal-overlay").css("display", "none");
		document.body.style.overflow = 'auto';
		
	}); // click cancle

}); // $(document).ready(function(){}); 
