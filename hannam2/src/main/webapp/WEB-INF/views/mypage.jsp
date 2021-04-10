<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<title>마이페이지</title>
<style media="screen">
    #Myseaway{float:right;}
    #Mycontent{float:right;}
</style>

<meta charset="utf-8">
<script src="resources/js/jquery.min.js"></script>
		<script src="resources/js/jquery.min.js"></script>
		<script src="resources/js/skel.min.js"></script>
		<script src="resources/js/skel-layers.min.js"></script>
		<script src="resources/js/init.js"></script>
		<script src="resources/js/mypage.js"></script>	
		<noscript>
			<link href="resources/css/skel.css" rel="stylesheet"/> 
			<link href="resources/css/style.css" rel="stylesheet"/>
			<link href="resources/css/style-xlarge.css" rel="stylesheet"/> 
		</noscript>
<title>마이페이지</title>
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
      <legend>마이페이지</legend>
    <h3>사용자 : ${User}</h3>
    <a class="button special"  onclick="Remydata()">내 정보 변경</a>
    </fieldset>
    <form class="main_myseaway" action="mySeaway" method="get">
      <fieldset id="sea">

        <legend>내가 검색한 경로 리스트 </legend>
        
            <table>
               <thead>
               <tr>
                    <th id="Num">No.</th>           
                    <th id="Sta">출발 항구</th>
                    <th id="Fin">도착 항구</th>
                    <th id="Stop">경유지</th>
                    <th id="SHou">출발 시간</th>
                    <th id="Hou">소요 시간</th>
                 </tr>                           
               </thead>
               
                <tbody>
                <c:forEach items="${routelist}" var="Route">
                 	 <tr>
                       <td id="Num">${Route.cnt}</td>              
                       <td id="Sta">${Route.decon}(${Route.demenu})</td>
                       <td id="Fin">${Route.arcon}(${Route.armenu})</td>
                       <td id="Stop">${Route.midcon}(${Route.midmenu})</td>
                       <td id="SHou">${Route.detime}</td>
                       <td id="Hou">${Route.time}</td>
                     </tr>
               	</c:forEach>   
                </tbody>                   
            </table>
            <input type="submit" name="Myseaway" id="Myseaway" value="전체보기">
            <a href="myrouteDel"><input type="button" value="전체삭제"></a>
      </fieldset>
    </form>
    
    
    <form class="main_mycontent" action="myContent" method="get">

      <fieldset id="comment">

        <legend>내가 쓴 글</legend>
            <table border="1">
               <thead>
               <tr>
                       <th class=num>No.</th>
                       <th class=tit>제목</th>
                       <th class=date>작성일</th>
                       <th class=view>조회수</th>
                    </tr>
               </thead>
                
               <tbody>
                  <c:forEach items="${titlelist}" var="note">
                 <tr>
                    <td class=num>${note.cnt}</td>
                       <td class=tit><a href="noteMain?cnt=${note.cnt}">${note.title}</a></td>
                       <td class=date>${note.time}</td>
                       <td class= view> ${note.lookup} </td>
                </tr>
                </c:forEach>             
               </tbody>    
            </table>
            <input type="submit" name="Mycontent" id="Mycontent" value="전체보기">
    </fieldset>
    </form>
    
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