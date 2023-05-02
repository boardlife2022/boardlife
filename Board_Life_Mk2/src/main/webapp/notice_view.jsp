<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@page import="vo.Notice"%>
	<%@page import="board.Notice_cont"%>

    <%
     request.setCharacterEncoding("utf-8");
    %>

	<jsp:include page="header.jsp"/>
    <link rel="stylesheet" href="css/notice.css" type="text/css">
    
     <section>
        <h2>공지사항 <span>Notice</span></h2>
        
        <jsp:useBean id="con" class="board.Notice_cont">
	
		<%
		int post_num = Integer.parseInt((request.getParameter("post_id")));
		Notice ob = new Notice();
		Notice prvOb = new Notice();
		Notice nxtOb = new Notice();
		ob = con.select_post(post_num);
		prvOb = con.select_prevpost(post_num);
		nxtOb = con.select_nxtpost(post_num);
		
		String writer = ob.getUser_id();
		%>
        
        <!--table-->
        <div class="viewBox">
            <table>

                <thead>
                    <tr>
                        <th class="title"><% out.println(ob.getPost_title()); %></th>
                    </tr>
                    
                    <tr>
                        <td class="writer"><span>작성자 : </span> <% out.println(ob.getUser_id()); %> </td>
                    </tr>
                    
                    <tr>
                        <td class="writer"><span>작성 날짜 : </span> <% out.println(ob.getPost_date()); %> </td>
                    </tr>
                    
                </thead>

                <tbody>
                    <tr>
                        <td class="content"> <p style="white-space: pre-line;"><% out.println(ob.getPost_content()); %> </p> </td>
                    </tr>

                </tbody>
            
                
            </table>


            <!--Back to list-->
            <div class="btngrp">
                <a href="notice.jsp" class="btn">목록</a>
                <% 
                
                // login_check
                String login_check = (String)session.getAttribute("LOGIN");  
                String id = "";
                boolean check = false;
				if(login_check != null){
					id = (String)session.getAttribute("ID");  
				   	check = true;
				}
                
                %>
                
               	<% if(id.equals(writer)){ %>
                <a href="notice_update.jsp?post_id=<% out.println(ob.getPost_id()); %>" class="btn">수정</a>
                <a href="notice_delete_operation.jsp?post_id=<%out.println(ob.getPost_id());%>" class="btn">삭제</a>
                <% } %>
            </div>

        </div>



        <!--page move-->
        <table class="pageBox">
            <tr>
                <th>다음글</th>
                <!-- <td><a href="#">Delivers 서비스 이용 약관 개정 안내</a></td> -->
                <td>
                <% if(nxtOb.getPost_id() == 0){%>
						<p>다음글이 없습니다.</p> <% }else{ %>
                        <a href="notice_view.jsp?post_id=<%out.println(nxtOb.getPost_id());%>"> <% out.println(nxtOb.getPost_title()); %> </a>
				<% } %>
                </td>
            </tr>
            <tr>
                <th>이전글</th>
                <!-- <td><a href="#">개인정보 처리방침 개정 안내</a></td> -->
                <td>
                <% if(prvOb.getPost_id() == 0){%>
						<p>이전글이 없습니다.</p> <% }else{ %>
                        <a href="notice_view.jsp?post_id=<%out.println(prvOb.getPost_id());%>"> <% out.println(prvOb.getPost_title()); %> </a>
				<% } %>
                </td>  
            </tr>
        </table>
	</jsp:useBean>
    </section>
    
    <jsp:include page="footer.jsp"/>