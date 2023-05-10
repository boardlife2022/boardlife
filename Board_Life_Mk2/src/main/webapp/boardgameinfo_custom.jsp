<%@ page language="java" contentType="text/html;charset=utf-8" pageEncoding="utf-8" %>
<%request.setCharacterEncoding("utf-8");%>
<jsp:include page="header_gameinfo2.jsp"/>
<link rel="stylesheet" type="text/css" href="css/boardgameinfo_custom.css">
<script src="js/custom.js"></script>

        <section style="width: 100%; height: 800px;">
        
        <section class="custom">

        <div class="inner-custom">

            <img src="img/bk01.png" alt="card_back" class="card-ex1">
            <img src="img/card_ex.jpg" alt="card_ex" class="card-ex2">

            <div class="card">
                <img src="img/fr01.jpg" alt="front" class="card-front">
                <img src="img/bk01.png" alt="back" class="card-back">
            </div>


            <div class="custom-wrap">
                <div class="c-title">
                    <p>BoardLife Boardgame Custom</p>
                    <span>나만의 보드게임을 직접 만들어보세요!</span>
                </div>

                <div class="custom-option">

                    <p>앞면</p>

                    <div class="front-custom clearfix">

                        <div class="option fr01 active"></div>
                        <div class="option fr02"></div>
                        <div class="option fr03"></div>
                        <div class="option fr04"></div>
                        <div class="option fr05"></div>

                    </div>

                    <p>뒷면</p>

                    <div class="back-custom clearfix">
                        <div class="option bk01 active"></div>
                        <div class="option bk02"></div>
                        <div class="option bk03"></div>
                        <div class="option bk04"></div>
                        <div class="option bk05"></div>
                    </div>


                    <a href="#">Start Creating</a>


                </div>

            </div>

        </div>

    </section>
        </section>
<jsp:include page="footer.jsp"/>