<%@ page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html;charset=utf-8" pageEncoding="utf-8" %>
<%@ page import="java.sql.*"%>
<% request.setCharacterEncoding("utf-8"); %>
<jsp:include page="header.jsp"/>
	<%
	String id = (String) session.getAttribute("ID");
	String login = (String)session.getAttribute("LOGIN");
	%>
	<link rel="stylesheet" href="css/freeboard.css" type="text/css">
	<section style="width: 100%; height: 800px; padding-top: 120px;">
        <h2 style="text-align: center;"><span>보드게임 등록</span></h2>

        <form name="boardgame" method="post" action="boardgame_insert.jsp" style="text-align: center;">
                	<center><div class="b_insert" style="border-style:dotted; width:300px;">
                    <div class="b_img">
                        <span>게임 이미지</span>
                        <input type="file" name="p_image" accept="" data-width="150" data-height="150" style="width:200px;">
                    </div>
                    <div class="boardgame_id">
                        <span>보드게임 아이디</span>
                        <input type="text" name="b_id">
                    </div>
                    <div class="boardgame_title">
                        <span>보드게임 타이틀</span>
                        <input type="text" name="b_title" required>
                    </div>
                    
                    <div class="yearof">
                        <span>출시년도</span>
                        <input type="text" name="yearof" required>
                    </div>
                    
                    <div class="price">
                        <span>가격</span>
                        <input type="text" name="price" required>
                    </div>
                    
                    <div class="pnum">
                        <span>인원수</span>
                        <input type="text" name="pnum">
                    </div>
                    
					<div class="running_time">
                        <span>플레이 시간</span>
                        <input type="text" name="running_time">
                    </div>
                    
                    <div class="age">
                        <span>사용연령</span>
                        <input type="text" name="age">
                    </div>
                    
                    <div class="game_level">
                        <span>난이도</span>
                        <input type="text" name="game_level" required>
                    </div>
                    
					<div class="designer">
                        <span>디자이너</span>
                        <input type="text" name="designer" required>
                    </div>
                    
					 <div class="sub_lang">
                        <span>지원언어</span>
                        <input type="text" name="sub_lang">
                    </div>
                    
                    <div class="b_theme">
                        <span>테마</span>
                        <input type="text" name="b_theme" required>
                    </div>
                    
                    <div class="proceed">
                        <span>진행방식</span>
                        <input type="text" name="proceed" required>
                    </div>
                    
                    <div class="b_detail">
                        <span>보드게임 설명</span>
                        <pre><textarea name="post_content" id="" style="width:250px; height: 200px;" required></textarea></pre>
                    </div>
                    
					<div class="publisher">
                        <span>출판사</span>
                        <input type="text" name="publisher" required>
                    </div>

                    <input type="submit" class="btn" value="등록">
        </form>
        </div></center>
    </section>
    
    <jsp:include page="footer.jsp"/>