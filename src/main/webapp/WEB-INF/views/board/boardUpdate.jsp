<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>

<title>게시판 수정</title>

<!-- 부트스트랩 -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js"></script>
<!--  JavaScript -->
<script type="text/javascript" src="https://code.jquery.com/jquery-3.3.1.min.js"></script>

<!-- 로그인 유효성 검사 JS -->
<script type="text/javascript" src="/resources/js/updateValidation.js"></script>


</head>
<body>
<!-- header -->
	<jsp:include page="../commons/header.jsp" />
	
	<article>
		<div class="page-header">
			<div class="col-md-6 col-md-offset-3">
				<h3>글 수정 </h3>
			</div>
		</div>
		<div class="col-sm-6 col-md-offset-3">
			
			<form id="boardUpdate" action="board/boardUpdate" method="post">
				<!-- 글번호 readonly -->
				<div class="form-group">
					<label>글번호</label> 
					<input readonly id="board_num" name="board_num" type="text" class="form-control" value="${userContent.board_num}" placeholder="제목입력">
				</div>
				<!-- 작성자 숨기기 -->
				<input  id="writer" name="writer" type="hidden"  value="${userContent.board_writer}">
				<!-- id readonly -->
				<div class="form-group">
					<label>ID</label> 
					<input readonly id="id" name="id" type="text"  class="form-control"  value="${session.u_id}">
				</div>
				
		
				<!-- 제목 -->
				
				<div class="form-group">
					<label>제목</label> 
					<input id="title" name="title" type="text" class="form-control" placeholder="제목입력" value="${userContent.board_title}">
				</div>
				<!-- 내용 -->
				<div class="form-group">
					<label>내용 </label>
					<textarea id="content"  name ="content" class="form-control" rows="5" >${userContent.board_content}</textarea>
				</div>
				
				<!-- updateVaildate.js -->
				<div class="form-group text-center">
					<button class="btn btn-primary" onClick="validateUpdate();return false;" >수정하기</button>
				</div>
			</form>
		</div>
	</article>            
</body>
</html>