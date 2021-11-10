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

<link rel="stylesheet" type="text/css" href="css/memberCSS/memberWrite_style.css">
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
	<div class="create_wrap">
		<form id="frm" name="frm">
			<div class="title"><strong>회 원 가 입</strong></div>
			
				<div class="userid_title">
					<dl>
						<dt>아이디</dt>
						<dd><input type="text" id="userid" name="userid" placeholder="아이디"></dd>
					</dl>
					<dl>
						<dt>비밀번호</dt>
						<dd><input type="password" id="pass" name="pass" placeholder="비밀번호"></dd>
					</dl>
					<dl>
						<dt>비밀번호확인</dt>
						<dd><input type="password" id="pass_chk" name="pass_chk" placeholder="비밀번호 확인"></dd>
					</dl>
				</div>
				
				<div class="userid_info">
					<dl>
						<dt>이름</dt>
						<dd><input type="text" id="name" name="name" placeholder="이름*"></dd>
					</dl>
					<dl>
						<dt>성별</dt>
						<dd>남<input type="radio" id="gender" name="gender" value="M">, 여<input type="radio" id="gender" name="gender" value="F"></dd>
					</dl>
					<dl>
						<dt>생년월일</dt>
						<dd><input type="text" name="birth" id="birth" placeholder="생년월일" readonly></dd>
					</dl>
					<dl>
						<dt>연락처</dt>
						<dd><input type="text" name="birth" id="birth" placeholder="010-0000-0000"></dd>
					</dl>
					<dl>
                        <dt>주소</dt>
                        <dd>
                        	<input type="text" name="zipcode" id="zipcode" readonly>
                        	<button type="button" class="btn1" id="zipcode_bt">우편번호 검색</button>
                        	<br>
                        	<input type="text" name="address" id="address" class="address" readonly>
                        </dd>
					</dl>
				</div>
			
			<div class="bt_area">
				<button type="button">가입하기</button>
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