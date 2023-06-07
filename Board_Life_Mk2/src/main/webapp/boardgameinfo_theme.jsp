<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<% request.setCharacterEncoding("utf-8"); %>
<html>
<jsp:include page="header_gameinfo2.jsp"/>
<link rel="stylesheet" type="text/css" href="css/boardgameinfo_theme.css">
<head>
	
</head>
<body>
        <section style="width: 100%; padding-top: 10px; background-color: #333">
		<div style="margin: 0 auto;">
		</div>
		<link href="https://fonts.googleapis.com/css?family=Montserrat:400,700" rel="stylesheet">
		
<center>
<section class="info_theme">
<%for(int i=0;i<10;i++){ %>
<div class="card-grid">
    <a class="card" href="boardgameinfo_theme_detail.jsp&page=1">
      <div class="card__background" style="background-image: url('img/Fantasy_World.png')"></div>
      <div class="card__content">
        <p class="card__category">Category</p>
        <h3 class="card__heading">판타지</h3>
      </div>
    </a>
    
    <a class="card" href="boardgameinfo_theme_detail.jsp">
      <div class="card__background" style="background-image: url(img/Action.jpg)"></div>
      <div class="card__content">
        <p class="card__category">Category</p>
        <h3 class="card__heading">액션&재주</h3>
      </div>
    </a>
    <a class="card" href="boardgameinfo_theme_detail.jsp">
      <div class="card__background" style="background-image: url(img/Horror_main.jpg)"></div>
      <div class="card__content">
        <p class="card__category">Category</p>
        <h3 class="card__heading">공포</h3>
      </div>
    <a class="card" href="boardgameinfo_theme_detail.jsp">
      <div class="card__background" style="background-image: url(img/dice_main.jpg)"></div>
      <div class="card__content">
        <p class="card__category">Category</p>
        <h3 class="card__heading">주사위</h3>
      </div>
    </a>
    <a class="card" href="boardgameinfo_theme_detail.jsp&page=1">
      <div class="card__background" style="background-image: url(img/Negotiation_main.png)"></div>
      <div class="card__content">
        <p class="card__category">Category</p>
        <h3 class="card__heading">협상</h3>
      </div>
    </a>
    
    <a class="card" href="boardgameinfo_theme_detail.jsp">
      <div class="card__background" style="background-image: url(img/reasoning.jpg)"></div>
      <div class="card__content">
        <p class="card__category">Category</p>
        <h3 class="card__heading">추론</h3>
      </div>
    </a>
    <a class="card" href="boardgameinfo_theme_detail.jsp">
      <div class="card__background" style="background-image: url(img/Science_Fiction.jpg)"></div>
      <div class="card__content">
        <p class="card__category">Category</p>
        <h3 class="card__heading">공상과학</h3>
      </div>
    <a class="card" href="boardgameinfo_theme_detail.jsp">
      <div class="card__background" style="background-image: url(img/Economic.jpg)"></div>
      <div class="card__content">
        <p class="card__category">Category</p>
        <h3 class="card__heading">경제</h3>
      </div>
    </a>
</div><br/>

<%} %>
</section>
</center>
</section>
</body>
<jsp:include page="footer.jsp"/>

</html>