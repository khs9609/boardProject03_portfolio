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

<link rel="stylesheet" type="text/css" href="css/memberCSS/login_style.css">

<script src="https://code.jquery.com/jquery-3.6.0.js"></script>
<script src="https://code.jquery.com/ui/1.13.0/jquery-ui.js"></script>

<title>로그인 페이지</title>
</head>

<script>
	function fn_submit() {
		
			if($("#userid") == ""){
				alert("아이디를 입력해주세요");
				$("#userid").focus();
				return false;
			}
			if($("#pass") == ""){
				alert("패스워드를 입력해주세요");
				$("#pass").focus();
				return false;
			}
			
			var userid = $("#userid").val();
			var pass = $("#pass").val();
			
		  	$.ajax({
				type : "POST",
				data : "userid="+userid+"&pass="+pass, // json전송타입
				url : "memberLoginSub.do",
				dataType : "text", 
				success : function(msg){ 
					if(msg == "ok") {
						alert(userid+"님 로그인되었습니다.")
						location= "boardList.do";
					} else {
						alert("아이디와 패스워드를 다시 확인해주세요.");				
					}
				},
				error : function() { 
					alert("오류발생!"); 
				}
			});
	}
</script>

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
	<%@ include file = "/include/header.jsp" %>
		
		
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
					<li><a href="#" onclick="fn_submit();return false;">로그인</a></li>
					<li><a href="memberWrite.do">회원가입</a></li>
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