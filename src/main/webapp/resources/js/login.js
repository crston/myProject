var send = document.getElementById("send");
send.addEventListener("click", function () {
  var form = document.getElementById("loginForm");
  var id = document.getElementById("userId");
  var pw = document.getElementById("userPw");

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
  form.submit();
});