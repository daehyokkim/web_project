<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html lang="en" dir="ltr">
  <head>
  
    <meta charset="utf-8">
    <title>비밀번호 찾기</title>
 <!--  <script type="text/javascript" src="resources/js/idcheck.js"> </script>
   -->  
   
    <link rel="stylesheet" type="text/css" href="resources/css/style_login.css">
    <script src="jquery-3.4.1.js"></script>
    <link rel="stylesheet" href="http://code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
    <script src="https://code.jquery.com/jquery-1.12.4.js"></script>
    <script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
	<script src="resources/js/idcheck.js"></script> 
   <script type="text/javascript">
   function changepw(){

	   var id =document.getElementById("id").value;
	   var name = document.getElementById("name").value;
	   var pw = document.querySelector("#pw");
	   var btn = document.querySelector("#btn");
	   var en = ["a","b","c","d","e","f","g","h","i","j","k","l","m","n","o","p","q","r","s","t","u","v","w","x","y","z",
	                 "A","B","C","D","E","F","G","H","I","J","K","L","M","N","O","P","Q","R","S","T","U","V","W","X","Y","Z"];
	   var no = ["0","1","2","3","4","5","6","7","8","9"];
	   var st = ["!","@","#","$","%","^","&","*","~","-","_","+","=",":",";","<",">",",",".","?","/"];
	   var newpw = "";
	   var t = "";

	   var s=0;
	   for(var i=0; i<8; i++){
	     var ran = Math.floor(Math.random() * 3);;
	     if(ran==0){
	       s = Math.floor(Math.random() * 52);
	       t = en[s];
	     }
	     else if(ran==1){
	       s = Math.floor(Math.random() * 10);
	       t = no[s];
	     }
	     else if(ran==2){
	       s = Math.floor(Math.random() * 20);
	       t = st[s];
	     }
	     newpw = newpw + t;
	   }
	   if(id == "" || name == ""){
		    alert("아이디혹은 이름을 확인해주세요.");
		  }
		  else{
		  pw.setAttribute("value",newpw);
		  btn.setAttribute("type","submit");
		  btn.setAttribute("value","확인");
		  btn.setAttribute("onclick","");
		  alert("임시비밀번호는 "+newpw+"입니다.");
		  }
	 }
	 		
   </script>
   </head>
  <body id="target">
    <section class="login-form">
      <h1>비밀번호 찾기</h1>
      <form action="find" method="post" >
         <div class="int-area">
            <input type="text" name="id" id="id"
            autocomplete="off" required>
            <label for="id">아이디</label>
         </div>
         <div class="int-area">
            <input type="text" name="name" id="name"
            autocomplete="off" required>
            <label for="id">이름</label>
         </div>
          <div class="int-area">
            <input type="hidden" name="pw" id="pw"
            autocomplete="off" readonly>
            
         </div>
         <div class="btn-area">
            <button type="submit" name="btn" id="btn" onclick="changepw()">확인</button>
         </div>
      </form>
   </section>
</body>

</html>