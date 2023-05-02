// join_con.js 가입확인 코드

$(document).ready(function() {

            // 정규표현식 상수
            const idPattern = /^[a-z0-9]{5,20}$/; // 아이디 정규표현식 5-20글자
            const pwPattern = /^[a-z0-9]{8,12}$/; // 패스워드 정규표현식 8-12글자
            const koreanRegex = /^[\uAC00-\uD7AF]{1,6}$/; // 한글 정규표현식 1-6글자

            // input tag 변수 선언
            var user_form = document.getElementById("user-form");
            var input_id = document.getElementById("user-id");
            var input_pw = document.getElementById("user-pw");
            var input_nick = document.getElementById("nick");
            var id_check = document.getElementById("id-check");
            var pw_check = document.getElementById("pw-check");
            var pwc_check = document.getElementById("pwc-check");
            var nick_check = document.getElementById("nick-check");
            var input_pwc = document.getElementById("pw-con");
            var idc_btn = document.getElementById("idc-btn");
            var phone_num = document.getElementById("phone-num");
            var num_check = document.getElementById("num-check");

            // input tag 입력값
            var id_value;
            var nick_value;
            var pw_value;
            var pwc_value;
            var phone_value;

            // 유효성 검사 스위치
            var sw_btn = false;
            var id_confirm = false;
            var phone_con = false;
            var switch_btn = false;
            var pw_con = false;
            var pwc_con = false;

            input_id.addEventListener("input", function() {

                id_value = input_id.value;

                // id_check.innerHTML = id_value;
                if (input_id.value.length == 0) {
                    id_check.innerHTML = "아이디를 입력하지 않았습니다.";
                    $("#id-check").css("color", "red");
                    sw_btn = false;
                } else if (input_id.value.length < 4 || input_id.value.length > 13) {
                    id_check.innerHTML = "아이디를 4-13자리로 다시 입력해주세요.";
                    $("#id-check").css("color", "red");
                    sw_btn = false;
                } else if (idPattern.test(input_id.value)) {
                    id_check.innerHTML = "사용 가능한 형식입니다. 아이디 중복확인을 해주세요.";
                    $("#id-check").css("color", "green");
                    sw_btn = true;
                } else {
                    id_check.innerHTML = "5~20자 영문 소문자, 숫자를 사용할 수 있습니다.";
                    $("#id-check").css("color", "red");
                    sw_btn = false;
                } // if

            }); // input_id.addEventListener : input_id

            input_pw.addEventListener("input", function() {

                if (input_pw.value.length == 0) {
                    pw_check.innerHTML = "비밀번호를 입력하지 않았습니다.";
                    $("#pw-check").css("color", "red");
                    pw_con = false;
                } else if (input_pw.value.length < 8 || input_pw.value.length > 12) {
                    pw_check.innerHTML = "비밀번호를 8-12자리로 다시 입력해주세요.";
                    $("#pw-check").css("color", "red");
                    pw_con = false;
                } else if (pwPattern.test(input_pw.value)) {
                    pw_check.innerHTML = "사용 가능한 비밀번호 입니다.";
                    $("#pw-check").css("color", "green");
                    pw_con = true;
                } else {
                    pw_check.innerHTML = "영문, 숫자 혼합한 8-12자리로 사이로 입력하세요.";
                    $("#pw-check").css("color", "red");
                    pw_con = false;
                }
                
                // 비밀번호를 입력할때마다 비밀번호 확인란이 곧바로 반응하도록 코드 설계
                pw_value = input_pw.value;
                //                console.log(pw_value);

                pwc_value = input_pwc.value;
                //                console.log(pwc_value);

                if (pw_value == pwc_value) {
                    pwc_check.innerHTML = "비밀번호가 일치합니다.";
                    $("#pwc-check").css("color", "green");
                    pwc_con = true;
                } else {
                    pwc_check.innerHTML = "비밀번호가 일치하지 않습니다.";
                    $("#pwc-check").css("color", "red");
                    pwc_con = false;
                }


            }); // input_pw.addEventListner : input_pw


            input_pwc.addEventListener("input", function() {
                pw_value = input_pw.value;
                //                console.log(pw_value);

                pwc_value = input_pwc.value;
                //                console.log(pwc_value);

                if (pw_value == pwc_value) {
                    pwc_check.innerHTML = "비밀번호가 일치합니다.";
                    $("#pwc-check").css("color", "green");
                    pwc_con = true;
                } else {
                    pwc_check.innerHTML = "비밀번호가 일치하지 않습니다.";
                    $("#pwc-check").css("color", "red");
                    pwc_con = false;
                }

            }); // input_pw.addEventListner : input_pwc


            phone_num.addEventListener("input", function() {

                phone_value = phone_num.value;

                if (phone_value.length == 0) {
                    num_check.innerHTML = "연락처를 입력하지 않았습니다.";
                    $("#num-check").css("color", "red");
                    phone_con = false;
                } else if (isNaN(phone_value)) {
                    // 입력된 전화번호값이 숫자인지 글자인지 판별
                    // true일경우, 글자 false일경우 숫자
                    num_check.innerHTML = "연락처를 잘못 입력하셨습니다. 숫자로 입력해주세요.";
                    $("#num-check").css("color", "red");
                    phone_con = false;
                } else if (phone_value.length != 11) {
                    num_check.innerHTML = "연락처의 자릿수가 맞지 않습니다. 다시 입력해 주세요. \n 예) 01012345678";
                    $("#num-check").css("color", "red");
                    phone_con = false;
                } else {
                    num_check.innerHTML = "입력가능한 전화번호입니다.";
                    $("#num-check").css("color", "green");
                    phone_con = true;
                }

            }); // input_pw.addEventListner : input_pwc


            input_nick.addEventListener("input", function() {
                // nick-name 확인

                nick_value = input_nick.value;

                //                console.log(nick_value);
                if (koreanRegex.test(nick_value)) {
                    nick_check.innerHTML = "사용 가능한 닉네임입니다.";
                    $("#nick-check").css("color", "green");

                } else {
                    nick_check.innerHTML = "닉네임을 1-6자리의 한글로 입력해주세요.";
                    $("#nick-check").css("color", "red");
                }


            }); // input_nick.addEventListner 

            idc_btn.addEventListener("click", function() {

                // form submit이 실행되지 않게 하기 위해 설정해둔 스위치
                switch_btn = true;

                if (sw_btn) {

                    $.ajax({
                        url: "idAjax.jsp?id=" + id_value,
                        dataType: "html",
                        type: "get",
                        success: function(id) {

                            //                            console.log(id);
                            id_value = input_id.value;
                            //                            console.log(id_value);

                            if (id == 1) {
                                alert(id_value + "는 이용하실 수 없는 아이디입니다.");
                                id_check.innerHTML = "중복된 아이디입니다. 새로운 아이디를 입력해주세요";
                                $("#id-check").css("color", "red");
                            } else {
                                alert(id_value + "는 이용하실 수 있는 아이디입니다.");
                                id_check.innerHTML = "사용 가능한 아이디입니다.";
                                input_id.readOnly = true;
                                $("#user-id").css("backgroundColor", "rgba(0,0,0,0.1)");
                                id_confirm = true;
                            }

                        } // success_function

                    }); // ajax

                } else {

                    alert("먼저 아이디 형식을 맞춰주세요.");

                } // if else sw_btn


            }); // input_pw.addEventListner : input_pwc


            user_form.addEventListener('submit', (event) => {


                // 중복확인 버튼을 눌렀을 때 submit function이 같이 실행되기 때문에, 이것을 막는 if문
                if (switch_btn) {
                    console.log("activate");
                    event.preventDefault();
                    switch_btn = false;
                    return false;
                }

                if (!id_confirm || !sw_btn) {
                    alert("아이디 중복확인을 해주세요!");
                    event.preventDefault();
                }

                if (!phone_con) {
                    alert("전화번호 형식을 확인해주세요!")
                    event.preventDefault();
                }

                if (!pw_con || !pwc_con) {
                    alert("비밀번호 형식을 확인해주세요!")
                    event.preventDefault();
                }

            }); // submit event


        }); // javascript_document

