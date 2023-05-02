// board_life check.js +) 정규표현식

var idPattern = /^[a-z0-9]{5,20}$/;
// 아이디의 패턴을 파악하는 조건식

function idCheck() {
    var input_id = document.getElementById("user-id");
    var id_check = document.getElementById("id-check");
    var id_value = input_id.value;

    $("#id-check").css("color", "red");

    if (input_id.value.length == 0) {
        id_check.innerHTML = "아이디를 입력하지 않았습니다.";
        id_check.classList.add("warning");

    } else if (input_id.value.length < 4 || input_id.value.length > 13) {
        id_check.innerHTML = "아이디를 4-13자리로 다시 입력해주세요.";
        id_check.classList.add("warning");

    } else if (idPattern.test(input_id.value)) {
        id_check.innerHTML = "사용 가능한 아이디입니다.";
        id_check.classList.remove("warning");

    } else {
        id_check.innerHTML = "5~20자 영문 소문자, 숫자를 사용할 수 있습니다.";
        id_check.classList.add("warning");
    } // if

} // idCheck()
