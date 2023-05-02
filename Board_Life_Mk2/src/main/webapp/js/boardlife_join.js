// Java Script




// 3단계 : 입력된 모든 정보가 다이얼로그 창으로 떠야 한다.
// 자릿수체크, 글자 있는지 없는지 체크등등..
// 4단계 : DB에 넣는다

function examination() {

    var join_switch = true;
    var phone_num = Number(boardlife_join.phone.value);
    // 입력된 전화번호 값을 숫자로 변환

    var pw1 = boardlife_join.password1.value;
    // 입력된 비밀번호를 변수에 저장

    // 아이디 글자수 판별
    if (boardlife_join.user_id.value.length == 0) {
        alert("아이디를 입력하지 않았습니다.");
        join_switch = false;
    } else if (boardlife_join.user_id.value.length < 4 || boardlife_join.user_id.value.length > 13) {
        alert("아이디를 5-20자리로 다시 입력해주세요.");
        join_switch = false;
    }

    // 비밀번호 글자수 판별
    if (pw1.length == 0) {
        alert("비밀번호를 입력하지 않았습니다.");
        join_switch = false;
    } else if (pw1.length < 8 || pw1.length > 12) {
        alert("비밀번호를 8-12자리로 다시 입력해주세요.");
        join_switch = false;
    }

    // 비밀번호 중복확인
    if (pw1 != boardlife_join.password2.value) {
        alert("비밀번호 확인에 실패하였습니다. 다시 입력해주세요.");
        join_switch = false;
    }


    if (boardlife_join.email_id.value.length == 0) {
        alert("이메일을 입력하지 않았습니다.");
        join_switch = false;
    }

    if (boardlife_join.gender.value.length == 0) {
        alert("성별을 선택하지 않았습니다.");
        join_switch = false;
    }

    if (boardlife_join.name.value.length == 0) {
        alert("이름을 입력하지 않았습니다.");
        join_switch = false;
    }

    if (boardlife_join.address2.value.length == 0) {
        alert("상세주소를 입력하지 않았습니다.");
        join_switch = false;
    }


    // 연락처 판별
    if (boardlife_join.phone.value.length == 0) {
        alert("연락처를 입력하지 않았습니다.");
        join_switch = false;
    } else if (isNaN(phone_num)) {
        // 입력된 전화번호값이 숫자인지 글자인지 판별
        // true일경우, 글자 false일경우 숫자
        alert("연락처를 잘못 입력하셨습니다. 숫자로 입력해주세요.")
        join_switch = false;
    } else if (boardlife_join.phone.value.length != 11) {
        alert("연락처의 자릿수가 맞지 않습니다. 다시 입력해 주세요. \n 예) 01012345678")
        join_switch = false;
    }

    if (join_switch) {
        var user_info;
        // 필수 입력 내용
        user_info = "ID : " + boardlife_join.user_id.value + " \n ";
        user_info += "PW : " + boardlife_join.password1.value + " \n ";
        user_info += "email : " + boardlife_join.email_id.value + boardlife_join.email.value + " \n ";
        user_info += "gender : " + boardlife_join.gender.value + " \n ";
        user_info += "name : " + boardlife_join.name.value + " \n ";
        user_info += "address : " + boardlife_join.address1.value + " / " + boardlife_join.address2.value + " \n ";
        user_info += "phone : " + boardlife_join.phone.value + " \n ";

        // 선택 입력내용

        user_info += "nickname : " + boardlife_join.nickname.value + " \n ";
        user_info += "birth : " + boardlife_join.birth_y.value + "년" +
            boardlife_join.birth_m.value + "월" +
            boardlife_join.birth_d.value + "일";

        // 회원가입 결과화면
        alert(user_info);

    }

}
