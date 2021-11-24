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

<link rel="stylesheet" type="text/css" href="css/List_style.css">
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
<%@ include file = "/include/board_header.jsp" %>	
		
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
					<button type="button" onclick="location='boardList.do' ">커뮤니티로 이동 ></button>
				</li>
			</ul>		
		</div>
		
<!-- ===== board_wrap 부분 ===== -->			

		<div class="board_wrap">
			<div class="board_title">
				<strong>게시판입니다.</strong>
				<p>자유롭게 글을 게시할 수 있는 커뮤니티 입니다. 현재  ${total}개의 글이 작성되어 있습니다.</p>
			</div>
			<div class="board_list">
				<div class="top">
					<div class="num">번호</div>
					<div class="title">제목</div>
					<div class="writer">글쓴이</div>
					<div class="date">작성일</div>
					<div class="count">조회수</div>
				</div>
				
				<c:set var="cnt" value="${rowNum }" />
				
				<c:forEach var="list" items="${list }">
				<div>
					<div class="num">${cnt }</div>
					<div class="title" style="text-align:left"><a href="boardDetail.do?unq=${list.unq }">${list.title }</a></div>
					<div class="writer">${list.name }</div>
					<div class="date">${list.rdate }</div>
					<div class="count">${list.hits }</div>
				</div>
				<c:set var="cnt" value="${cnt-1 }" />
				</c:forEach>
				
			</div>
			
            <div class="bt_wrap">
                <a href="boardWrite.do" class="on">글쓰기</a>
            </div>
            
			<div class="board_page">
				<a href="#" class="bt_prev"><</a>
				<c:forEach var="i" begin="1" end="${totalPage }">
					<a href="boardList.do?viewPage=${i}" class="bt_num">${i}</a>
				</c:forEach>
				<a href="#" class="bt_next">></a>
			</div>
			
			<div class="board_search">
				<form id="frm" name="frm">
					<input type="text" placeholder="검색어를 입력해주세요">
					<a href="#">검색</a>
				</form>
			</div>
			
			
			
		</div>
		
<!-- ===== footer 부분 ===== -->	
		<footer>
			<%@ include file = "/include/footer.jsp" %>
		</footer>
		
</div>
	
</body>
</html>