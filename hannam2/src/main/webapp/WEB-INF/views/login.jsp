<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>로그인</title>
<link href="resources/css/style_login.css" rel="stylesheet"/>
<link rel="stylesheet" href="http://code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
<script src="https://code.jquery.com/jquery-1.12.4.js"></script>
<script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>

</head>
<body id="target">
	<section class = "login-form" >
	<h1> OCEAN SCANNER </h1>
	<form action="/login" method="post">
			<div class="int-area">
				<input type="text" name="id" id="id" autocomplete="off" required>
				<label for="id">아이디</label>		
			</div>
			
			<div class="int-area">	
				<input type="password" name="pw" id="pw" autocomplete="off" required>
				<label for="pw">비밀번호</label>
			</div>
			<div class="btn-area">
				<button type="submit" id="btn">로그인</button>
			</div>
			
	</form>
		<div class="caption">
			<a href="signup">회원가입</a>
		</div>
		<div class="caption">
			<a href="findpw">비밀번호 찾기</a>
		</div>
	</section> 
</body>
</html>