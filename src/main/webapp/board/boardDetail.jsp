<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>

<link href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR&display=swap" rel="stylesheet">
<link href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR&display=swap" rel="stylesheet">
<link href="https://fonts.googleapis.com/css2?family=Jua&display=swap" rel="stylesheet">
<link href="https://fonts.googleapis.com/css2?family=Source+Code+Pro:wght@300&display=swap" rel="stylesheet">

<script src="https://code.jquery.com/jquery-3.6.0.js"></script>
<script src="https://code.jquery.com/ui/1.13.0/jquery-ui.js"></script>

<link rel="stylesheet" type="text/css" href="css/detail_style.css">
<title>Insert title here</title>
</head>
<style>
*{
	text-decoration: none;
	color : #000;
	list-style: none;
	margin : 0;
	padding : 0;
	border-collapse: collapse;
	font-family: 'Noto Sans KR', sans-serif;
}
</style>

<script>

	$(function(){
		$("#bt_del").click(function(){
			var check = confirm("정말 삭제하시겠습니까?");
			if(check == true){
				
				var formData = "unq="+${boardVO.unq};
				
				$.ajax({
					type : "POST",
					data : formData,
					url : "boardDelete.do",
					dataType : "text",
					success : function(data){
						if(data == "1"){
							alert("글이 삭제되었습니다.");
							location="boardList.do";
						}else{
							alert("글 삭제에 실패하였습니다. \n 다시 한번 확인해주세요");
						}
					},
					error : function(){
						alert("오류 발생! /n 관리자에게 문의 바랍니다.");
					},
				});
				
			}
		});
	});
</script>

<body>
	
<div class="wrap">
	
<!-- ===== header 부분 ===== -->
<%@ include file = "/include/board_header.jsp" %>	
		
<!-- ===== main_index_01 부분 ===== -->
		
<!-- 		<div class="main_index_01">
			<ul class="intro">
				<li>
					<h1>사이트 소개</h1>
				</li>
				<li>
					<div class="intro_content">
						이 사이트는 게시판을 만들기 위해 제작한 사이트입니다.<br>
						이렇게 넣어보니 이쁘구만<br>
						하단의 커뮤니티 이동 버튼을 통해 만들어 게시판을 열람할 수 있습니다. 버튼을 눌러 게시판을 확인해주세요.
					</div>
				</li>
				<li>
					<button type="button">커뮤니티로 이동 ></button>
				</li>
			</ul>		
		</div> -->
		
<!-- ===== board_wrap 부분 ===== -->			

		<div class="board_wrap">
			<div class="board_title">
				<strong>상세보기</strong>
				<p>게시글의 내용을 확인하고 수정 및 삭제 또한 할 수 있습니다.</p>
			</div>
			
		<form id="frm">
			<div class="board_write">
				<div class="title">
					<dl>
						<dt>제목</dt>
						<dd>${boardVO.title }</dd>
					</dl>
				</div>
				<div class="info">
					<dl>
						<dt>이름</dt>
						<dd>${boardVO.name }</dd>
					</dl>
					<dl>	
						<dt>등록일</dt>
						<dd>${boardVO.rdate }</dd>
					</dl>
				</div>
				<div class="cont">${boardVO.content}</div>
				
			</div>
			
            <div class="bt_wrap">
                <a href="boardModify.do?unq=${boardVO.unq }" class="bt_mod">수 정</a>
                <a href="boardList.do" >목 록</a>
                <a href="" class="bt_del" id="bt_del"onclick="fn_delete();return false;">삭 제</a>
            </div>
			
		</form>
		</div>
		
<!-- ===== footer 부분 ===== -->	
		<footer>
			<%@ include file = "/include/footer.jsp" %>
		</footer>
		
</div>
	
</body>
</html>