<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<html>
<head>
<meta charset="UTF-8">
<title>${membernote.title}</title>
<script src="resources/js/content.js"></script>
		<script src="resources/js/jquery.min.js"></script>
		<script src="resources/js/skel.min.js"></script>
		<script src="resources/js/skel-layers.min.js"></script>
		<script src="resources/js/init.js"></script>
		<noscript>
			<link rel="stylesheet" href="resources/css/skel.css" />
			<link rel="stylesheet" href="resources/css/style.css" />
			<link rel="stylesheet" href="resources/css/style-xlarge.css"/>			
		</noscript>
<style>
   .head{
      padding-top: 5%;
      padding-bottom: 1%;
      font-size:20px;
   }
   .left{float: left;
         font-size : 14pt;}
   .right{float: right;
         font-size : 14pt;}   
   label{font-size: 20pt;}   
   tr{border-top:none;
         border-bottom:none;}
   .top{height:1%;}
   .bottom{height:50%;}
   .name{float:left;
         width: 15%;
         height:40px;
   }
   .content{width:100%;
         text-align: left;
         padding-left: 5%;
         rowspan: 2;
   }
   .btn{float:right;
      width:10%;
      padding-top:1%;
      
      text-align: center;
      height:40px;
   }
   label input{
   	bottom:10px;
   }
</style>		
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
	<body>
	<fieldset>
	<div>
			  <br>
			  <label>제목 
			  	<input type="text" name="htmlname" id="tit" value="${membernote.title}" size="80" value="HTML" disabled>			  
			  </label>
			  <br>
   	  			<p>사용자 아이디 : ${membernote.id}
   	  			<p>작성일 : ${membernote.time}</p>
   	  			  <p>내용</p>

				  <textarea name="board" id="col"  rows="8" cols="80" maxlength="300" margin-bottom="30px" disabled>${membernote.main}</textarea>

				  <a href="note"><input id = "list" type="button" name="list" value="목록"></a>
				
					<input type="hidden" name="writer" id="writer" value="${membernote.id}">
					<input type="hidden" name="cnt" id="cnt" value="${membernote.cnt}">
					<input type="hidden" name="reader" id="reader" value="${user}">
					<input id = "rewrite" type="button" name="rewrite" value="수정" onclick="Rewrite()">
				  <input id = "delete" type="button" name="delete" value="삭제" onclick="Delete()"><br>						    
   	  </div>

   	  <div>
   	  	<form action="comment">
   	  	<br>
   	  		<b>댓글 입력</b>
   	  		<input type="text" name="content">
   	  		<input type="hidden" name="cnt" value="${membernote.cnt}">
   	  		<input type="hidden" name="id" value="${user}">
   	  		<button type="submit">등록</button>
   	  	</form>
   	  </div>
   	  <div>
   	  <c:forEach items="${comment}" var="com">
   	  	<table border="1">

   	  		<tbody>
   	  			<th>사용자 아이디 : ${com.id}</th>
   	  			<tr>
   	  			<td>댓글 : ${com.content}</td>
   	  			<tr>
					<form action="deleteComment">
					<input type="hidden" name="cnt" value="${com.cnt}">
					<input type="hidden" name="ucnt" value="${com.ucnt}">
					<input type="hidden" name="id" value="${com.id}">
					<button type="submit">삭제</button>
					</form>
   	  			</td>
   	  			</th>
   	  		</tbody>
   	  	</table>
   	  	</c:forEach>  
   	  </div>
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
