<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원가입</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<!-- jquery 사용 -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<!-- 회원가입 유효성 검사 js -->
<script type="text/javascript" src="resources/js/signValidation.js"></script>
</head>


<body>
	<h1>회원가입</h1>
	<!-- 회원가입 양식-->
	<form id="signUp" action="signUpForm/signUp" method="post">
		<!-- 아이디 -->
		<input id="id" name ="id" type="text" placeholder="4자리 이상 아이디를 입력하세요">
		<!-- 비밀번호 -->
		<input id="pwd" name ="pwd" type="password" placeholder="4자리 이상 아이디를 입력하세요">
		<!-- 비밀번호 확인-->
		<input id="pwCheck" name="pwCheck" type="password" placeholder="같은 비밀번호 입력하세요.">
		<!-- 이름 -->	
		<input id="name" name="name" type="text" placeholder="이름">
		<!-- 성별 -->
		<select id="sex" name="sex" data-native-menu="false">
			<option value="">성별선택</option>
			<option value="man">남자</option>
			<option value="woman">여자</option>
		</select>
		<!-- 생년월일 -->
		<input id="birthday" name="birthday" type="text" placeholder="19931223">
		<!-- 이메일 -->
		<input id="email" name="email" type="text" placeholder="asdf123@naver.com">
		<!-- 전화번호 -->
		<input id="phone" name="phone" type="text" placeholder="01011112222">
		
		<button onclick="validateSignUp();return false;">가입하기</button>
	</form>
</body>
</html>