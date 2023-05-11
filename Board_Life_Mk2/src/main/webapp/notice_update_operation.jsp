<%@ page import="vo.Notice"%>
<%@ page import="board.Notice_cont"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
request.setCharacterEncoding("utf-8");
%>
    
    <%
        Notice_cont co = new Notice_cont();
            Notice ob = new Notice();
            
            int post_num = Integer.parseInt(request.getParameter("post_num"));
            
            ob.setPost_title(request.getParameter("title"));
            ob.setPost_content(request.getParameter("content"));

            out.println(ob.getPost_title() + "<br>");
            out.println(ob.getPost_content() + "<br>");
            
            co.update_post(ob, post_num);
            response.sendRedirect("notice.jsp"); // 다시 돌아가는 코드
        %>