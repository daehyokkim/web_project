<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<title>항로검색</title>
		<meta charset="utf-8">
		<meta name="description" content="" />
		<meta name="keywords" content="" />
		<!--[if lte IE 8]><script src="js/html5shiv.js"></script><![endif]-->
		<script src="resources/js/jquery.min.js"></script>
		<script src="resources/js/skel.min.js"></script>
		<script src="resources/js/skel-layers.min.js"></script>
		<script src="resources/js/init.js"></script>
		<script src="resources/js/search.js"></script>
		
		<noscript>
			<link rel="stylesheet" href="resources/css/skel.css" />
			<link rel="stylesheet" href="resources/css/style.css" />
			<link rel="stylesheet" href="resources/css/style-xlarge.css"/>			
		</noscript>
</head>
<body id="top">
	<!-- Header -->
		<header id="header" class="skel-layers-fixed">
			<h1><a href="main">OCEAN SCANNER</a></h1>
			<nav id="nav">
				<ul>
					<li><a href="introduce">소개</a></li>
					<li><a href="route">항로검색</a></li>
					<li><a href="note">자유게시판</a></li>
					<li><a href="mypage">마이페이지</a></li>
					<li><a href="logout" class="button special">로그아웃</a></li>
				</ul>
			</nav>
		</header>
		
			<!-- Main -->
			<section id="main" class="wrapper style1">
				<header class="major">
					<h2>항로검색</h2>
					<p>What is your departure and destination?</p>
				</header>
				<div class="container">
					<div class="row">
						<div class="8u">
							<section>
								<h2>MAP</h2>
								<a href="#" class="image fit"><img src="resources/images/map.jpg" alt="" /></a>
				<form id="rform" action="route_menu1" method="get">
				<div class = "depart_route">
	         <h2>출발지</h2>
		 	<select name ="decon" id="decon" onclick="SearchCountryS()">
		 		<option value="ALL">선택</option>
				<option value="Korea">대한민국</option>
				<option value="China">중국</option>
				<option value="HongKong">홍콩</option>
				<option value="Taiwan">대만</option>
				<option value="Japan">일본</option>
				<option value="Thailand">태국</option>
				<option value="Singapore">싱가포르</option>
				<option value="Indonesia">인도네시아</option>
				<option value="India">인도</option>
	            <option value="Vietnam">베트남</option>
	            <option value="Philippine">필리핀</option>
	         </select>

			<select name ="demenu" id="demenu">	   
	         </select>
	      </div>

	      	<div class = "arrive_route">
					<h2>도착지</h2>
					<select name = "arcon" id = "arcon" onclick="SearchCountryF()">
						 	<option value="ALL">선택</option>
						 	<option value="Korea">대한민국</option>
							<option value="China">중국</option>
							<option value="HongKong">홍콩</option>
							<option value="Taiwan">대만</option>
							<option value="Japan">일본</option>
							<option value="Thailand">태국</option>
							<option value="Singapore">싱가포르</option>
							<option value="Indonesia">인도네시아</option>
							<option value="India">인도</option>
				            <option value="Vietnam">베트남</option>
				            <option value="Philippine">필리핀</option>
					</select>
					
					<select name = "armenu" id = "armenu">									
					</select>
	      	</div>
	      
				<input type="submit" class ="rsearch" value = "검색">
				</form>
			</section>
		 </div> <!-- 8u -->	
		 	
			<!--  최근 경로를 나타내는 구역 -->	
				<div class = "4u">
					<section>
					<div id="routelist">	
						<table border = "1">		
						<tr>
							<th>경로 리스트</th>
						</tr>	
						<c:forEach items="${routelist}" var="list">
						<tr>
						<!-- 기본키  -->
							<td><a href="result?cnt=${list.cnt}" target="_blank" >
							${list.decon} : ${list.demenu} -> ${list.arcon} : ${list.armenu} </a></td>
						</tr>
						</c:forEach>		
						</table>
					</div>	
					</section>	
				</div> <!-- 4u -->
	</div>	<!-- row -->
</div>	<!-- container -->

	</section> <!-- id : main -->

	<footer id="footer">
			<div class="container">
				<div class="row double">
					<div class="6u">
						<div class="row collapse-at-2">
							<div class="6u">
							
							</div>
							<div class="6u">
							
							</div>
						</div>
					</div>
							<div class="6u">
							
							</div>
				</div>
			<ul class="copyright">
				<li>Hannam Department of Computer Communication Unmanned Technology CheonTaeManSang</li>
				<li>Address: <a href="http://www.hannam.ac.kr/about/about_1001.html">한남대학교</a> | 대전광역시 대덕구 한남로 70</li>
				<li>Extension Number: 042-0000-0000</li>
			</ul>
			</div>
	</footer>
</body>
</html>
