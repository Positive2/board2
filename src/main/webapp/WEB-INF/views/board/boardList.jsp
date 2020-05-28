<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!-- jstl foreach 사용을 위함 -->
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!-- fomatting formatDate태그 사용을 위함(날짜나 시간 포맷방식지정) -->
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

<title>게시판 목록</title>


<style type="text/css">
#table1:hover tbody tr:hover td {
    background: green;
    color: black;
}
</style>

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
	
	<div class="container">
		<h2>게시글 목록</h2>
		<form id="boardForm" name="boardForm">
			<table width="100%" id="table1" class="table table-striped table-hover" >
				<colgroup>
					<col width="10%" />
					<col width="25%" />
					<col width="10%" />
					<col width="15%" />
					<col width="20%" />
					<col width="20%" />
				</colgroup>
				<thead>
					<tr>
						<th>글번호</th>
						<th>제목</th>
						<th>작성자</th>
						<th>조회수</th>
						<th>추천</th>
						<th>등록일</th>
					</tr>
				</thead>
				<tbody>
					<c:forEach items="${list}" var="list">
						<tr onClick="location.href='getBoardDetail?board_num=${list.board_num}'">
							<td >${list.board_num}</td>
							<td>${list.board_title}</td>
							<td>${list.board_writer}</td>
							<td>${list.board_hit}</td>
							<td>${list.board_recommend}</td>							
							<td>
								<fmt:formatDate value="${list.board_reg_date}" pattern ="yyyy년 MM월 dd일"/>
							</td>
						</tr>
					</c:forEach>
				</tbody>
			</table>
		</form>
		<div class="float-right">
			<button type="button" class="btn btn-success"
				onclick="location.href='boardWrite'">글 작성하기</button>
		</div>
	</div>
	
	<!-- footer -->
	<jsp:include page="../commons/footer.jsp"/>
	
</body>
</html>