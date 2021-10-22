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

<link rel="stylesheet" type="text/css" href="css/main_style.css">
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
						이 사이트는 게시판을 만들려고 만든 사이트입니다.<br>
						이렇게 넣어보니 이쁘구만<br>
						하단의 커뮤니티 이동 버튼을 통해 만들어 게시판을 열람할 수 있습니다. 버튼을 눌러 게시판을 확인해주세요.
					</div>
				</li>
				<li>
					<button type="button">커뮤니티로 이동 ></button>
				</li>
			</ul>		
		</div>
		
<!-- ===== main_index_02 부분 ===== -->			

		<div class="main_index_02">
			<h1>BOARD</h1>
			<div class="contents01">게시판 만들기를 연습하기 위해, 게시판을 중점으로 웹페이지를 제작하였습니다.</div>
			<div class="board_intro">
				<div class="ex_img">
					<img src="css/img/img_board01.PNG"><br>
				</div>
				<div class="contents02">
					게시판 글쓰기, 글 목록보기, 글 수정하기, 글 삭제하기를 중점으로 구현하였고,
					<br>DB를 다양하게 사용해보기 위해 공지사항과 커뮤니티로 게시판을 구분하였습니다.
					<br>게시판 만들기를 연습해서 한 페이지에 여러 게시판 형태로 구성 되어있는 웹페이지를 만들어 보려 합니다.
				</div>
			</div>
		</div>

        <div class="main_index_02">
			<h1 style="padding-top:0px;">OTHER</h1>
			<div class="contents01">미흡했다고 생각하지만, 이전에 제작하였던 게시판들도 많은 도움이 되었습니다.</div>
			<div class="board_intro">
                <div class="ex_img">
                    <img src="css/img/img_board02.PNG"><br>
				</div>
                <div class="ex_img">
                    <img src="css/img/img_board03.PNG"><br>
				</div>
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