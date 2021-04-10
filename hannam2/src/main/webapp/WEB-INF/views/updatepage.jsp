<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en" dir="ltr">
<head>
    <meta charset="utf-8">
    <title>내정보 변경</title>
    <link rel="stylesheet" href="http://code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
    <script src="https://code.jquery.com/jquery-1.12.4.js"></script>
    <script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
    <script src="resources/js/mypage.js"></script>

  	<script type="text/javascript">
  	function update(){
  		$.ajax({
  			url : "mypageupdate",
  			type : "post",
  			async : false,
  			dataType : "text",
  			data : $("#mydata").serialize(),
  			success : function(ch){
  				if(ch == "T"){
  					alert("회원님의 정보가 변경되었습니다.");
  					window.close();
  				}
  				else
  				{
  					alert("현재비밀번호가 올바르지 않습니다.");
  				}

  			},
  			error: function(e){
  				alert("error");
  				}
  		})
  	}
  	</script>
  	<style>
   legend{
      text-align: center;
      padding-bottom: 1%;
      font-size:25px;
   }
     fieldset{
      margin-left: 10%;
      margin-right: 10%;
      padding-bottom:3%;
      margin-top:1%;
   }
    #label{float:left;
           font-size: 14pt;
           width:100%;}
    input[type="text"],
   input[type="password"],
   input[type="email"],
   input[type="tel"]{float:left;
        font-size: 14pt;
        width:90%;
        height:100%;
        }
   div{margin-top:5%;
      margin-bottom:5%;}
   .btnset{margin-bottom:0;}
   </style>
   
</head>
  <body>
   <h2 style="text-align:center;">마이페이지</h2>
    <form class="mydata" id="mydata" action="" method="post">
       <fieldset>
          <legend>내 정보 수정</legend>
         <input type="hidden" name="id" id ="id" value="${User.id}">
         <div>
          <label id="label" for="username">이름</label>
          <input type="text" name="name" id="name" size="35" value="${User.name}">
          </div>
          <div>
          <label id="label" for="userbirth">생년월일</label>
          <input type="text" name="birth" id="birth" size="35" value="${User.birth}" readonly="readonly">
          </div>
          <div>
          <label id="label" for="userphone">전화번호</label>
          <input  type="tel" name="phone" id="phone" size="35" maxlength="20" value="${User.phone}">
          </div>
         <br><br>

          <div id="mypwd">
          <input type="button" name="pwdchange" id="pwdchange" value="비밀번호 변경" onclick="Repwd()">
          </div>
         <div class=btnset>
          <input type="button" name="change" id="change" value="수정" onclick="update()">
          <input type="reset" name="reset" id="reset" value="리셋">
          <input type="button" name="cancel" id="cancel" value="취소" onclick="window.close()">
          </div>
       </fieldset> 
   
    </form>
  </body>
</html>
