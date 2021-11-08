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

<link rel="stylesheet" type="text/css" href="css/memberCSS/login_style.css">
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
						<a href="main.do">효섭이의 게시판</a>
					</div>
				</li>
				<li><a href="#">공지사항</a></li>
				<li><a href="boardList.do">커뮤니티</a></li>
			</ul>
			<ul class="nav_menu">
				<li><a href="">로그인</a></li>
				<li><a href="">회원가입</a></li>
			</ul>
		</div>
		
	</div>
		
		
<!-- ===== login_wrap 부분 ===== -->			
	<div class="login_wrap">
		<div class="login_left">
		</div>
		<div class="login_right">
			<div class="input_area">
				<input type="text" id="userid" name="userid" placeholder="UserID"> <br>
				<input type="password" id="pass" name="pass" placeholder="Password">
			</div>
			<ul class="bt_area">
				<li><a href="#">로그인</a></li>
				<li><a href="#">회원가입</a></li>
			</ul>
			<ul class="forget_area">
				<li><a href="#">아이디 및 비밀번호를 잊으셨습니까?</a></li>
			</ul>

			
		</div>
	</div>
		
<!-- ===== footer 부분 ===== -->	
	<footer>
			(c)2021 김효섭 Board Content Site <br>
			울산광역시 남구 남구동 남구빌라 123-12 [ Tel. 010-6543-9876 ]
	</footer>
		
</div>
	
</body>
</html>