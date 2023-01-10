var send = document.getElementById("send");
send.addEventListener("click", function () {
  var form = document.getElementById("writeForm");
  var sub = document.getElementById("subject");
  var con = document.getElementById("contents");
  var concheck = $("#contents").val();

  if (sub.value.trim() == "") {
    alert("글제목을 입력하세요");
	sub.focus();
    return false;
  }
  if (con.value.trim() == "") {
    alert("내용을 입력하세요");
	con.focus();
    return false;
  }
  if (concheck.length > 500){
    alert("내용은 500 글자를 초과할 수 없습니다");
	con.focus();
    return false;
  }
  form.submit();
});