function validateWrite(){
	if ($("#title").val() == ""){
		alert("제목을 입력해 주세요");
		$("#title").focus();
		return;
	}
	
	
	$("#boardWrite").submit();
}