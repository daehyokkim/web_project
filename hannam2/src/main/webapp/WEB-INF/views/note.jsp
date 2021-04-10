<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
		<script src="resources/js/skel.min.js"></script>
		<script src="resources/js/jquery.min.js"></script>
		<script src="resources/js/skel-layers.min.js"></script>
		<script src="resources/js/init.js"></script>
		<script src="resources/js/content.js"></script>	
		<noscript>
			<link href="resources/css/skel.css" rel="stylesheet"/> 
			<link href="resources/css/style.css" rel="stylesheet"/>
			<link href="resources/css/style-xlarge.css" rel="stylesheet"/> 
		</noscript>
<title>자유게시판</title>
</head>
<body>
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

    <fieldset>
      <legend>자유게시판</legend>
    
   	<div class="note">
   	<table border="1">
   		<thead>
   			<tr>
   		  		<th class=num> No. </th>
          		<th class=tit> 제목 </th>
          		<th class=writer> 작성자</th>
          		<th class=date>작성날짜</th>
          		<th class=view>조회수</th>
   			</tr>
   		</thead>
   		<tbody>
   		<c:forEach items="${noteList}" var="list">
   			<tr>
   			<td class=number> ${list.cnt}</td>
   			<td class=title><a href="noteMain?cnt=${list.cnt}">${list.title}</a></td>
   			<td class=writer>${list.id}</td>
   			<td class=date>${list.time}</td>
   			<td class=view>${list.lookup}</td>
   			<tr>   		
   		</c:forEach>
   		</tbody>
   	</table>
   </div>
      <a href="writenote"><input type="button" id="write" value="글쓰기"></a>
	
    </fieldset>

	</body>	
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
    