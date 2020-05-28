<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
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
	
	<div class="container-fluid text-center center-block">
		<h2>게시글 상세</h2>
		<table border="1" style="margin: 0 auto;">
			<tr>
				<td>글번호</td>
				<td>${list.board_num}</td>
				<td>조회수</td>
				<td>${list.board_hit}</td>
			</tr>
			<tr>
				<td colspan="3">제목</td>
				<td>${list.board_title}</td>
			</tr>
			<tr>
				<td>작성자</td>
				<td>${list.board_writer }</td>
				<td>등록일</td>
				<td><fmt:formatDate value="${list.board_reg_date }"
						pattern="yyyy년 MM월 dd일  HH시 mm분" /></td>
			</tr>
			<tr>
				<td colspan="4">내용</td>
			</tr>
			<tr>
				<td colspan="4">${list.board_content }
			</tr>
			
				
		</table>
		
		
		<div class="btn_right mt15">
			<button type="button" class="btn black mr5" onclick="location.href='getBoardList'">메인화면</button>
			<button type="button" class="btn black mr5" onclick="location.href='boardUpdate?board_num=${list.board_num}'">수정하기</button>
			<button type="button" class="btn black" onclick="">삭제하기</button>
		</div>
	</div>

</body>
</html>