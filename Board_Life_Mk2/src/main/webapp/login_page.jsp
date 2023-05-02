<%@ page language = "java" contentType = "text/html;charset=utf-8" pageEncoding="utf-8"  %>
<% 
    String warn = ""; 
    warn = request.getParameter("warn");
%>

<jsp:include page="header.jsp"/>

    <!-- CSS -->
    <link rel="stylesheet" href="css/login.css?ver=3" type="text/css">
    
    <!-- Script -->
    <script>
        $(document).ready(function() {
            var user_login = document.getElementById("ulogin");
            var login_btn = document.getElementById("login-btn");
            var input_id = document.getElementById("login-id");
            var input_pw = document.getElementById("login-pw");
            var warning = document.getElementById("warning");

            var id_value; // input_id.value;
            var pw_value; //input_pw.value;

            login_btn.addEventListener("click", function() {

                //                alert("Yo!");

                id_value = input_id.value;
                pw_value = input_pw.value;

                if (id_value.length == 0 || pw_value.length == 0) {
                    
                    warning.innerHTML = "아이디 비밀번호를 입력해주세요.";
                    event.preventDefault();
                }

            }); // click event

        }); // javascript_document

    </script>

    <section id="login">
        <div class="inner-section">
            <h2>로그인</h2>

            <div class="loginBox">
                <p class="welcome"><span>Welcome!</span> Board Life에 오신 것을 환영합니다.</p>

                <form action="login.jsp" name="logfrm" method="post" id="ulogin">
                
                    <div class="id"><input type="text" name="userid" placeholder="아이디를 입력해 주세요." id="login-id"></div>
                    <div class="password"><input type="password" name="userpw" placeholder="비밀번호를 입력해 주세요." id="login-pw"></div>

                    <label><input type="checkbox" checked>아이디 저장</label>

                    <div class="btngrp">
                        <input type="submit" value="로그인" class="btn login" id="login-btn">
                        <a href="boardlife_join.jsp" class="btn join">회원가입</a>
                    </div>
                </form>

                <div class="notice">
                    <p id="warning"> <% if(warn != null){ out.print("로그인에 실패하였습니다. 아이디와 비밀번호를 확인해주세요."); } %></p>
                </div>
                
                <div class="sns_login">
                
                <a href="#" class="kakao"><span><img src="img/sns_kakao.png" alt="kakao"></span> <p> 카카오 아이디로 로그인</p> </a>
                <a href="#" class="naver"><span><img src="img/sns_naver.png" alt="naver"></span> <p> 네이버 아이디로 로그인</p> </a>
                
                </div>

            </div>
        </div>

    </section>

      <jsp:include page="footer.jsp"/>