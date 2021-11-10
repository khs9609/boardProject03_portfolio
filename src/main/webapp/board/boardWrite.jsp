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

<link rel="stylesheet" type="text/css" href="css/write_style.css">
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
	function fn_submit() {
		
		if($("#title").val() == "") {
			alert("제목을 입력해주세요");
			$("#title").focus();
			return false;
		}
		if($("#name").val() == "") {
			alert("이름을 입력해주세요");
			$("#name").focus();
			return false;
		}
		if($("#pass").val() == "") {
			alert("패스워드을 입력해주세요");
			$("#pass").focus();
			return false;
		}
		if($("#content").val() == "") {
			alert("내용을 입력해주세요");
			$("#content").focus();
			return false;
		}
		
		var formData = $("#frm").serialize();
		
		$.ajax({
			type : "POST",
			data : formData,
			url : "boardWriteSave.do",
			dataType : "text",
			success : function(data){
				if(data == "ok"){
					alert("글이 등록되었습니다.");
					location="boardList.do";
				}else{
					alert("글 등록에 실패하였습니다. \n 다시 한번 확인해주세요");
				}
			},
			error : function(){
				alert("오류 발생! /n 관리자에게 문의 바랍니다.");
			},
		});
		
	}

</script>




<body>
	
<div class="wrap">
	
<!-- ===== header 부분 ===== -->
		<div class="header_bg">
			<div class="header">
				<ul class="nav_title">
					<li>
						<div class="logo">
							<a href="main.do">효섭이의 게시판</a>
						</div>
					</li>
					<li><a href="#">공지사항</a></li>
					<li><a href="boardList.do">커뮤니티</a></li>
				</ul>
				<ul class="nav_menu">
					<li><a href="memberLogin.do">로그인</a></li>
					<li><a href="memberWrite.do">회원가입</a></li>
				</ul>
			</div>
			
			<div class="add_text">
				Welcome to this Web site
			</div>
		</div>
		
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
				<strong>글쓰기</strong>
				<p>작성된 게시글이 커뮤니티의 게시글로 게시됩니다.</p>
			</div>
			
		<form id="frm">
			<div class="board_write">
				<div class="title">
					<dl>
						<dt>제목</dt>
						<dd><input type="text" name="title" id="title" placeholder="제목 입력"></dd>
					</dl>
				</div>
				<div class="info">
					<dl>
						<dt>이름</dt>
						<dd><input type="text" name="name" id="name" placeholder="이름 입력"></dd>
					</dl>
					<dl>	
						<dt>패스워드</dt>
						<dd><input type="password" name="pass" id="pass" placeholder="패스워드 입력"></dd>
					</dl>
				</div>
				<div class="cont">
					<textarea placeholder="내용 입력" name="content" id="content"></textarea>
				</div>
				
			</div>
			
            <div class="bt_wrap">
                <a href="" class="on" onclick="fn_submit();return false;">등 록</a>
                <a href="boardList.do" >목 록</a>
            </div>
			
		</form>
		</div>
		
<!-- ===== footer 부분 ===== -->	
		<footer>
			(c)2021 김효섭 Board Content Site <br>
			울산광역시 남구 남구동 남구빌라 123-12 [ Tel. 010-6543-9876 ]
		</footer>
		
</div>
	
</body>
</html>