// 기존의 방식말고 DOM을 활용하여 회원가입 페이지 java script code를 만들어보기
// 목표 : DOM구조의 이해

function examination() {

    var output_switch = true;

    var user_info = document.getElementsByClassName("info");
    // document.querySelectorAll("input[type=text]");


    // 라디오버튼을 골라내는 방법
    // document.querySelector("input[type = radio]:checked");
    // var user_gender = "gender : " + document.querySelector("input[type = radio]:checked").value + "\n";

    // console.log(user_gender);

    // console.log(user_info);


    /*
    var str = '';
    
    for(var i = 0; i < user_info.length; i++){
        
        str += user_info[i].value + ",";        
        
    }
    */

    // 필수입력창에 정보가 없는 것을 경고창으로 띄우는 코드
    // alert(t.item(i).innerText + "text값이 비었습니다.")

    //console.log(str);
    // [0] - id
    // [1] - password
    // [2] - 비밀번호 확인
    // [3] - email 아이디
    // [4] - email 상세주소
    // [8] - 이름
    // [9] - 주소 (지역)
    // [10] - 주소(상세주소)
    // [11] - 전화번호
    // [12] - 닉네임
    // [13] - birth year
    // [14] - birth month
    // [15] - birth day

    /*
    var user_id = "id : " + user_info[0].value + "\n";
    var user_pw = "pw : " + user_info[1].value + "\n";
    var user_pw2 = "pw : " + user_info[2].value + "\n";
    var user_email = "email : " + user_info[3].value + user_info[4].value + "\n";
    var user_name = "name : " + user_info[8].value + "\n";
    var user_addr = "addr : " + user_info[9].value + " : " + user_info[10].value + "\n";
    var user_phone = "phone : " + user_info[11].value + "\n";
    var user_nickname = "nickname : " + user_info[12].value + "\n";
    var user_birth = "birth : " + user_info[13].value + "." + user_info[14].value + "." + user_info[15].value + "\n";
    */

    // 반복문으로 마지막 출력용 string 변수 안에 다 몰아넣으려고 했으나..
    // 각 항목의 이름을 또 다시 추가해줄려면 반복문이 불가능해서 실패..
    /*
    var info1 = user_info[0].value; // id
    var info2 = user_info[1].value; // pw
    var info3 = user_info[2].value; // pw2
    var info4 = user_info[3].value + user_info[4].value; // email
    var info5 = document.querySelector("input[type = radio]:checked").value; // gender
    var info6 = user_info[8].value; // mame
    var info7 = user_info[9].value + " : " + user_info[10].value; // addr
    var info8 = user_info[11].value; //phone
    var info9 = user_info[12].value; // nickname
    var info10 = user_info[13].value + "." + user_info[14].value + "." + user_info[15].value; // birth
    */
    /*
    console.log("id : " + user_id);
    console.log("pw : " + user_pw);
    console.log("pw2 : " + user_pw2);
    console.log("email : " + user_email);
    console.log("addr : " + user_addr);
    console.log("phone : " + user_phone);
    console.log("nickname : " + user_nickname);
    console.log("birth : " + user_birth);
    */

    // 필수 입력 항목
    var user_id = user_info[0].value;
    var user_pw = user_info[1].value;
    var user_pw2 = user_info[2].value; // 비밀번호 확인
    var user_email = user_info[3].value + user_info[4].value;
    // var user_gender = document.querySelector("input[type = radio]:checked").value;
    var user_name = user_info[8].value;
    var user_addr = user_info[9].value + " 상세 - " + user_info[10].value;
    var user_phone = user_info[11].value;

    //선택 입력 항목
    var user_nickname = user_info[12].value;
    var user_birth = user_info[13].value + "." + user_info[14].value + "." + user_info[15].value;


    // *** 판별

    // id 판별
    if (user_id.length == 0) {
        alert("아이디를 입력하지 않았습니다.");
        output_switch = false;
    } else if (user_id.length < 4 || user_id.length > 13) {
        alert("아이디를 8-13자 이내로 입력해주세요.");
        output_switch = false;
    }

    // 패스워드 판별
    if (user_pw.length == 0) {
        alert("패스워드를 입력하지 않았습니다.");
        output_switch = false;
    } else if (user_pw.length < 8 || user_pw.length > 12) {
        alert("패스워드를 8-12자리로 입력해주세요.");
        output_switch = false;
    } else if (user_pw != user_pw2) {
        alert("비밀번호 확인이 일치하지 않습니다.");
        output_switch = false;
    }

    // email 판별
    if (user_email.length == 0) {
        alert("이메일을 입력하지 않았습니다.");
        output_switch = false;
    }

    // 성별 판별(라디오버튼)
    // 라디오버튼이 체크되어 있지 않으면 querySlector가 오류를 일으킴..
    // 먼저 라디오버튼이 체트가 되어있는지 아닌지의 여부를 먼저 판단하려면.. ?!

    var gender_check = document.querySelectorAll("input[type = radio]");

    var g0 = gender_check[0].checked; // true or false
    var g1 = gender_check[1].checked; // true or false

    console.log(g0 + "." + g1);

    // 성별을 전혀 선택하지 않을 경우.. (그러니까 g0과 g1의 값이 둘 다 false인경우)
    if ((g0 == false) && (g1 == false)) {
        alert("성별을 선택하지 않았습니다.");
        output_switch = false;
    }

    // 이름판별
    if (user_name.length == 0) {
        alert("이름을 입력하지 않았습니다.");
        output_switch = false;
    }

    // 주소판별
    var addr_check = user_info[10].value;

    if (addr_check.length == 0) {
        alert("주소를 입력하지 않았습니다.");
        output_switch = false;
    }

    // 전화번호 판별
    if (user_phone.length == 0) {
        alert("연락처를 입력하지 않았습니다.");
        output_switch = false;
    } else if (isNaN(user_phone)) {
        // 입력된 전화번호값이 숫자인지 글자인지 판별
        // true일경우, 글자 false일경우 숫자
        alert("연락처를 잘못 입력하셨습니다. 숫자로 입력해주세요.")
        output_switch = false;
    } else if (user_phone.length != 11) {
        alert("연락처의 자릿수가 맞지 않습니다. 다시 입력해 주세요. \n 예) 01012345678")
        output_switch = false;
    }
    
    //(선택사항) 닉네임 판별
    if(user_nickname.length == 0){
        user_nickname = "none";
    }

    // 출력
    if (output_switch) {

        var user_gender = document.querySelector("input[type = radio]:checked").value;



        var alert_txt = '';
        alert_txt += "id : " + user_id + "\n";
        alert_txt += "pw : " + user_pw + "\n";
        alert_txt += "email : " + user_email + "\n";
        alert_txt += "gender : " + user_gender + "\n";
        alert_txt += "name : " + user_name + "\n";
        alert_txt += "addr : " + user_addr + "\n";
        alert_txt += "phone : " + user_phone + "\n";
        alert_txt += "nickname : " + user_nickname + "\n";
        alert_txt += "birth : " + user_birth + "\n";

        alert(alert_txt);
    }
}
