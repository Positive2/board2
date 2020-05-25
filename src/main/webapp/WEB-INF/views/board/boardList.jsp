<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
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

<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js"></script>
<!--  JavaScript -->
<script type="text/javascript" src="https://code.jquery.com/jquery-3.3.1.min.js"></script>

<script type="text/javascript">
    
$(document).ready(function(){    
    getBoardList();
});

/** 게시판 - 상세 페이지 이동   AWS이용시 앞에 board 추가*/
function goBoardDetail(boardSeq){                
    location.href =  "/boardDetail?boardSeq="+ boardSeq;
}

/** 게시판 - 작성 페이지 이동 */
function goBoardWrite(){        
    location.href = "/boardWrite";
}
    
    function getBoardList(){
    	 
        $.ajax({    
        
            url        : "/board/getBoardList",
            data    : $("#boardForm").serialize(),
            dataType:"JSON",
            cache   : false,
            async   : true,
            type    :"POST",    
            success : function(obj) {
                getBoardListCallback(obj);                
            },           
            error     : function(xhr, status, error) {}
            
         });
    }
    
function getBoardListCallback(obj){
        
        var list = obj;
        var listLen = obj.length;
                
        var str = "";
        
        if(listLen >  0){
            
            for(var a=0; a<listLen; a++){
                
                var boardSeq        = list[a].board_seq; 
                var boardReRef         = list[a].board_re_ref; 
                var boardReLev         = list[a].board_re_lev; 
                var boardReSeq         = list[a].board_re_seq; 
                var boardWriter     = list[a].board_writer; 
                var boardSubject     = list[a].board_subject; 
                var boardContent     = list[a].board_content; 
                var boardHits         = list[a].board_hits;
                var delYn             = list[a].del_yn; 
                var insUserId         = list[a].ins_user_id;
                var insDate         = list[a].ins_date; 
                var updUserId         = list[a].upd_user_id;
                var updDate         = list[a].upd_date;
                
                str += "<tr>";
                str += "<td>"+ boardSeq +"</td>";
                str += "<td onclick='javascript:goBoardDetail("+ boardSeq +");' style='cursor:Pointer'>"+ boardSubject +"</td>";
                str += "<td>"+ boardHits +"</td>";
                str += "<td>"+ boardWriter +"</td>";    
                str += "<td>"+ insDate +"</td>";    
                str += "</tr>";
                
            } 
            
        } else {
            
            str += "<tr>";
            str += "<td colspan='5'>등록된 글이 존재하지 않습니다.</td>";
            str += "<tr>";
        }
        
        $("#tbody").html(str);
    }
    
</script>
</head>
<body>

	<div class="jumbotron text-center">
		<h1>게시판 Made by. 재홍</h1>
		<p>환영합니다!</p>
	</div>

	<div class="container ">
		<h2>게시글 목록</h2>
		<form id="boardForm" name="boardForm">
			<table width="100%" id="table1" class="table table-striped table-hover" >
				<colgroup>
					<col width="10%" />
					<col width="25%" />
					<col width="10%" />
					<col width="15%" />
					<col width="20%" />
				</colgroup>
				<thead>
					<tr>
						<th>글번호</th>
						<th>제목</th>
						<th>조회수</th>
						<th>작성자</th>
						<th>작성일</th>
					</tr>
				</thead>
				<tbody id="tbody">

				</tbody>
			</table>
		</form>
		<div class="float-right">
			<button type="button" class="btn btn-success"
				onclick="javascript:goBoardWrite();">글 작성하기</button>
		</div>
	</div>

</body>
</html>