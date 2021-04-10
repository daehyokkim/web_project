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
<title>�������� ���� ��� �׷�</title>
</head>
<body>
	<fieldset>
        <h1> Route Search Results </h1>
	        <div class = "depart">
	        <h2> DEPARTURE </h2>        	
		        <p><b>����</b> : ${routetuple.decon}</p>
	        	<p><b>�����</b> : ${routetuple.demenu}</p>
	        	<p><b>��� �ð�</b> : ${routetuple.detime}</p>
	        	<p><b>��� ����</b> : ${routetuple.date}</p>
	        	<p><b>�ҿ� �ð�</b> : ${routetuple.time}</p>
	    	</div>
	    		
	    	<div class= "stopover">
	    	<h2> STOPOVER </h2>
	    		<p><b>��������</b> : ${routetuple.midcon}</p>
	    		<p><b>������</b> : ${routetuple.midmenu}</p>
	    		<p><b>��� ����</b> : ${routetuple.mid_date}</p>
	    		<p><b>��� �ð�</b> : ${routetuple.mid_d_time}</p>
	    		<p><b>�ҿ� �ð�</b> : ${routetuple.mtime}</p>
	    	</div>  
		    <div class = "arrival">
	    	<h2> ARRIVAL </h2>
	        	<p><b>����</b> : ${routetuple.arcon}</p>
	        	<p><b>������</b> : ${routetuple.armenu}</p>
	    	</div>
	    	
	    	<div class="total" align = "center"> 
		    	<strong> Total time : ${routetuple.time}</strong>
	    	</div>    
        </fieldset>
</body>
</html>