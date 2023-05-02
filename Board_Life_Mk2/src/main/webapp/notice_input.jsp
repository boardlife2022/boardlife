<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<% request.setCharacterEncoding("utf-8"); %>

 <jsp:include page="header.jsp"/>
 <link rel="stylesheet" href="css/notice.css?ver=1" type="text/css">

<section>
        <h2>공지사항 <span>Notice</span></h2>
        
        </p>

        <!--inputBox/form태그 추가-->
        <!--action을 지정하지 않으면 다시 자기 자신에게 온다!!-->
        <form name="inputfrm" method="post" action="notice_input_operation.jsp">
            <div class="inputBox">
                <div class="input">

                    <div class="title">
                        <span>제목</span>
                        <input type="text" name="title" required>
                    </div>
                    
                    <div class="writer">
                        <span>작성자</span>
                        <% 
                        String login_check = (String)session.getAttribute("LOGIN");  
                        String id = "";
                        boolean check = false;
        				if(login_check != null){
        					id = (String)session.getAttribute("ID");  
        				   	check = true;
        				}
        				%>
        				
                        <input type="text" name="id" value="<%= id %>" readOnly>
                        
                    </div>

                    <div class="content">
                        <span>내용</span>
                        <textarea name="content" required></textarea>
                    </div>
                </div>


                <!--Back to list-->
                <div class="btngrp">
                    <a href="#" class="btn" onclick="location.href='notice.jsp'; return false;">목록</a>
                    <input type="submit" class="btn" value="등록">
                </div>

            </div>
        </form>
    </section>
    
    <jsp:include page="footer.jsp"/>
    