// boardgame club list .js

$(document).ready(function () {
    
    var ClubClick = false;

    var $sclub_wrap = $(".sclub_wrap");
    var $firstClub;
    var $lastClub;
    var clubWidth;
    var $centerClub;
    
    $(".left").click(function(){
		// click 광클금지
		if (ClubClick) return false;
        ClubClick = true;
		
		$lastClub = $(".sclub_wrap > .sclub").last();
		clubWidth = $lastClub.outerWidth(true);
    	$centerClub = $(".sclub_wrap > .sclub").eq(1);
		 	
		 $($sclub_wrap).animate({
			 left: clubWidth -960
			 
		 }, function(){
			 $(".sclub_wrap > .sclub").removeClass('active');
			 
			 $lastClub.prependTo(".sclub_wrap");
			 $sclub_wrap.css('left', -960);
			 
			 $centerClub.addClass('active');
			 
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
		 
		$firstClub = $(".sclub_wrap > .sclub").first();
		clubWidth = $firstClub.outerWidth(true);
    	$centerClub = $(".sclub_wrap > .sclub").eq(3);
		 	
		 $($sclub_wrap).animate({
			 left: -clubWidth - 960
			 
		 }, function(){
			 
			 $(".sclub_wrap > .sclub").removeClass('active');
			 
			 $firstClub.appendTo(".sclub_wrap");
			 $sclub_wrap.css('left', -960);
			 
			 $centerClub.addClass('active');
			 
		// 광클 금지
        setTimeout(function () {
            //            console.log("광클금지");
            ClubClick = false;
            //            console.log(Gclick);
        }, 500);
			 
			 
		 });
		 //console.log(clubWidth);
		
	}); // left click function
    
    
}); // $(document).ready(function)