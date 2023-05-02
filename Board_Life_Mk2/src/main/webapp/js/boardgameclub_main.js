// BoardLife_club_main.js

const gap = 300;

//개설된 보드게임 클럽수, 진행중인 클럽, 누적참여자수
var total_clubs = 1024;
var proc_clubs = 872;
var peoples = 1927;

// Scroll Animation
$(window).scroll(function () {

    var winTop = $(window).scrollTop();

    //    console.log("window scroll값 : " + winTop);

    // 숫자 세는 애니메이션 함수
    function countAnimation_total() {
        $({
            countNum: $('#total_clubs').text()
        }).animate({
            countNum: total_clubs
        }, {
            duration: 1000,
            easing: 'linear',
            step: function () {
                $('#total_clubs').text(Math.floor(this.countNum));
            },
            complete: function () {
                $('#total_clubs').text(this.countNum);
            }
        });
    }

    function countAnimation_proc_clubs() {

        $({
            countNum: $('#proc_clubs').text()
        }).animate({
            countNum: proc_clubs
        }, {
            duration: 1000,
            easing: 'linear',
            step: function () {
                $('#proc_clubs').text(Math.floor(this.countNum));
            },
            complete: function () {
                $('#proc_clubs').text(this.countNum);
            }
        });
    }

    function countAnimation_peoples() {
        $({
            countNum: $('#peoples').text()
        }).animate({
            countNum: peoples
        }, {
            duration: 1000,
            easing: 'linear',
            step: function () {
                $('#peoples').text(Math.floor(this.countNum));
            },
            complete: function () {
                $('#peoples').text(this.countNum);
            }
        });
    }



    // .about
    var about_offset = $(".about").offset().top - gap;
    var peoples_offset = $(".peoples_title").offset().top - gap;

    //    console.log("about_offset : " + about_offset);

    if (winTop > about_offset) {
        //        .a_left_wrap / .a_img

        $(".inner_about").css({
            opacity: "1",
            transition: "all 1s"
        });

    } // if_about

    if (winTop > peoples_offset) {

        countAnimation_peoples();
        countAnimation_proc_clubs();
        countAnimation_total();
    } // peoples_statistics


    // .reasons .rb1 .rb2 .rb3
    // .reasons_offset
    var reasons_offset = $(".reasons").offset().top - gap;

    //    console.log("reasons_offset : " + reasons_offset);


    if (winTop > reasons_offset) {

        $(".r_wrap .r_box:nth-child(2)").css({
            opacity: "1",
            transition: "all .6s"
        });

        $(".r_wrap .r_box:nth-child(3)").css({
            opacity: "1",
            transition: "all 1.2s"
        });

        $(".r_wrap .r_box:nth-child(4)").css({
            opacity: "1",
            transition: "all 1.8s"
        });


    } // if_reasons

    var g1_offset = $(".guide_wrap div:nth-child(2)").offset().top - gap;
    var g2_offset = $(".guide_wrap div:nth-child(3)").offset().top - gap;
    var g3_offset = $(".guide_wrap div:nth-child(4)").offset().top - gap;
    var g4_offset = $(".guide_wrap div:nth-child(5)").offset().top - gap;

    //    console.log("g1_offset : " + g1_offset);
    //    console.log("g2_offset : " + g2_offset);
    //    console.log("g3_offset : " + g3_offset);
    //    console.log("g4_offset : " + g4_offset);

    if (winTop > g1_offset) {

        $(".guide_wrap div:nth-child(2)").css({
            opacity: "1",
            transition: "all .5s"
        });

    } //g1

    if (winTop > g2_offset) {

        $(".guide_wrap div:nth-child(3)").css({
            opacity: "1",
            transition: "all 1s"
        });

    } //g2

    if (winTop > g3_offset) {

        $(".guide_wrap div:nth-child(4)").css({
            opacity: "1",
            transition: "all 1s"
        });

    } //g3

    if (winTop > g4_offset) {

        $(".guide_wrap div:nth-child(5)").css({
            opacity: "1",
            transition: "all 1s"
        });

    } //g4



}); // scroll animation


$(function () {

    function changePage() {

        var $clubWrap = $('.inner_clubs > .club_wrap');
        var $firstClub = $('.club_wrap > .club').first();
        var clubWidth = $firstClub.outerWidth(true);

        $clubWrap.animate({
            left: -clubWidth
        }, function () {
            $firstClub.appendTo('.club_wrap');
            $clubWrap.css('left', 0);
        });
    }

    var auto_flow = setInterval(changePage, 3000);

    $(".club").mouseover(function () {
        clearInterval(auto_flow);
    }).mouseout(function () {
        auto_flow = setInterval(changePage, 3000);
    }); //mouse over & out




}); // function
