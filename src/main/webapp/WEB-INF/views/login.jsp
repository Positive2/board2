<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<title>JaehongPage</title>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<!-- css -->
<link rel="stylesheet" type="text/css" href="resources/css/login.css">

<!-- 부트스트랩 -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js"></script>
<!--  JavaScript -->
<script type="text/javascript" src="https://code.jquery.com/jquery-3.3.1.min.js"></script>
<!-- 로그인 유효성 검사 JS -->
<script type="text/javascript" src="resources/js/loginValidation.js"></script>
</head>
<body>
	<!-- header -->
	<jsp:include page="commons/header.jsp"/>
	<div class="wrapper fadeInDown">
		<div id="formContent">
			<!-- Tabs Titles -->
			<!-- Icon -->
			<div class="fadeIn first">
				<img src="resources/images/login.png" id="icon"
					alt="User Icon" />
			</div>
			<!-- Login Form -->
			<form id="login" method="post">
				<input type="text" id="u_id" class="fadeIn second"
				 	   name="u_id" placeholder="아이디를 입력하세요"> 
				<input type="password" id="u_pwd" class="fadeIn second" 
				       name="u_pwd" placeholder="비밀번호를 입력하세요"> 
				<button class="fadeIn fourth" onclick="validateLogin();return false;">로그인</button>
			</form>
			
			<!-- Remind Passowrd -->
			<div id="formFooter">
				<a class="underlineHover" href="#">회원가입 하셧나요?</a>
			</div>

		</div>
	</div>

</body>
</html>