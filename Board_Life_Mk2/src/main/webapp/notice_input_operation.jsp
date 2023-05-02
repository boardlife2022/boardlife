<%@page import="vo.Notice"%>
<%@page import="board.Notice_cont"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
request.setCharacterEncoding("utf-8");
%>
    
    <%
        Notice_cont co = new Notice_cont();
            Notice ob = new Notice();
            
            ob.setPost_title(request.getParameter("title"));
            ob.setUser_id(request.getParameter("id"));
            ob.setPost_content(request.getParameter("content"));

            out.println(ob.getPost_title() + "<br>");
            out.println(ob.getUser_id() + "<br>");
            out.println(ob.getPost_content() + "<br>");
            
            co.insert(ob);
            
            response.sendRedirect("notice.jsp"); // 다시 돌아가는 코드
        %>