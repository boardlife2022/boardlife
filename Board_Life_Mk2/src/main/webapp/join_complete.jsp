<%@ page language = "java" contentType = "text/html;charset=utf-8" pageEncoding="utf-8"  %>
<% 
    String warn = ""; 
    warn = request.getParameter("warn"); 
%>

<jsp:include page="header.jsp"/>

    <!-- CSS -->
    <link rel="stylesheet" href="css/join_con.css?ver=1" type="text/css">
    
    <section id="join_com">
        
        <div class="inner-section">
            
            <h2>회원가입 완료</h2>
            
            <div class="join_combox">
               
               <div class="welcome">
                   <img src="img/login_logo.png" alt="boardlife">
                   <p>
                       <span class="title">회원가입이 완료되었습니다. 로그인후 이용해주세요.</span>
                   </p>
               </div>
               
               <div class="btn-box">
                  <div class="btn-wrap clearfix">
                      <a href="login_page.jsp">로그인</a>
                      <a href="index.jsp">홈으로</a>
                  </div>
                   
               </div>
                
            </div>
            
        </div>
        
    </section>
    
 <jsp:include page="footer.jsp"/>