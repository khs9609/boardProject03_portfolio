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

<script src="https://code.jquery.com/jquery-1.12.4.js"></script>
<script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
<link rel="stylesheet" href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
<link rel="stylesheet" href="/resources/demos/style.css">

<link rel="stylesheet" type="text/css" href="css/memberCSS/memberWrite_style.css">
<title>회원가입</title>
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

<!-- 카카오 우편번호 찾기 api -->
<script src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
<script>
function post() {
    new daum.Postcode({
        oncomplete: function(data) {
            document.querySelector("#zipcode").value = data.zonecode;
            document.querySelector("#address").value =  data.address
        }
    }).open();
}
</script> 

<script>
	$(function() {
		// 생년월일 선택
	    $( "#birth" ).datepicker({
	      changeMonth: true,
	      changeYear: true,
	      dayNamesMin : ['일','월','화','수','목','금','토'],
	      monthNamesShort : ['1월','2월','3월','4월','5월','6월','7월','8월','9월','10월','11월','12월'],
	      dateFormat : 'yy-mm-dd'
	    });
		
		$("#idCheck").click(function(){
			
			var userid = $.trim( $("#userid").val() );
			if(userid == "") {
				alert("아이디를 입력해주세요");
				$("#userid").focus();
				return false;
			}  
			
			
			/* 중복아이티 체크 버튼 */
 			
 			$.ajax({
				
				type: "POST",
				data : "userid="+userid,
				url: "idCheck.do",
				dataType: "text",
				success: function(msg) {
					if(msg == "ok"){
						alert("사용가능한 아이디입니다.");
					}else{
						alert("이미 사용중인 아이디입니다.");
					}
				},
				error : function() {
					alert("오류 발생 \n 다시 시도 혹은 관리자에게 문의주세요.");
				}
				
			});
			
			
			
		}); 
		 
	
		$("#bt_submit").click(function() {
			
			var userid = $("#userid").val();
			var pass = $("#pass").val();
			var pass_chk = $("#pass_chk").val();
			var name = $("#name").val();
			var phone = $("#phone").val();
			
			
	    	userid = $.trim(userid);
	    	pass = $.trim(pass);
	    	name = $.trim(name);
	    	phone = $.trim(phone);
	    	
			if(userid == ""){
				alert("아이디를 입력해주세요");
				$("userid").focus();
				return false;
			}
			if(pass == ""){
				alert("비밀번호를 입력해주세요");
				$("pass").focus();
				return false;
			}
			if(pass != pass_chk){
				alert("비밀번호가 일치한지 다시 확인해주세요.");
				return false;
			}
			if(name == ""){
				alert("이름을 입력해주세요");
				$("name").focus();
				return false;
			}
			if(phone == ""){
				alert("연락처를 입력해주세요");
				$("phone").focus();
				return false;
			}
			
			if( !$(":input:radio[name=gender]:checked").val() ) {
				alert("성별을 선택해주세요");
				return false;
			}
			
			if(zipcode == ""){
				alert("우편번호를 검색해주세요.");
				return false;
			} 
			
			$("#userid").val(userid);
			$("#pass").val(pass);
			$("#name").val(name);
			$("#phone").val(phone);
			
			var formData = $("#frm").serialize();
			
			$.ajax({
				type : "POST",
				data : formData,
				url : "memberWriteSave.do",
				dataType : "text",
				success : function(result){
					if(result == "ok"){
						alert("가입완료");
						location="memberLogin.do";
					}else{
						alert("가입 실패. \n 다시 한 번 확인해주세요.");
					}
				},
				error : function() {
					alert("오류가 발생했습니다. \n 다시 시도하거나, 관리자에게 문의주세요.");
				}
			});
		}); 
		
		
	});
	

	
		
</script>

<body>
	
<div class="wrap">
	
<!-- ===== header 부분 ===== -->
	<%@ include file = "/include/header.jsp" %>
	
<!-- 	<div class="header_bg">
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
	</div> -->
		
<!-- ===== member_wrap 부분 ===== -->			
	<div class="member_write">
		<form id="frm" name="frm">
			<div class="title, contents01"><strong>회 원 가 입</strong></div>
			
				<div class="main">
					<dl>
						<dt>아이디</dt>
						<dd>
							<input type="text" id="userid" name="userid" placeholder="아이디">
							<button type="button" class="idCheck" id="idCheck">아이디 중복체크</button>
						</dd>
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
				
				<div class="info">
					<dl>
						<dt>이름</dt>
						<dd><input type="text" id="name" name="name" placeholder="이름"></dd>
					</dl>
					<dl>
						<dt>성별</dt>
						<dd>남 <input type="radio" id="gender" name="gender" value="M">&nbsp;&nbsp;&nbsp;여 <input type="radio" id="gender" name="gender" value="F"></dd>
					</dl>
					<dl>
						<dt>생년월일</dt>
						<dd><input type="text" name="birth" id="birth" placeholder="생년월일" readonly></dd>
					</dl>
					<dl>
						<dt>연락처</dt>
						<dd><input type="text" name="phone" id="phone" placeholder="010-0000-0000"></dd>
					</dl>
					<dl>
                        <dt>주소</dt>
                        <dd>
                        	<input type="text" name="zipcode" id="zipcode" placeholder="우편번호 검색을 클릭해주세요" readonly>
                        	<button type="button" class="btn1" id="zipcode_bt" onclick="post();">우편번호 검색</button>
                        	<br>
                        	<input type="text" name="address" id="address" class="address" readonly>
                        </dd>
					</dl>
				</div>
			
			<div class="bt_area">
				<button type="button" id="bt_submit">가입하기</button>
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