// header.js

// header sub_menu jQuery
$(function () {

    // 초기 세팅
    $(".util .search input").hide();

    $(".gnb li").mouseenter(function () {

        $(".sub_wrap ul").addClass("none");
        $(".gnb li").css("backgroundColor", "#fff");
        $(".gnb li").children().css("color", "#555");

        var menu = $(this).attr("id");

        //        console.log(menu);

        $(this).css("backgroundColor", "#2c2a29");
        $(this).children().css("color", "#fff");

        $("." + menu).removeClass("none");

        if (menu != "home") {
            $(".sub_menu").stop().slideDown(200);
        } else {
            $(".sub_menu").stop().slideUp(200);
        }

    }); // mouse enter event

    $("header").mouseleave(function () {
        //        console.log(menu);
        $(".gnb li").css("backgroundColor", "#fff");
        $(".gnb li").children().css("color", "#555");
        $(".sub_menu").stop().slideUp(200);

    }); // mouse enter event
    
    
    // search_btn implement
    $(".util li.search a").click(function(){
        $(".util .search input").show(200);
        
    });


}); // $function
