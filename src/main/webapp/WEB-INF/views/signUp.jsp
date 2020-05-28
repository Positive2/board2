<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원가입</title>
<meta name="viewport" content="width=device-width, initial-scale=1">

<!-- 부트스트랩 -->
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js"></script>
<!-- 회원가입 유효성 검사 js -->
<script type="text/javascript" src="resources/js/signValidation.js"></script>

</head>


<body>

	<!-- header -->
	<jsp:include page="commons/header.jsp" />
	
	
	<article class="container">
		<div class="page-header">
			<div class="col-md-6 col-md-offset-3">
				<h3>회원가입 Form</h3>
			</div>
		</div>
		<div class="col-sm-6 col-md-offset-3">
			<!-- 회원가입 양식-->
			<form id="signUp" action="signUpForm/signUp" method="post">
				<!-- 아이디 -->
				<div class="form-group">
					<label>아이디</label> <input id="id" name="id" type="text"
						class="form-control" placeholder="4자리 이상 아이디를 입력하세요"> <a
						id="checkDupId" onclick="checkDupId()">중복확인</a>
				</div>


				<!-- 비밀번호 -->
				<div class="form-group">
					<label>비밀번호</label> <input id="pwd" name="pwd" type="password"
						class="form-control" placeholder="4자리 이상 아이디를 입력하세요">
				</div>
				<!-- 비밀번호 확인-->
				<div class="form-group">
					<label>비밀번호 재입력</label> <input id="pwCheck" name="pwCheck"
						type="password" class="form-control" placeholder="같은 비밀번호 입력하세요.">
				</div>

				<!-- 이름 -->
				<div class="form-group">
					<label>이름</label> <input id="name" name="name" type="text"
						class="form-control" placeholder="이름">
				</div>
				<!-- 성별 -->
				<div class="form-group">
					<label>성별</label> <select id="sex" name="sex"
						data-native-menu="false">
						<option value="">성별선택</option>
						<option value="man">남자</option>
						<option value="woman">여자</option>
					</select>
				</div>
				<!-- 생년월일 -->
				<div class="form-group">
					<label>생년월일</label> <input id="birthday" name="birthday"
						type="text" class="form-control" placeholder="19931223">
				</div>
				<!-- 이메일 -->
				<div class="form-group">
					<label>이메일</label> <input id="email" name="email" type="text"
						class="form-control" placeholder="asdf123@naver.com">
				</div>
				<!-- 전화번호 -->
				<div class="form-group">
					<label>전화번호</label> <input id="phone" name="phone" type="text"
						class="form-control" placeholder="01011112222">
				</div>

				<div class="form-group text-center">
					<button class="btn btn-primary"
						onClick="validateSignUp();return false;">가입하기</button>
					<button type="button" onClick="location.href='getBoardList'"
						class="btn btn-warning">가입취소</button>
				</div>
			</form>
		</div>
	</article>
</body>
</html>