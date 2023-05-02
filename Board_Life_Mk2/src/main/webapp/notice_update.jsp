<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <%@page import="vo.Notice"%>
 <%@page import="board.Notice_cont"%>
<%
request.setCharacterEncoding("utf-8");
%>

 <jsp:include page="header.jsp"/>
 <link rel="stylesheet" href="css/notice.css?ver=1" type="text/css">

 <section>
        <h2>공지사항 <span>Notice</span></h2>
        
        <jsp:useBean id="con" class="board.Notice_cont">
        
        <%
		int post_num = Integer.parseInt((request.getParameter("post_id")));
		Notice ob = new Notice();
		ob = con.select_post(post_num);
	
		%>


        <!--inputBox/form태그 추가-->
        <!--action을 지정하지 않으면 다시 자기 자신에게 온다!!-->
        <form name="inputfrm" method="post" action="notice_update_operation.jsp?post_num=<%= post_num %>">
            <div class="inputBox">
                <div class="input">

                    <div class="title">
                        <span>제목</span>
                        <input type="text" name="title" value="<% out.println(ob.getPost_title()); %>" required>
                    </div>
                    
                    <div class="writer">
                        <span>작성자</span>
                        <input type="text" name="id" value="<% out.println(ob.getUser_id()); %>" readOnly>
                    </div>

                    <div class="content">
                        <span>내용</span>
                        <textarea name="content" required><% out.println(ob.getPost_content()); %></textarea>
                    </div>
                </div>


                <!--Back to list-->
                <div class="btngrp">
                    <a href="#" class="btn" onclick="location.href='notice.jsp'; return false;">목록</a>
                    <input type="submit" class="btn" value="등록">
                </div>

            </div>
        </form>
        
          </jsp:useBean>
            
    </section>

    
    <jsp:include page="footer.jsp"/>
    