<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html;charset=utf-8" pageEncoding="utf-8" %>
<%@ page import="vo.*" %>
<%@page import="java.sql.*"%>
<%request.setCharacterEncoding("utf-8");%>
<link rel="stylesheet" type="text/css" href="css/notice.css">
<link rel="stylesheet" type="text/css" href="css/freeboard.css">
	<jsp:include page="header.jsp"/>
	<section id='wrapper' style="height: 75.2%;">
        <h2>자유게시판 <span>FREEBOARD</span></h2>
        <% 
        String login = (String)session.getAttribute("LOGIN");
        int g = Integer.parseInt(request.getParameter("post_id"));
        boolean member = false;
        String id = "";
        String name = "";
        

        if(login != null){
        	id = (String) session.getAttribute("ID");
        	member = true;
        }
        %>
        <jsp:useBean id="userd" class="board.Freeboard_cont">
        <%
        	Community com = new Community();
    		ArrayList<Community> stt1 = new ArrayList<Community>();
   			stt1 = userd.selectone(g);
   		 %>
        <%
        	Community pre = new Community();
        	int r = Integer.parseInt(request.getParameter("post_id"));
        	pre = userd.select_prevpost(r);
        	int p = pre.getPost_id();
        %>
        <%
        	Community nex = new Community();
        	nex = userd.select_nxtpost(r);
        	int n = nex.getPost_id();
        %>
        <%
        	Boardgames bg = new Boardgames();
        	int bid = Integer.parseInt(stt1.get(0).getB_id());
        	bg = userd.bgselectone(bid);
        %>
        <%
        	Boardgames2 bg2 = new Boardgames2();
    		int bid2 = Integer.parseInt(stt1.get(0).getB_id());
    		bg2 = userd.bgselectone2(bid2);
        
        %>
        <!--table-->
        <div class="viewBox">
            <table>
            
                <thead>
                    <tr>
                        <th colspan="4" class="freeboardtitle"><% out.println(stt1.get(0).getPost_title());%></th>
                    </tr>
                    <tr id="freeboard2">
                        <td class="writer"><span>작성자 : </span><%out.print(stt1.get(0).getUser_id());%></td>
                        <td class="clike">♥ <span>0</span></td>
                        <td>조회수 0</td>
                        <td class="freeboarddate"><%= stt1.get(0).getPost_date().substring(0,19) %></td><br>
                        
                    </tr>
                    <tr>
                    	<td class="freeboardbgimg" colspan="4"><img src="img/<%= bg2.getB_img() %>"><br><%= bg2.getB_title_kor() %></td>
                    </tr>
                </thead>
                <tbody>
                    <tr>
                        <td class="content" colspan="4"><pre><% out.println(stt1.get(0).getPost_content());%></pre></td>
                    </tr>

                </tbody>
            </table>

            <div class="btngrp">
                <a href="community_list.jsp" class="btn">목록</a>
                <% if(id.equals(stt1.get(0).getUser_id())){  %>
                <a href="community_update.jsp?post_id=<%= g %>" class="btn">수정</a>
                <a href="community_delete.jsp?post_id=<%= g %>" class="btn">삭제</a>
                <%} %>
            </div>
        </div>

        <!--page move-->
        <table class="pageBox">
            <tr>
                <th>다음글</th>
                <td>
                    <% 
                    	if(n > 0){
                        %><a href="freeboard_View.jsp?post_id=<%= nex.getPost_id()%>"><%out.println(nex.getPost_title());%></a><%
                        }else
                    		%><span>다음 게시글이 없습니다.</span><%
                    %>
                </td>  
            </tr>
            <tr>
                <th>이전글</th>
                <td>
                    <% 
                    	if(p > 0){
                        %><a href="freeboard_View.jsp?post_id=<%= pre.getPost_id()%>"><%out.println(pre.getPost_title());%></a><%
                        }else 
                    		%><span>다음 게시글이 없습니다.</span>
                </td>
            </tr>
        </table>
</jsp:useBean>
    </section>
    <jsp:include page="footer.jsp"/>
</body>

</html>