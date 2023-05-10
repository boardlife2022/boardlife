<%@ page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html;charset=utf-8" pageEncoding="utf-8" %>
<%@ page import="board.*" %>
<%@ page import="vo.Community" %>
<%@ page import="vo.*" %>
<%@page import="java.sql.*"%>
<%
request.setCharacterEncoding("utf-8");
%>
<link rel="stylesheet" type="text/css" href="css/board.css">
<link rel="stylesheet" type="text/css" href="css/freeboard.css">
<script src="js/community.js"></script>

<jsp:include page="header.jsp"/>
<%
String login = (String)session.getAttribute("LOGIN"); 
 boolean member = false;
 String id = "";
 String name = "";

 if(login != null){
	 id = (String) session.getAttribute("ID");
	 name = (String) session.getAttribute("NAME");
	 member = true;
 }
%>

	<section style="padding-top: 120px">
        <h2>자유게시판 <span>FREEBOARD</span></h2>
		<jsp:useBean id="userd" class="board.Freeboard_cont">
        <!--검색/form태그 추가--->
        <form name="searchfrm">
            <div class="searchBox">
                <div class="keyword"><input type="text" name="search" placeholder="검색어를 입력해 주세요."></div>
                <button>검색</button>
            </div>
        </form>

        <div class="noticeBox">
            <table>
                <colgroup>
                    <col width="5%">
                    <col width="20%">
                    <col width="40%">
                    <col width="10%">
                    <col width="5%">
                    <col width="5%">
                    <col width="10%">
                </colgroup>

                <thead>
                    <tr>
                        <th>번호</th>
                        <th>카테고리</th>
                        <th>제목</th>
                        <th>작성자</th>
                        <th>조회수</th>
                        <th></th>
                        <th></th>
                    </tr>
                <tbody>
                    <tr>
                    
                    
   					<%
    					Community std = new Community();
   						Boardgames2 bg = new Boardgames2();
    					ArrayList<Community> stt = new ArrayList<Community>();
   						stt = userd.selec();
   						
						for(int i=stt.size()-1;i >= 0;i--){
					%>
						
   							<tr class="listm">
   								<td><%=i+1%></td><td style="display:none"><%=stt.get(i).getB_id()%></td>
   								<td class="categorylist">
   									<%
   										String g = stt.get(i).getPost_category();
   										switch(g){
   											case "free":
   												out.println("<p class='free'>자유</p>");
   											break;
			   								case "archive":
   												out.println("<p class='archive'>자료실</p>");
   											break;
   											case "tip":
   												out.println("<p class='tip'>노하우</p>");
   											break;
   											case "survey":
			   									out.println("<p class='survey'>설문</p>");
   											break;
   											case "review":
   												out.println("<p class='review'>리뷰</p>");
   											break;
   										}
   									%>
   								</td>
   								<td><a href="freeboard_View.jsp?post_id=<%=stt.get(i).getPost_id() %>"><%=stt.get(i).getPost_title()%></a></td>
   								<td><%=stt.get(i).getUser_id()%></td>
   								<td><%=stt.get(i).getPost_cnt()%></td>
   								<td class="clike">♥ <span>0</span></td>
   								<%
   								int se1 = Integer.parseInt(stt.get(i).getB_id());
   								bg = userd.bgselectone2(se1);
   								%>
   								<td><img src="img/<%= bg.getB_img() %>"></td>
   							</tr>
   							
   					<% }%>
   					</jsp:useBean>
                    </tr>

                </tbody>
            </table>
			<% if(member){  %>
            <div class="writeBtn"><button class="writebt" onclick="location.href='community_input.jsp'">글쓰기</button></div>
            <%} %>
        </div>

        <!--pagination-->
        <div class="page">

            <a href="#" class="left">&lt;</a>

            <ol>
                <li class="active"><a href="#">1</a></li>
                <li><a href="#">2</a></li>
                <li><a href="#">3</a></li>
            </ol>

            <a href="#" class="right">&gt;</a>

        </div>

    </section>
    
    <jsp:include page="footer.jsp"/>