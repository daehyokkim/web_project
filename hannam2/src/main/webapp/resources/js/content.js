/**
 * 
 */
/**
 * 
 */
function Rewrite(){
  var wt = document.getElementById("writer").value;
  var rd = document.getElementById("reader").value;
  i = document.getElementById("cnt").value;
  if (wt==rd){
  window.open("updatePage?cnt="+i,"_self","");
  }
  else
  alert("NOT! "+wt);
}

function Delete() {
  var wt = document.getElementById("writer").value;
  var rd = document.getElementById("reader").value;
  i = document.getElementById("cnt").value;
  if (wt==rd){
  window.open("deleteNote?cnt="+i,"_self","");
  }
  else
  alert("NOT "+wt);
}

function fc_chk_byte(aro_name,ari_max) {
  var ls_str = aro_name.value;
  var li_str_len = ls_str.length;
  var li_max = ari_max;
  var i = li_byte = li_len = 0;
  var ls_str2 = "";

  for(i=0; i< li_str_len; i++) {
    ls_one_char = ls_str.charAt(i);
    li_byte++;

    if(li_byte <= li_max){
      li_len = i + 1;
   }
}
  
  if(li_byte > li_max) {
    alert( li_max + "byte, 초과 ");
    ls_str2 = ls_str.substr(0, li_len);
    aro_name.value = ls_str2;
    document.sms.char_byte.value = 300;
  }else {
    document.sms.char_byte.value = li_byte;
  }
  aro_name.focus();
}