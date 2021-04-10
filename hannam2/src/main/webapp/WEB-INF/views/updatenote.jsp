<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<html lang="en" dir="ltr">
  <head>
    <meta charset="utf-8">
    <title>게시글 작성</title>
  	<script src="resources/js/content.js"></script>
  	<script src="resources/js/jquery.min.js"></script>
    <script src="resources/js/skel.min.js"></script>
    <script src="resources/js/skel-layers.min.js"></script>
    <script src="resources/js/init.js"></script>
     
  </head>
  <body>
      		<!-- Header -->
			<header id="header" class="skel-layers-fixed">
				<h1><a href="main">OCEAN SCANNER</a></h1>
				<nav id="nav">
					<ul>
						<li><a href="introduce">소개</a></li>
						<li><a href="route">항로검색</a></li>
						<li><a href="note">자유게시판</a></li>
						<li><a href="mypage">마이페이지</a></li>
						<li><a href="logout" class="button special">로그아웃</a></li>
					</ul>
				</nav>
			</header>

	<body>
  <h3>자유게시판</h3>
  	<fieldset>
  		<legend>글수정</legend>
  		<form method="post" name="sms" action="updateNote">
  		<p>제목</p><br>
  		<input type="text" name="title" placeholder="제목을 작성해 주세요." size="80" maxlength="100" value="${note.title}" ><br>
  		<p>내용</p>
  		<textarea id="board"  name="main" rows="12" cols="52" maxlength="300" placeholder="최대 300자까지 입력 가능합니다." onkeyup="fc_chk_byte(this, 300)">${note.main}</textarea><br>
  		<input type="text" size="2" name="char_byte" id="char_byte" readonly> / 300 byte <br>
  		<input name="cnt" type="hidden" value="${note.cnt}">
  		<span>첨부파일 : <input type="file" name="" value="파일 찾기"></span>
  		<button type="submit">수정</button>
  </form>
  </fieldset>
	</body>	
	<footer id="footer">
			<div class="container">
				<div class="row double">
					<div class="6u">
						<div class="row collapse-at-2">
							<div class="6u">
							
							</div>
							<div class="6u">
							
							</div>
						</div>
					</div>
							<div class="6u">
							
							</div>
				</div>
			<ul class="copyright">
				<li>Hannam Department of Computer Communication Unmanned Technology CheonTaeManSang</li>
				<li>Address: <a href="http://www.hannam.ac.kr/about/about_1001.html">한남대학교</a> | 대전광역시 대덕구 한남로 70</li>
				<li>Extension Number: 042-0000-0000</li>
			</ul>
			</div>
	</footer>

  </body>
</html>
