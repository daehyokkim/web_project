<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title> 회원가입 </title>
	<link href="http://code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css" rel="stylesheet"/>
	<link href="resources/css/style_login.css" rel="stylesheet"/>
	<script src="https://code.jquery.com/jquery-1.12.4.js"></script>
  	<script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
  	<script src="resources/js/idcheck.js"></script>
</head>
<body id="target">
<form action="/insertUser" method="POST" onsubmit="Gaipcheck();return false">
	<section class="login-form">
		<h1>회원가입</h1>
			<div class="int-area">
				<input type="text" name="id" id="id"
				autocomplete="off" required>
				<label for="id">아이디</label>	
			</div>
					
			<div class="check">
			<input type="button" class="idcheck" name="idcheck" id="idcheck" onclick="id_check()" value="중복확인">
			</div>
			
			<div class="int-area">
				<input type="password" name="pw" id="pw"
				autocomplete="off" required>
				<label for="pw">비밀번호</label>
			</div>
			<div class="int-area">
				<input type="text" name="name" id="name"
				autocomplete="off" required>
				<label for="name">이름</label>
			</div>
			 <div class="int-area">
          		<input type="text" name="country" id="country" 
          		autocomplete="off" required>
  				<label for="id">국적</label>
        	</div>
	        <div class="int-area">
	          <input type="tel" name="phone" id="phone" 
	          autocomplete="off"  required>
	  				<label for="id">전화번호 11자리</label>
	        </div>
	        <div class="int-area">
	          <input type="date" name="birth" maxlength="6" id="birth" 
	          autocomplete="off" required>
	          <label for="id"></label>
	        </div>
				
			<div class="btn-area">
					<button type="submit" id="btn">확인</button>
			</div>
	</section>
</form>
</body>
</html>