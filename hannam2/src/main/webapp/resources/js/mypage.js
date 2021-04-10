/**
 * 
 */
function Remydata(){
  window.open("mypageUpdate","개인정보수정","top = 50, left = 100, width = 460, height = 550, location = yes");

}
function Repwd(){
	 
    var mydata = document.querySelector("#mypwd");
    var mypwd = document.createElement("div");
    var pwdchange = document.getElementById("pwdchange");

    var nowpwd = document.createElement("input");
    var newpwd = document.createElement("input");
    var newpwdch = document.createElement("input");
    var nowla = document.createElement("label");
    var newla = document.createElement("label");
    var newchla = document.createElement("label");
    var br1 = document.createElement("br");
    var br2 = document.createElement("br");
    var br3 = document.createElement("br");
    var br4 = document.createElement("br");
    var br5 = document.createElement("br");
    var br6 = document.createElement("br");
    var br7 = document.createElement("br")
    var nowlatxt = document.createTextNode("현재비밀번호");
    var newlatxt = document.createTextNode("새 비밀번호");
    var newchlatxt = document.createTextNode("새 비밀번호 확인");
    var nowpwdtype = document.createAttribute("type")
    var newpwdtype = document.createAttribute("type")
    var newpwdchtype = document.createAttribute("type")
    nowla.appendChild(nowlatxt);
    newla.appendChild(newlatxt);
    newchla.appendChild(newchlatxt);

    nowpwdtype.value = "password";
    newpwdtype.value = "password";
    newpwdchtype.value = "password";

    nowla.setAttribute("id","label");
    newla.setAttribute("id","label");
    newchla.setAttribute("id","label");

    nowpwd.setAttribute("type","password");
    nowpwd.setAttribute("size","35");
    nowpwd.setAttribute("minlength","8");
    nowpwd.setAttribute("id","pw");
    nowpwd.setAttribute("name","pw");
    nowpwd.setAttribute("placeholder","현재 비밀번호");

    newpwd.setAttribute("type","password");
    newpwd.setAttribute("size","35");
    newpwd.setAttribute("minlength","8");
    newpwd.setAttribute("id","pw2");
    newpwd.setAttribute("name","pw2");
    newpwd.setAttribute("placeholder","숫자,영문자,특수문자 조합 8자리 이상");

    newpwdch.setAttribute("type","password");
    newpwdch.setAttribute("size","35");
    newpwdch.setAttribute("minlength","8");
    newpwdch.setAttribute("id","newpwdch");
    newpwdch.setAttribute("name","newpwdch");
    newpwdch.setAttribute("placeholder","숫자,영문자,특수문자 조합 8자리 이상");

    mypwd.setAttribute("id","pwdpage");
    mypwd.setAttribute("name","pwdpage");

    mypwd.appendChild(nowla);
    mypwd.appendChild(br1);
    mypwd.appendChild(nowpwd);
    mypwd.appendChild(br2);
    mypwd.appendChild(newla);
    mypwd.appendChild(br3);
    mypwd.appendChild(newpwd);
    mypwd.appendChild(br4);
    mypwd.appendChild(newchla);
    mypwd.appendChild(br5);
    mypwd.appendChild(newpwdch);
    mypwd.appendChild(br6);
    mypwd.appendChild(br7);


    mydata.insertBefore(mypwd,mydata.children[0]);
    pwdchange.value = "비밀번호 변경 취소";
    pwdchange.setAttribute("onclick","cancelpwd()");
  }
  function cancelpwd(){

    var mypwd = document.querySelector("#mypwd");
    var pwdpage = document.querySelector("#pwdpage");
    var pwdchange = document.getElementById("pwdchange");
    mypwd.removeChild(pwdpage);
    pwdchange.value = "비밀번호 변경";
    pwdchange.setAttribute("onclick","Repwd()")

  }
function passwordcheck(){
  var nowpwd = document.getElementById("pw").value;
  var newpwd = document.getElementById("pw2").value;
  var newpwdch = document.getElementById("newpwdch").value;
  var x=0;
  var y=0;
  var z=0;
  var numcheck = ["0","1","2","3","4","5","6","7","8","9"];
  var alcheck = ["a","b","c","d","e","f","g","h","i","j","k","l","m","n","o","p","q","r","s","t","u","v","w","x","y","z",
                "A","B","C","D","E","F","G","H","I","J","K","L","M","N","O","P","Q","R","S","T","U","V","W","X","Y","Z"];
  var stcheck = ["!","@","#","$","%","^","&","*","~","-","_","+","=",":",";","<",">",",",".","?","/"];

  if (nowpwd == newpwd){
    alert("현재비밀번호와 같습니다.");
  }
  else if(newpwd != newpwdch){
    alert("새 비밀번호를 다시 확인해주세요.");
  }
  else{
    for(var i=0; i<=newpwd.length; i++){
        if (numcheck.indexOf(newpwd[i])>=0) {
          x++;
        }
        else if (alcheck.indexOf(newpwd[i])>=0){
          y++;
        }
        else if (stcheck.indexOf(newpwd[i])>=0){
          z++;
        }

    }
    var sum=x+y+z;
    if((x != 0) && (y != 0) && (z != 0) ){
      if(sum==newpwd.length){
        alert("비밀번호가 변경되었습니다.");
      }
    }
    else{
      if(x==0){
          alert("비밀번호에 숫자를 넣어주세요.");
      }
      else if(y==0){
          alert("비밀번호에 영문자를 넣어주세요.");
      }
      else if(z==0){
          alert("비밀번호에 특수문자를 넣어주세요.");
      }
    }
  }
    //alert(numcheck.indexOf(newpwd[0]));
}