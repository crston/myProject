var send = document.getElementById("send");
send.addEventListener("click", function () {
  var form = document.getElementById("registerForm");
  var id = document.getElementById("userId");
  var pw = document.getElementById("userPw");
  var pwcheck = document.getElementById("userPwcheck");
  var email = document.getElementById("userEmail");
  var name = document.getElementById("userName");
  var idcheck = $("#userId").val();
  var namecheck = $("#userName").val();

$.ajax({
    url : "idcheck.do",
    type : "POST",
    dataType : "JSON",
    data : {"id" : idcheck},
    success : function (data) {
        if(data == 0) {
$.ajax({
    url : "namecheck.do",
    type : "POST",
    dataType : "JSON",
    data : {"name" : namecheck},
    success : function (data2) {
        if(data2 == 0) {
            form.submit();
        } else{
            alert("사용 중인 닉네임입니다");
            name.focus();
            return false;
        }
    }
})
        } else{
            alert("사용 중인 아이디입니다");
            id.focus();
            return false;
        }
    }
})

  if (id.value.trim() == "") {
    alert("아이디를 입력하세요");
	id.focus();
    return false;
  }
  if (pw.value.trim() == "") {
    alert("비밀번호를 입력하세요");
	pw.focus();
    return false;
  }
  if (pw.length < 6 || pw.length > 16) {
    alert("비밀번호는 6 ~ 16 글자여야 합니다");
  	pw.focus();
    return false;
  }
  if (pw.value.trim() != pwcheck.value.trim()) {
    alert("비밀번호가 일치하지 않습니다");
	pwcheck.focus();
    return false;
  }
  if (email.value.trim() == "") {
    alert("이메일을 입력하세요");
	email.focus();
    return false;
  }
  if(email.value.indexOf('@') == -1){
    alert("이메일 형식이 아닙니다.");
	email.focus();
	return false;
  }
  if (name.value.trim() == "") {
    alert("닉네임을 입력하세요");
	name.focus();
    return false;
  }
})