<%@ page import="vo.Notice"%>
<%@ page import="board.Notice_cont"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
request.setCharacterEncoding("utf-8");
%>
    
    <%
        Notice_cont co = new Notice_cont();
            
            int post_num = Integer.parseInt((request.getParameter("post_id")));
            
            co.delete_post(post_num);
            
            response.sendRedirect("notice.jsp"); // 다시 돌아가는 코드
        %>