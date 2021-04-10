<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>내가 쓴 글</title>
<script src="resources/js/content.js"></script>
<script src="resources/js/jquery.min.js"></script>
<script src="resources/js/skel.min.js"></script>
<script src="resources/js/skel-layers.min.js"></script>
<script src="resources/js/init.js"></script> 
<style>
       .titsearch{float:left;
                width:100%;
                margin-top:2%;
                margin-bottom:2%;}
                
       .search{font-size: 10pt;
             height:95%;
       }
       
       .sorttxt{float: left; //
             width:50%;
             height: 100%;
             margin-right: 5%;}
             
       .sort{text-align:center;
            height:100%;
            font-size:12pt;
            padding-top:5%;
          }
       
       .sortsel{width:10%;
             height: 100%;
              float:left;
              margin-right: 2%;
              }
      
       .sortbtn{float: left;
             width: 5%;
             font-size: 10pt;}
</style>
</head>
 <body>
    <form class="main_mycontent" action="myContent" method="get">
      <fieldset id="content">
       <legend>내가 쓴 글</legend>
       <div class=titsearch>
          <div class=sortsel>
        <select class="sort" name="sort">
            <option value="sel">선택</option>
            <option value="writedate">작성일</option>
            <option value="title">제목</option>
            
        </select>
        </div >
        <div class=sortbtn>
        <input type="button" name="searchbtn" value="검색">
        </div>   
        </div>
            <table border="1">
               <thead>
               <tr>
                       <th class=num>No.</th>
                       <th class=tit>제목</th>
                       <th class=date>작성일</th>
                       <th class=view> 조회수 </th>
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