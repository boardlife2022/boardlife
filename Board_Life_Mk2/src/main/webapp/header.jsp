<%@ page language="java" contentType="text/html;charset=utf-8" pageEncoding="utf-8"%>
<% request.setCharacterEncoding("utf-8"); %>

<!DOCTYPE html>
<html lang="ko">

<head>
    <meta charset="UTF-8">
    <title>Board Life</title>
    
    <!--favicon-->
    <!--pc용/ico-->
    <link rel="shortcut icon" href="img/favicon.ico">

    <!--안드로이드/png-->
    <link rel="shortcut icon" href="img/favicon-16x16.png">

    <!--아이폰/png, jpg-->
    <link rel="apple-touch-icon" href="img/favicon-16x16.png">

    <!-- CSS -->
    <link rel="stylesheet" href="css/header.css?ver=4" type="text/css">
    <link rel="stylesheet" href="css/reset.css" type="text/css">
    
    <!-- javascript and jQuery ajax -->
    <!--  <script src="https://ajax.googleapis.com/ajax/libs/jquery/2.2.4/jquery.min.js"></script>  -->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
    <script src="js/header.js"></script>

    <!--구글웹폰트-->
    <link href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR:wght@300;400&display=swap" rel="stylesheet">


</head>
 
 <% 
 
 String login = (String)session.getAttribute("LOGIN"); 
 boolean member = false;
 String id = "";
 String name = "";

 if(login != null){
	 id = (String) session.getAttribute("ID");
	 name = (String) session.getAttribute("NAME");
	 member = true;
 %>
        <!-- 로그인 성공 시, JavaScript 코드를 이용하여 sessionStorage에 사용자 정보를 저장 -->
        <script type="text/javascript">
        	sessionStorage.setItem('LOGIN', "login");
            sessionStorage.setItem('ID', '<%= id%>');
            sessionStorage.setItem('NAME', '<%= name%>');
            console.log("active?!");
        </script>
 <% } else { %>
 		<script type="text/javascript">
 		sessionStorage.clear();
 		// sessionStorage에 있는 모든 정보(로그인 정보)들을 지움
 		</script>
 <%} //else문 %>

<body>

   <header>

        <div class="inner-header clearfix">

            <h1><a href="index.jsp"><img src="img/board_life_logo.png" alt="BoardLife"></a></h1>

            <nav>
                <div class="util_wrap">
                    <ul class="util clearfix">
                    
                    <% if(member){  %>
                    	<li><%= name %>님 환영합니다!</li>
                        <li><a href="logout.jsp">log out</a></li>  
                    <% }else{ %>
                    	<li><a href="login_page.jsp">login</a></li>  
                        <li><a href="boardlife_join.jsp">Sign In</a></li> 
                    <%} %>
                        <li><a href="#">My page</a></li>
                        <li class="search clearfix">
                            <input type="text" placeholder="보드게임검색">
                            <a href="#"><img src="img/magnifying-glass-search.png" alt="search"></a>
                        </li>
                    </ul>
                </div>

                <div class="gnb_wrap">
                    <ul class="gnb clearfix">
                        <li class="home_btn" id="home"><a href="index.jsp">HOME</a></li>
                        <li id="bd_info"><a href="boardgameinfo_main.jsp">Board Game Info</a></li>
                        <li id="bd_club"><a href="boardgameclub_main.jsp">Board Game Club</a></li>
                        <li id="bd_shop"><a href="Product_list.jsp">Board Game Shop</a></li>
                        <li id="bd_comm"><a href="community_list.jsp">Community</a></li>
                    </ul>
                </div>

            </nav>

        </div>

        <div class="sub_menu">

            <div class="inner_sub_menu">

                <div class="sub_wrap clearfix">
                    <ul class="bd_info none">
                        <li class="menu_title">보드게임 정보</li>
                        <li><a href="best50.in">베스트 50</a></li>
                        <li><a href="boardgameinfo_theme.jsp">게임 테마</a></li>
                        <li><a href="boardgameinfo_custom.in">커스텀</a></li>
                    </ul>

                    <ul class="bd_club none">
                        <li class="menu_title">보드게임 클럽</li>
                        <li><a href="Club_boardList.cl">전체 클럽</a></li>
                        <li><a href="#">보드게임 카페</a></li>
                    </ul>

                    <ul class="bd_shop none">
                        <li class="menu_title">보드게임 쇼핑</li>
                        <li><a href="#">신규/베스트/추천 상품</a></li>
                        <li><a href="#">중고마켓</a></li>
                        <li><a href="#">중고거래 후기</a></li>
                    </ul>

                    <ul class="bd_comm none">
                        <li class="menu_title">커뮤니티</li>
                        <li><a href="community_list.jsp">자유게시판</a></li>
                        <li><a href="notice.jsp">공지사항</a></li>
                        <li><a href="#">Q&amp;A</a></li>
                    </ul>
                </div>
            </div>

        </div>

    </header>

</html>
