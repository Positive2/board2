<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>게시판 작성</title>
 <meta name="viewport" content="width=device-width, initial-scale=1">

<!-- 부트스트랩 -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js"></script>

</head>
<body>
	<!-- header -->
	<jsp:include page="../commons/header.jsp" />
	
	<article>
		<div class="page-header">
			<div class="col-md-6 col-md-offset-3">
				<h3>글 쓰기 </h3>
			</div>
		</div>
		<div class="col-sm-6 col-md-offset-3">
			<form id="boardWrite" action="board/boardWrite" method="post">
				<!-- id readonly -->
				<div class="form-group">
					<label>ID</label> 
					<input readonly id="id" name="id" type="text"  class="form-control"  value="${session.u_id}">
				</div>
				<!-- 제목 -->
				
				<div class="form-group">
					<label>제목</label> 
					<input id="title" name="title" type="text" class="form-control" placeholder="제목입력">
				</div>
				<!-- 내용 -->
				<div class="form-group">
					<label>내용 </label>
					<textarea id="content"  name ="content" class="form-control" rows="5"  >내용을입력하세요.</textarea>
				</div>
				
				<!-- updateVaildate.js -->
				<div class="form-group text-center">
					<button class="btn btn-primary" onClick="validateWrite();return false;" >수정하기</button>
				</div>
			</form>
		</div>
	</article>          

</body>
</html>