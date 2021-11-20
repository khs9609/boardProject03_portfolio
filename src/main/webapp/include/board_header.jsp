<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>board_header</title>
<script src="https://code.jquery.com/jquery-3.6.0.js"></script>
<script src="https://code.jquery.com/ui/1.13.0/jquery-ui.js"></script>
</head>

<script>
	$(function(){
		
		$("#logout_link").click(function(){
			if(confirm("정말로 로그아웃하시겠습니까?") ){
				location="logout.do";
			}
		});
	});
</script>
<body>
<%
	String USERID = (String)session.getAttribute("SessionUserID");
%>
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
				<% if(USERID == null){ %>
					<li><a href="memberLogin.do">로그인</a></li>
					<li><a href="memberWrite.do">회원가입</a></li>
				<%
				}else{
				%>
					<li><a href="" id="logout_link">로그아웃</a></li>
					<li><a href="#">회원정보수정</a></li>
				<%
				}
				%>
				</ul>
			</div>
			
			<div class="add_text">
				Welcome to this Web site
			</div>
		</div>
</body>
</html>