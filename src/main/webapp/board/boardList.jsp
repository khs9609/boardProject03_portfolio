<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
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

<link rel="stylesheet" type="text/css" href="css/list_style.css">
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
<body>
	
<div class="wrap">
	
<!-- ===== header 부분 ===== -->
		<div class="header_bg">
			<div class="header">
				<ul class="nav_title">
					<li>
						<div class="logo">
							<a href="#">효섭이의 게시판</a>
						</div>
					</li>
					<li><a href="#">공지사항</a></li>
					<li><a href="#">커뮤니티</a></li>
				</ul>
				<ul class="nav_menu">
					<li><a href="">로그인</a></li>
					<li><a href="">회원가입</a></li>
				</ul>
			</div>
			
			<div class="add_text">
				Welcome to this Web site
			</div>
		</div>
		
<!-- ===== main_index_01 부분 ===== -->
		
		<div class="main_index_01">
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
		</div>
		
<!-- ===== board_wrap 부분 ===== -->			

		<div class="board_wrap">
			<div class="board_title">
				<h1>게시판입니다.</h1>
				<p>커뮤니티입니다. 현재 n개의 글이 작성되있다.</p>
			</div>
			<div class="board_list">
				<div class="top">
					<div class="num">조회수</div>
					<div class="title">제목</div>
					<div class="writer">글쓴이</div>
					<div class="date">작성일</div>
					<div class="count">조회수</div>
				</div>
				<div>
					<div class="num">2</div>
					<div class="title">제목이 표시됩니다.</div>
					<div class="writer">홍길동</div>
					<div class="date">2021-10-25</div>
					<div class="count">15</div>
				</div>
				<div>
					<div class="num">3</div>
					<div class="title">제목이 표시됩니다.</div>
					<div class="writer">홍길동</div>
					<div class="date">2021-10-25</div>
					<div class="count">15</div>
				</div>
			</div>
			<div class="board_button">
			
			</div>
		</div>
		
<!-- ===== footer 부분 ===== -->	
		<footer>
			(c)2021 김효섭 Board Content Site <br>
			울산광역시 남구 남구동 남구빌라 123-12 [ tel. 010-6543-9876 ]
		</footer>
		
</div>
	
</body>
</html>