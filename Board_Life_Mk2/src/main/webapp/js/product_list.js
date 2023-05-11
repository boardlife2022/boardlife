// prodeuct_list

$(document).ready(function () { 
	
	 // event auto slide animation
    var b_page = 0;

    function banner_slide() {

        b_page++;

        if (b_page == 4) {
            b_page = 0;
        }

        var $banner_wrap = $('.banner_wrap');
        var $firstEvent = $('.banner_wrap > .banner').first();
        var eventWidth = $firstEvent.outerWidth(true);
        var $seconEvent = $(".banner_wrap > .banner").eq(2);


        //        console.log(eventWidth);

        $banner_wrap.animate({
            left: -eventWidth
        }, function () {

            $firstEvent.appendTo(".banner_wrap");
            $banner_wrap.css('left', 0);

        });

 //       $(".event-btn-grp")
        //        console.log(e_page);

    } // event_slide

    var auto_event_flow = setInterval(banner_slide, 5000);
	
}); // code block