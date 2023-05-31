// header.js

// header sub_menu jQuery
$(function () {

    // 초기 세팅
    $(".util .search input").hide();

    $(".gnb li").mouseenter(function () {

        $(".sub_wrap ul").addClass("none");

        var menu = $(this).attr("id");

        //        console.log(menu);

        $(this).css("backgroundColor", "");
        $(this).children().css("color", "");

        $("." + menu).removeClass("none");

        if (menu != "home") {
            $(".sub_menu").stop().slideDown(200);
        } else {
            $(".sub_menu").stop().slideUp(200);
        }

    }); // mouse enter event

    $("header").mouseleave(function () {
        $(".sub_menu").stop().slideUp(200);

    }); // mouse enter event
    
    
    // search_btn implement
    $(".util li.search a").click(function(){
        $(".util .search input").show(200);
        
    });


}); // $function
