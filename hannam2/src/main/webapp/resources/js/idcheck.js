/**
 * 
 */
function id_check(){
   $.ajax({
      url : "idCheck",
      type : "post",
      async : false,
      dataType : "text",
      data : $("#id"),
      success : function(ch){
         if(ch == "F"){
            alert("중복된 아이디입니다.");
            $("#idcheck").attr("value","중복확인");
         }
         else if(ch == "T"){
            $("#idcheck").attr("value","사용가능");
            alert("사용가능한 아이디입니다.");
         }
         else
         {
            alert("아이디를 입력하시오.");
            $("#idcheck").attr("value","중복확인");
         }

      },
      error: function(e){
         alert("error");
         }
   })
}

function Gaipcheck(){
   
   var ch = document.querySelector("#idcheck");
   var che = ch.value;
   alert(che);
   if(che == "사용가능"){
      
      alert("회원가입되었습니다.");
      document.formch.submit();
      return true;
   }
   else{
      alert("중복확인 하시오");
   }
   

}