

$(document).ready(function () {

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
    
    
   }); // code block
 