<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<style>
  h1 {
    font-size:47px;
    color: #483d8b;
  }
   body {
  		background-image: url("resources/images/result.jpg");
  		background-size: cover;
  		background-position: center center;
		background-repeat: no-repeat;
  }
  fieldset {
    text-align:center;
    color: #e6e6fa;
    padding-bottom: 15px;
    padding-top:10px;
    font-size:20px;
  }
  fieldset ul li{
  	line-style:none;
  }
   
  .total{
    font-size: 25px;
    font-style:oblique;
  }
</style>
<title>경유지가 있을 경우 항로</title>
</head>
<body>
	<fieldset>
        <h1> Route Search Results </h1>
	        <div class = "depart">
	        <h2> DEPARTURE </h2>        	
		        <p><b>국가</b> : ${routetuple.decon}</p>
	        	<p><b>출발지</b> : ${routetuple.demenu}</p>
	        	<p><b>출발 시간</b> : ${routetuple.detime}</p>
	        	<p><b>출발 요일</b> : ${routetuple.date}</p>
	        	<p><b>소요 시간</b> : ${routetuple.time}</p>
	    	</div>
	    		
	    	<div class= "stopover">
	    	<h2> STOPOVER </h2>
	    		<p><b>경유국가</b> : ${routetuple.midcon}</p>
	    		<p><b>경유지</b> : ${routetuple.midmenu}</p>
	    		<p><b>출발 요일</b> : ${routetuple.mid_date}</p>
	    		<p><b>출발 시간</b> : ${routetuple.mid_d_time}</p>
	    		<p><b>소요 시간</b> : ${routetuple.mtime}</p>
	    	</div>  
		    <div class = "arrival">
	    	<h2> ARRIVAL </h2>
	        	<p><b>국가</b> : ${routetuple.arcon}</p>
	        	<p><b>도착지</b> : ${routetuple.armenu}</p>
	    	</div>
	    	
	    	<div class="total" align = "center"> 
		    	<strong> Total time : ${routetuple.time}</strong>
	    	</div>    
        </fieldset>
</body>
</html>