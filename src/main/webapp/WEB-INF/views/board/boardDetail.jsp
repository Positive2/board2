<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">

<title>게시판 상세</title>

<!-- 부트스트랩 -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js"></script>
<!--  JavaScript -->
<script type="text/javascript" src="https://code.jquery.com/jquery-3.3.1.min.js"></script>

</head>


<body>
	<!-- header -->
	<jsp:include page="../commons/header.jsp"/>
	
	<article>
		<div class="page-header">
			<div class="col-md-6 col-md-offset-3">
				<h3>게시글 상세 </h3>
			</div>
		</div>
		<div class="col-sm-6 col-md-offset-3">
				<!-- 글번호 readonly -->
				<div class="form-group">
					<label>글번호</label> 
					<input readonly id="board_num" name="board_num" type="text" class="form-control" value="${list.board_num}" placeholder="제목입력">
				</div>
	
				<!-- id readonly -->
				<div class="form-group">
					<label>작성자</label> 
					<input readonly id="id" name="id" type="text"  class="form-control"  value="${list.board_writer}">
				</div>
				
				<!-- 제목 -->
				<div class="form-group">
					<label>제목</label> 
					<input readonly id="title" name="title" type="text" class="form-control" placeholder="제목입력" value="${list.board_title}">
				</div>
				
				<!-- 등록일 -->
				<div class="form-group">
					<label>등록일</label> 
					<input readonly id="board_reg_date" name="board_reg_date" type="text" class="form-control" placeholder="제목입력"
					value ="<fmt:formatDate value="${list.board_reg_date }"
						pattern="yyyy년 MM월 dd일  HH시 mm분" />">
				</div>
				
				<!-- 조회수 -->
				<div class="form-group">
					<label>조회수</label> 
					<input readonly id="board_hit" name="board_hit" type="text" class="form-control" placeholder="제목입력" value="${list.board_hit}">
				</div>
				
			
				<!-- 내용 -->
				<div class="form-group">
					<label>내용 </label>
					<textarea readonly id="content"  name ="content" class="form-control" rows="5" >${list.board_content}</textarea>
				</div>
				
				<div class="form-group text-center">
					<button type="button" class="btn btn btn-secondary" onclick="location.href='getBoardList'">메인화면</button>
					<button type="button" class="btn btn btn-primary" onclick="location.href='boardUpdate?board_num=${list.board_num}'">수정하기</button>
					<button type="button" class="btn btn-danger" onclick="">삭제하기</button>
				</div>
		</div>
	</article>    

</body>
</html>