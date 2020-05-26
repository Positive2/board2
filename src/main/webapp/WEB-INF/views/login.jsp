<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<title> JaehongPage</title>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<!-- jquery 사용 -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>

<!-- 로그인 유효성 검사 JS -->
<script type="text/javascript" src="resources/js/loginValidation.js"></script>
</head>
<body>
	<form id="login" method="post">
		<input id="u_id" name="u_id"   type="text" placeholder="아이디를 입력하세요">
		<input id="u_pwd" name="u_pwd" type="password" placeholder="8자리 이상 비밀번호를 입력하세요">
		
		<button onclick="validateLogin();return false;">로그인</button>
	</form>
	
	<a href="signUp">회원가입</a>
</body>
</html>