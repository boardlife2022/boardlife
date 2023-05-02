<%@ page language="java" contentType="text/html;charset=utf-8" pageEncoding="utf-8" %>
<%@page import="java.sql.*"%>
<%@page import="java.util.ArrayList"%>
<%@ page import="board.*" %>
<%@ page import="vo.*" %>
<%
request.setCharacterEncoding("utf-8");
%>
<link rel="stylesheet" type="text/css" href="css/board.css">
<link rel="stylesheet" type="text/css" href="css/freeboard.css">
<jsp:include page="header.jsp"/>
   <%
   int postid = Integer.parseInt(request.getParameter("post_id"));
      	String id = (String) session.getAttribute("ID");
   %>
   <jsp:useBean id="userd" class="board.Freeboard_cont">
   <%
        Community com = new Community();
    	ArrayList<Community> stt1 = new ArrayList<Community>();
   		stt1 = userd.selectone(postid);
   %>
   <%
  		Boardgames bg = new Boardgames();
  		ArrayList<Boardgames> bga = new ArrayList<Boardgames>();
  		bga = userd.bgselect();
	%>
	<section>

        <h2>자유게시판 <span>FREEBOARD 수정</span></h2>
        <form name="inputfrm" method="post" action="community_update2.jsp">
		<input type="text" name="post_id" value="<%= postid %>" style="display: none;">
            <div class="inputBox">
                <div class="input">
                
                	<div class="category">
                        <span>카테고리</span>
						<select name="post_category" >
						<option disabled selected>카테고리선택</option>
  						<option value="free">자유</option>
  						<option value="archive" >자료실</option>
  						<option value="tip">노하우,팁</option>
  						<option value="survey">설문</option>
  						<option value="review">후기</option>
						</select>
                    </div>
                   
                    <div class="title">
                        <span>제목</span>
                        <input type="text" name="post_title" value="<%out.println(stt1.get(0).getPost_title());%>" required>
                    </div>
                    
                    <div class="writer">
                        <span>작성자</span>
                        <input type="text" name="user_id" value="<%out.print(stt1.get(0).getUser_id());%>" readonly>
                    </div>

                    <div class="content">
                        <span>내용</span>
                        <pre><textarea name="post_content" id="" ><% out.println(stt1.get(0).getPost_content());%></textarea></pre>
                    </div>
                    <div class="category">
                    	<span>보드게임선택</span>
                    	<select name="post_bgcategory">
                    	<option disabled selected value=0>보드게임 선택</option>
                    	<option value="boardgame"></option>
                    	<% for(int i=0;i<bga.size();i++){%>
                    	<option value="<%= bga.get(i).getB_id()%>"><%= bga.get(i).getB_title()%></option>
                    	<%} %>
                    	</select>
                    </div>
                </div>


                <!--Back to list-->
                <div class="btngrp">
                    <input type="button" class="btn" onclick="location.href='community_list.jsp'; return false;" value="목록">
                    <input type="submit" class="btn" value="수정">
                </div>

            </div>
        </form>
    </section>
    </jsp:useBean>
    <jsp:include page="footer.jsp"/>