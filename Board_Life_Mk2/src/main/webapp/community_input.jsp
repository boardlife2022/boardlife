<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html;charset=utf-8" pageEncoding="utf-8" %>
<%@ page import="board.*" %>
<%@ page import="vo.Community" %>
<%@ page import="vo.*" %>
<%@page import="java.sql.*"%>
<% request.setCharacterEncoding("utf-8"); %>
<link rel="stylesheet" type="text/css" href="css/board.css">
<link rel="stylesheet" type="text/css" href="css/freeboard.css">
<jsp:include page="header.jsp"/>
	<%
	String id = (String) session.getAttribute("ID");
	String login = (String)session.getAttribute("LOGIN");
	%>
	<jsp:useBean id="userd" class="board.Freeboard_cont">
	<%
  			Boardgames2 bg = new Boardgames2();
  			ArrayList<Boardgames2> bga = new ArrayList<Boardgames2>();
  			bga = userd.bgselect2();
	%>
	<section>
        <h2>자유게시판 <span>FREEBOARD</span></h2>

        <form name="inputfrm" method="post" action="community_insert.jsp">
            <div class="inputBox">
                <div class="input">
                	<div class="category">
                        <span>카테고리</span>
						<select name="post_category" required>
						<option disabled selected >카테고리선택</option>
  						<option value="free">자유</option>
  						<option value="archive" >자료실</option>
  						<option value="tip">노하우,팁</option>
  						<option value="survey">설문</option>
  						<option value="review">후기</option>
						</select>
                    </div>
                    
                    <div class="title">
                        <span>제목</span>
                        <input type="text" name="post_title" required>
                    </div>
                    
                    <div class="writer">
                        <span>작성자</span>
                        <input type="text" name="user_id" value="<%= id%>" readonly>
                    </div>

                    <div class="content">
                        <span>내용</span>
                        <pre><textarea name="post_content" required></textarea></pre>
                    </div>
                    <div>
                    	<span>보드게임선택</span>
                    	<select name="post_bgcategory" required>
                    	<option value="1">보드게임 선택</option>
                    	<% for(int i=0;i<bga.size();i++){%>
                    	<%= bga.get(i).getB_title_kor() %>
                    	<option value="<%= bga.get(i).getB_id()%>"><%= bga.get(i).getB_title_kor()%></option>
                    	<%} %>
						</select>
                    </div>
                    
                    
                </div>
				</jsp:useBean>
                <!--Back to list-->
                <div class="btngrp"><b>
                    <input type="button" class=btn value="목록" onclick="location.href='community_list.jsp'; return false;">
                    <input type="submit" class="btn" value="등록">
                </b></div>

            </div>
        </form>
    </section>
    
    <jsp:include page="footer.jsp"/>