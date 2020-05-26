// 일반 로그인 유효성 검사

function validateLogin() {
	if ($("#u_id").val() == "") {
		alert("아이디를 입력하세요");
		$("#u_id").focus();
		return;
	}
	if ($("#u_id").val().length < 4) {
		alert("아이디가 4자리 이상이어야 합니다");
		$("#u_id").focus();
		return;
	}

	if ($("#u_pwd").val() == "") {
		alert("비밀번호를 입력하세요");
		$("#u_pwd").focus();
		return;
	}
	if ($("#u_pwd").val().length < 8) {
		alert("비밀번호가 8자리 이상이어야 합니다");
		$("#u_pwd").val("");
		$("#u_pwd").focus();
		return;
	}
	
	

	// 모든 조건 만족시 AJAX 통신으로 form submit
	// AJAX: 비동기식 자바스크립트 XML(JSON)
	// form.serialize(): form 데이터를 string 형식으로 나열

	var formData = $("#login").serialize();
	$.ajax({
		url : "loginForm/login",
		type : "POST",
		data : formData,
		success : function(data) {
			if (data != "NO") {
				/*if (data == "이메일 비활성화") {
					alert("이메일 인증이 필요합니다");
					location.href = "loginForm";
				} else*/ 
				{
					
					alert(data + " 님 안녕하세요");
					location.href = "boardList";
				}
			} else {
				alert("다시 로그인 해주세요");
				location.href = "login";
			}
		}
	});
	
}
