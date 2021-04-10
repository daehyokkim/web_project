/**
 * 
 */
function SearchCountryS(){
  var startcity = document.querySelector("#demenu");
  var startpos = document.getElementById("decon").value;

  // startpos에 새로운 값을 넣기 위함 => 표기오류라 startcity로 고치는 걸 요망.
  // k는 원래 startpos로 나라 value를 가져와서 해당되는 나라에 도시값을 넣기 위함.
  var korea = ["Busan"]; //그냥 나라는 id를 만들기 위한 영문
  var koreako = ["부산"]; //나라에ko를 븥인 건 한글로 정의내림을 뜻함.
  var china = ["Ningbo","Shanghai","Shenzhen","Qingdao"];
  var chinako = ["닝보","상하이","선전","칭다오"];
  var hongkong = ["Hong Kong"]; // 홍콩은 나라와 도시 이름이 같아서 c를 붙여서 구별함.
  var hongkongko = ["홍콩"];
  var taiwan = ["Kaohsiung","Keelung","Taichung"];
  var taiwanko = ["가오슝","지룽","타이중"];
  var japan = ["Osaka","Kobe","Tokyo","Nagoya"];
  var japanko = ["오사카","고베","도쿄","나고야"];
  var thailand = ["Laem Chabang","Bangkok"];
  var thailandko = ["램차방","방콕"];
  var singapore = ["Singapore"];
  var singaporeko = ["싱가포르"];
  var indonesia = ["Jakarta"];
  var indonesiako = ["자카르타"];
  var india = ["Chennai"];
  var indiako = ["첸나이"];
  var vietnam = ["Haiphong","Ho Chi Minh City"];
  var vietnamko = ["하이퐁","호치민 시티"];
  var philippine = ["Manila South Port","Manila North Port"];
  var philippineko = ["마닐라 남항","마닐라 북항"];
  //startpos.removeChild(startpos.children[0])
  while(startcity.children[0]!=null){
  startcity.removeChild(startcity.children[0]);
  }
  //이전에 생성된 내용들을 지움. 덧씌워지는 것을 방지.
  if( startpos == "Korea"){
    for(var i=0; i<korea.length; i++){
      var stcity = document.createElement("option")
      var stcitytxt = document.createTextNode(koreako[i]);
      stcity.setAttribute("id",korea[i]);
      stcity.setAttribute("value",korea[i]);
      stcity.appendChild(stcitytxt);
      startcity.appendChild(stcity);
      }

  }
  else if (startpos =="China"){
    for(var i=0; i<china.length; i++){
      var stcity = document.createElement("option")
      var stcitytxt = document.createTextNode(chinako[i]);
      stcity.setAttribute("id",china[i]);
      stcity.setAttribute("value",china[i]);
      stcity.appendChild(stcitytxt);
      startcity.appendChild(stcity);
      }
  }
  else if (startpos =="HongKong"){
    for(var i=0; i<hongkong.length; i++){
      var stcity = document.createElement("option")
      var stcitytxt = document.createTextNode(hongkongko[i]);
      stcity.setAttribute("id",hongkong[i]);
      stcity.setAttribute("value",hongkong[i]);
      stcity.appendChild(stcitytxt);
      startcity.appendChild(stcity);
      }
  }
  else if (startpos == "Taiwan"){

  for(var i=0; i<taiwan.length; i++){
    var stcity = document.createElement("option")
    var stcitytxt = document.createTextNode(taiwanko[i]);
    stcity.setAttribute("id",taiwan[i]);
    stcity.setAttribute("value",taiwan[i]);
    stcity.appendChild(stcitytxt);
    startcity.appendChild(stcity);
    }//반복문으로 불러옴.
  }
  else if (startpos == "Japan"){

  for(var i=0; i<japan.length; i++){
    var stcity = document.createElement("option")
    var stcitytxt = document.createTextNode(japanko[i]);
    stcity.setAttribute("id",japan[i]);
    stcity.setAttribute("value",japan[i]);
    stcity.appendChild(stcitytxt);
    startcity.appendChild(stcity);
    }
  }
  else if (startpos == "Thailand"){

  for(var i=0; i<thailand.length; i++){
    var stcity = document.createElement("option")
    var stcitytxt = document.createTextNode(thailandko[i]);
    stcity.setAttribute("id",thailand[i]);
    stcity.setAttribute("value",thailand[i]);
    stcity.appendChild(stcitytxt);
    startcity.appendChild(stcity);
    }
  }
  else if (startpos == "Singapore"){

  for(var i=0; i<singapore.length; i++){
    var stcity = document.createElement("option")
    var stcitytxt = document.createTextNode(singaporeko[i]);
    stcity.setAttribute("id",singapore[i]);
    stcity.setAttribute("value",singapore[i]);
    stcity.appendChild(stcitytxt);
    startcity.appendChild(stcity);
    }
  }
  else if (startpos == "Indonesia"){

  for(var i=0; i<indonesia.length; i++){
    var stcity = document.createElement("option")
    var stcitytxt = document.createTextNode(indonesiako[i]);
    stcity.setAttribute("id",indonesia[i]);
    stcity.setAttribute("value",indonesia[i]);
    stcity.appendChild(stcitytxt);
    startcity.appendChild(stcity);
    }
  }
  else if (startpos == "India"){

  for(var i=0; i<india.length; i++){
    var stcity = document.createElement("option")
    var stcitytxt = document.createTextNode(indiako[i]);
    stcity.setAttribute("id",india[i]);
    stcity.setAttribute("value",india[i]);
    stcity.appendChild(stcitytxt);
    startcity.appendChild(stcity);
    }
  }
  else if (startpos == "Vietnam"){

  for(var i=0; i<vietnam.length; i++){
    var stcity = document.createElement("option")
    var stcitytxt = document.createTextNode(vietnamko[i]);
    stcity.setAttribute("id",vietnam[i]);
    stcity.setAttribute("value",vietnam[i]);
    stcity.appendChild(stcitytxt);
    startcity.appendChild(stcity);
    }
  }
  else if (startpos == "Philippine"){

  for(var i=0; i<philippine.length; i++){
    var stcity = document.createElement("option")
    var stcitytxt = document.createTextNode(philippineko[i]);
    stcity.setAttribute("id",philippine[i]);
    stcity.setAttribute("value",philippine[i]);
    stcity.appendChild(stcitytxt);
    startcity.appendChild(stcity);
    }
  }
}
function SearchCountryF(){
  var finishcity = document.querySelector("#armenu");
  var finishpos = document.getElementById("arcon").value;
  // startpos에 새로운 값을 넣기 위함 => 표기오류라 startcity로 고치는 걸 요망.
  // k는 원래 startpos로 나라 value를 가져와서 해당되는 나라에 도시값을 넣기 위함.
  
  var korea = ["Busan"]; //그냥 나라는 id를 만들기 위한 영문
  var koreako = ["부산"]; //나라에ko를 븥인 건 한글로 정의내림을 뜻함.
  var china = ["Ningbo","Shanghai","Shenzhen","Qingdao"];
  var chinako = ["닝보","상하이","선전","칭다오"];
  var hongkong = ["Hong Kong"]; // 홍콩은 나라와 도시 이름이 같아서 c를 붙여서 구별함.
  var hongkongko = ["홍콩"];
  var taiwan = ["Kaohsiung","Keelung","Taichung"];
  var taiwanko = ["가오슝","지룽","타이중"];
  var japan = ["Osaka","Kobe","Tokyo","Nagoya"];
  var japanko = ["오사카","고베","도쿄","나고야"];
  var thailand = ["Laem chabang","Bangkok"];
  var thailandko = ["램차방","방콕"];
  var singapore = ["Singapore"];
  var singaporeko = ["싱가포르"];
  var indonesia = ["Jakarta"];
  var indonesiako = ["자카르타"];
  var india = ["Chennai"];
  var indiako = ["첸나이"];
  var vietnam = ["Haiphong","Ho Chi Minh City"];
  var vietnamko = ["하이퐁","호치민 시티"];
  var philippine = ["Manila South Port","Manila North Port"];
  var philippineko = ["마닐라 남항","마닐라 북항"];
  //startpos.removeChild(startpos.children[0])
  while(finishcity.children[0]!=null){
  finishcity.removeChild(finishcity.children[0]);
  }
  //이전에 생성된 내용들을 지움. 덧씌워지는 것을 방지.
  if( finishpos == "Korea"){
    for(var i=0; i<korea.length; i++){
      var stcity = document.createElement("option")
      var stcitytxt = document.createTextNode(koreako[i]);
      stcity.setAttribute("id",korea[i]);
      stcity.setAttribute("value",korea[i]);
      stcity.appendChild(stcitytxt);
      finishcity.appendChild(stcity);
      }

  }
  else if (finishpos =="China"){
    for(var i=0; i<china.length; i++){
      var stcity = document.createElement("option")
      var stcitytxt = document.createTextNode(chinako[i]);
      stcity.setAttribute("id",china[i]);
      stcity.setAttribute("value",china[i]);
      stcity.appendChild(stcitytxt);
      finishcity.appendChild(stcity);
      }

  }
  else if (finishpos =="HongKong"){
    for(var i=0; i<hongkong.length; i++){
      var stcity = document.createElement("option")
      var stcitytxt = document.createTextNode(hongkongko[i]);
      stcity.setAttribute("id",hongkong[i]);
      stcity.setAttribute("value",hongkong[i]);
      stcity.appendChild(stcitytxt);
      finishcity.appendChild(stcity);
      }
  }
  else if (finishpos == "Taiwan"){

  for(var i=0; i<taiwan.length; i++){
    var stcity = document.createElement("option")
    var stcitytxt = document.createTextNode(taiwanko[i]);
    stcity.setAttribute("id",taiwan[i]);
    stcity.setAttribute("value",taiwan[i]);
    stcity.appendChild(stcitytxt);
    finishcity.appendChild(stcity);
    }//반복문으로 불러옴.
  }
  else if (finishpos == "Japan"){

  for(var i=0; i<japan.length; i++){
    var stcity = document.createElement("option")
    var stcitytxt = document.createTextNode(japanko[i]);
    stcity.setAttribute("id",japan[i]);
    stcity.setAttribute("value",japan[i]);
    stcity.appendChild(stcitytxt);
    finishcity.appendChild(stcity);
    }
  }
  else if (finishpos == "Thailand"){

  for(var i=0; i<thailand.length; i++){
    var stcity = document.createElement("option")
    var stcitytxt = document.createTextNode(thailandko[i]);
    stcity.setAttribute("id",thailand[i]);
    stcity.setAttribute("value",thailand[i]);
    stcity.appendChild(stcitytxt);
    finishcity.appendChild(stcity);
    }
  }
  else if (finishpos == "Singapore"){

  for(var i=0; i<singapore.length; i++){
    var stcity = document.createElement("option")
    var stcitytxt = document.createTextNode(singaporeko[i]);
    stcity.setAttribute("id",singapore[i]);
    stcity.setAttribute("value",singapore[i]);
    stcity.appendChild(stcitytxt);
    finishcity.appendChild(stcity);
    }
  }
  else if (finishpos == "Indonesia"){

  for(var i=0; i<indonesia.length; i++){
    var stcity = document.createElement("option")
    var stcitytxt = document.createTextNode(indonesiako[i]);
    stcity.setAttribute("id",indonesia[i]);
    stcity.setAttribute("value",indonesia[i]);
    stcity.appendChild(stcitytxt);
    finishcity.appendChild(stcity);
    }
  }
  else if (finishpos == "India"){

  for(var i=0; i<india.length; i++){
    var stcity = document.createElement("option")
    var stcitytxt = document.createTextNode(indiako[i]);
    stcity.setAttribute("id",india[i]);
    stcity.setAttribute("value",india[i]);
    stcity.appendChild(stcitytxt);
    finishcity.appendChild(stcity);
    }
  }
  else if (finishpos == "Vietnam"){

  for(var i=0; i<vietnam.length; i++){
    var stcity = document.createElement("option")
    var stcitytxt = document.createTextNode(vietnamko[i]);
    stcity.setAttribute("id",vietnam[i]);
    stcity.setAttribute("value",vietnam[i]);
    stcity.appendChild(stcitytxt);
    finishcity.appendChild(stcity);
    }
  }
  else if (finishpos == "Philippine"){

  for(var i=0; i<philippine.length; i++){
    var stcity = document.createElement("option")
    var stcitytxt = document.createTextNode(philippineko[i]);
    stcity.setAttribute("id",philippine[i]);
    stcity.setAttribute("value",philippine[i]);
    stcity.appendChild(stcitytxt);
    finishcity.appendChild(stcity);
    }
  }
}
