<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>���� �˻��� ���</title>
<script src="resources/js/content.js"></script>
<script src="resources/js/jquery.min.js"></script>
<script src="resources/js/skel.min.js"></script>
<script src="resources/js/skel-layers.min.js"></script>
<script src="resources/js/init.js"></script>
<style>
       .sort{text-align:center;
            height:100%;
          }
       .sortsel{width:15%;
              float:left;
              text-align:center;
              font-size: 12pt;
              height:95%;
              margin-right: 2%;
              }
       
       .sortbtn{float: left;
            height: 80;
            width:5%;
            padding:0;
             font-size: 10pt;}
 </style>
 </head>
 <form class="main_myseaway" action="myseaway.html" method="post">
      <fieldset id="sea">
       <legend>������ ���</legend>
        <div class="sortsel">

        <select class="sort" name="sort">
            <option value="minstopover">�ּ� ������</option>
            <option value="maxstopover">�ִ� ������</option>
            <option value="minstime">�ּ� �ð�</option>
            <option value="maxtime">�ִ� �ð�</option>
        </select>
        </div>
        <div class="sortbtn">
        <input type="button" name="selectbtn" value="�˻�" onclick="Rearr()">
         </div>
      
            <table>
               <thead>
               <tr>
                    <th id="Num">No.</th>
                    <th id="Snum">����</th>
                    <th id="Sta">��� �ױ�</th>
                    <th id="Fin">���� �ױ�</th>
                    <th id="Stop">������</th>
                    <th id="SHou">��� �ð�</th>
                    <th id="Hou">�ҿ� �ð�</th>
                 </tr>                           
               </thead>
               
                <tbody>
                      <c:forEach items="${routelist}" var="Route">
                  <tr>
                       <td id="Num">${Route.cnt}</td>
                       <td id="Snum">ItoT</td>
                       <td id="Sta">${Route.decon}</td>
                       <td id="Fin">${Route.arcon}</td>
                       <td id="Stop"></td>
                       <td id="SHou">${Route.detime}</td>
                       <td id="Hou">${Route.time}</td>
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
            <li>Address: <a href="http://www.hannam.ac.kr/about/about_1001.html">�ѳ����б�</a> | ���������� ����� �ѳ��� 70</li>
            <li>Extension Number: 042-0000-0000</li>
         </ul>
         </div>
   </footer>
  </body>
</html>