function validateSignUp(){
	
	if($("#id").val() == ""){
		alert("아이디를 입력하세요");
		$("#id").focus();
		return;
	}
	
	if($("#id").val().length < 4){
		alert("아이디는 4자리 이상입니다.");
		$("#id").focus();
		return;
	}
	
	if($("#pwd").val() == ""){
		alert("비밀번호를 입력하세요");
		$("#pwd").focus();
		return;
	}
	
	if($("#pwd").val().length < 8 ){
		alert("비밀번호 8자리이상으로 입력해주세요.");
		$("#pwd").focus();
		return;
	}
	
	if($("#pwCheck").val() != $("#pwd").val()){
		alert("비밀번호, 재확인 똑같이 입력해주세요.");
		$("#pwCheck").val("");
		$("#pwCheck").focus();
		return;
	}
	
	if($("#name").val() == ""){
		alert("이름을 입력해주세요");
		$("#name").focus();
		return;
	}
	//select open??
	if($("#sex").val() == ""){
		alert("성별을 선택하세요");
		$("#sex").focus();
		return;
	}
		
	if($("#birthday").val() ==""){
		alert("생년월일을 입력하세요");
		$("#birthday").focus();
		return;
	}
	// isNaN 함수 숫자가아니면 1 맞으면 0 반환
	if(isNaN($("#birthday").val())){
		alert("숫자로 생년월일 입력하세요");
		$("#birthday").val("");
		$("#birthday").focus();
		return;
	}
	
	if($("#birthday").val().length != 8){
		alert("생년월일은 8자리로 맞춰주세요");
		$("#birthday").focus();
		return;
	}
	
	
	
	if($("#email").val() ==""){
		alert("이메일을 입력하세요");
		$("#email").focus();
		return;
	}
	
	//이메일 정규식 체크
	var emailValidationCheck = emailValidationCheck();
	function emailValidationCheck(){
		var regExp = /^[0-9a-zA-Z]([-_\.]?[0-9a-zA-Z])*@[0-9a-zA-Z]([-_\.]?[0-9a-zA-Z])*\.[a-zA-Z]{2,3}$/i;

		return regExp.test($("#email").val());
	}
	
	if(emailValidationCheck != true){
		alert("이메일 형식이 다릅니다.");
		$("#email").focus();
		return;
	}
	
	if($("#phone").val() == ""){
		alert("휴대폰 번호를 입력하세요");
		$("#phone").focus();
		return;
	}
	
	if(isNaN($("#phone").val())){
		alert("휴대폰 번호는 숫자만 입력해주세요");
		$("#phone").val("");
		$("#phone").focus();
		return;
	}
	
	$("#signUp").submit();
}