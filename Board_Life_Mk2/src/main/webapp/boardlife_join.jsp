<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<% request.setCharacterEncoding("utf-8"); %>

<jsp:include page="header.jsp"/>

    <link rel="stylesheet" href="css/join.css" type="text/css">

    <!--  다음 우편번호 서비스 링크 && javascript file -->
    <script src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
    <script src="js/post-code.js"></script>

    <!--  ajax  -->
    <script src="js/join_con.js"></script>

    <section id="join">
        <div class="inner-section">
            <h2>회원가입</h2>

            <div class="joinbox">

                <div class="welcome">
                    <img src="img/login_logo.png" alt="boardLife">
                    <p><span class="title">Board Life에 오신 것을 환영합니다.
                            <br> <span class="small"> * 표시는 필수 입력 항목입니다.</span>
                        </span></p>
                </div>

                <form name="boardlife_join" method="post" action="insert-memberinfo.jsp" id="user-form" enctype= "multipart/form-data">

                    <fieldset class="required">
                        <legend>필수 사항 입력</legend>

                        <table border="1">
                            <tr>
                                <th> 아이디* </th>
                                <td>
                                    <input type="text" name="user_id" required class="info" id="user-id">
                                    <button class="min_btn" id="idc-btn">중복확인</button>
                                    <span class="guide" id="id-check">(영문, 숫자 혼합한 5-20자리 사이로 입력하세요.)</span>
                                </td>
                            </tr>

                            <tr>
                                <th>비밀번호*</th>
                                <td>
                                    <input type="password" name="password" required class="info" id="user-pw">
                                    <span class="guide" id="pw-check">(영문, 숫자 혼합한 8-12자리로 사이로 입력하세요.)</span>
                                </td>
                            </tr>

                            <tr>
                                <th>비밀번호 확인</th>
                                <td>
                                    <input type="password" name="password-c" required class="info" id="pw-con">
                                    <span class="guide" id="pwc-check"> </span>
                                </td>
                            </tr>

                            <tr>
                                <th>e-mail*</th>
                                <td><input type="text" name="email_id" required placeholder="email을 입력하세요." class="info">
                                    <select name="email_addr" id="email" class="info">
                                        <optgroup label="email" class="info">
                                            <option value="@naver.com">@naver.com</option>
                                            <option value="@hanmail.net">@hanmail.net</option>
                                            <option value="@google.com">@google.com</option>
                                        </optgroup>
                                    </select>
                                </td>
                            </tr>

                            <tr>
                                <th>성별*</th>
                                <td>
                                    <input type="radio" name="gender" value="남" required class="info"><span class="gender_btn">남</span>
                                    <input type="radio" name="gender" required value="여" class="info"><span class="gender_btn">여</span>
                                </td>
                            </tr>

                            <tr>
                                <th>이름*</th>
                                <td><input type="text" name="name" required class="info"></td>
                            </tr>

                            <tr>
                                <th>주소*</th>
                                <td>

                                    <input type="text" id="sample6_postcode" placeholder="우편번호" name="zip-code" required>
                                    <input type="button" onclick="sample6_execDaumPostcode()" value="우편번호 찾기"><br>
                                    <input type="text" id="sample6_address" placeholder="주소" name="address" required style="margin-left: 10px; width: 280px;"><br>
                                    <input type="text" id="sample6_detailAddress" placeholder="상세주소" name="address-d" required style="margin-left: 10px; width: 280px;">
                                    <input type="text" id="sample6_extraAddress" placeholder="참고항목" style="display: none">
                                </td>
                            </tr>

                            <tr>
                                <th>연락처*</th>
                                <td><input type="text" name="phone" required placeholder="-없이 입력해주세요." class="info" id="phone-num">
                                    <span class="guide" id="num-check"></span>
                                </td>
                            </tr>

                        </table>
                    </fieldset>

                    <fieldset class="optional">
                        <legend>선택사항 입력</legend>

                        <table border="1">

                            <tr>
                                <th>닉네임</th>
                                <td>
                                    <input type="text" name="nickname" placeholder="한글 6자리 이내로 입력하세요." class="info" id="nick">
                                    <span class="guide" id="nick-check"></span>
                                </td>
                            </tr>

                            <tr>
                                <th>생년월일</th>
                                <td>
                                    <select name="birth_y" id="y" required class="info">
                                        <optgroup label="year">
                                            <option value="">선택</option>
                                            <option value="1970">1970</option>
                                            <option value="1971">1971</option>
                                            <option value="1972">1972</option>
                                            <option value="1973">1973</option>
                                            <option value="1974">1974</option>
                                            <option value="1975">1975</option>
                                            <option value="1976">1976</option>
                                            <option value="1977">1977</option>
                                            <option value="1978">1978</option>
                                            <option value="1979">1979</option>
                                            <option value="1980">1980</option>
                                            <option value="1981">1981</option>
                                            <option value="1982">1982</option>
                                            <option value="1983">1983</option>
                                            <option value="1984">1984</option>
                                            <option value="1985">1985</option>
                                            <option value="1986">1986</option>
                                            <option value="1987">1987</option>
                                            <option value="1988">1988</option>
                                            <option value="1989">1989</option>
                                            <option value="1990">1990</option>
                                            <option value="1991">1991</option>
                                            <option value="1992">1992</option>
                                            <option value="1993">1993</option>
                                            <option value="1994">1994</option>
                                            <option value="1995">1995</option>
                                            <option value="1996">1996</option>
                                            <option value="1997">1997</option>
                                            <option value="1998">1998</option>
                                            <option value="1999">1999</option>
                                        </optgroup>
                                    </select>

                                    <select name="birth_m" id="m" required class="info">
                                        <optgroup label="month">
                                            <option value="">선택</option>
                                            <option value="12">12</option>
                                            <option value="11">11</option>
                                            <option value="10">10</option>
                                            <option value="9">9</option>
                                            <option value="8">8</option>
                                            <option value="7">7</option>
                                            <option value="6">6</option>
                                            <option value="5">5</option>
                                            <option value="4">4</option>
                                            <option value="3">3</option>
                                            <option value="2">2</option>
                                            <option value="1">1</option>
                                        </optgroup>
                                    </select>

                                    <select name="birth_d" id="d" required class="info">
                                        <optgroup label="day">
                                            <option value="">선택</option>
                                            <option value="31">31</option>
                                            <option value="30">30</option>
                                            <option value="29">29</option>
                                            <option value="28">28</option>
                                            <option value="27">27</option>
                                            <option value="26">26</option>
                                            <option value="25">25</option>
                                            <option value="24">24</option>
                                            <option value="23">23</option>
                                            <option value="22">22</option>
                                            <option value="21">21</option>
                                            <option value="20">20</option>
                                            <option value="19">19</option>
                                            <option value="18">18</option>
                                            <option value="17">17</option>
                                            <option value="16">16</option>
                                            <option value="15">15</option>
                                            <option value="14">14</option>
                                            <option value="13">13</option>
                                            <option value="12">12</option>
                                            <option value="11">11</option>
                                            <option value="10">10</option>
                                            <option value="9">9</option>
                                            <option value="8">8</option>
                                            <option value="7">7</option>
                                            <option value="6">6</option>
                                            <option value="5">5</option>
                                            <option value="4">4</option>
                                            <option value="3">3</option>
                                            <option value="2">2</option>
                                            <option value="1">1</option>
                                        </optgroup>
                                    </select>

                                </td>
                            </tr>

                            <tr>
                                <th>프로필 이미지</th>
                                <td><input type="file" name="p_image">
                                    <span class="img_guide"> 160*160px 사이즈의 이미지를 업로드해주세요.</span>
                                </td>

                            </tr>

                        </table>

                        <p>* 선택항목은 입력하지 않거나 동의하지 않아도 회원가입이 가능합니다. </p>

                    </fieldset>

                    <input type="submit" value="가입하기" class="btn">
                </form>


            </div>

        </div>
    </section>

<jsp:include page="footer.jsp"/>

