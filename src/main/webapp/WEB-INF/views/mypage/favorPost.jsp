<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<c:set var="cPath" value="${pageContext.request.contextPath}" />
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">  
       <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.4.1/dist/css/bootstrap.min.css" integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh" crossorigin="anonymous">
    <link rel="stylesheet" href="${cPath}/resources/css/myquestion.css">
    <title>Document</title>
</head>
<body>
    <jsp:include page="../left.jsp"></jsp:include>

	 <div class="myquestion-title">
        <h2>Selected Posts</h2>
    </div>
    <div class="myquestion-content">
        <div class="content-size">
            <table class="table text-center">
              <thead>
                <tr>
                  <th scope="col">번호</th>
                  <th scope="col">게시물</th>
                  <th scope="col">찜한날짜</th>         
                </tr>
              </thead>
              <tbody>
                <tr>
                  <th scope="row">1</th>
                  <td class="hidden">
                    <div>
                      <a href="#" data-toggle="collapse" data-target="#demo1">Mark</a>
                    </div>
                    <div id="demo1" class="collapse">
                      <p>문제: A new coffee shop is _____ on the corner of Fifth and Main.</p>
                      <p>답: opening</p>
                      
                    </div>
                  </td>                   
                  <td class="date">2023-04-04</td>
                </tr>
                <tr>
                  <th scope="row">2</th>
                  <td><a href="#">Mark</a></td>
                  <td class="date">2023-04-04</td>
                </tr>
                <tr>
                  <th scope="row">3</th>
                  <td><a href="#">Mark</a></td>
                  <td class="date">2023-04-04</td>
                </tr>
              </tbody>
            </table>
          </div>
          
    </div>
  
    <nav aria-label="Page navigation example">
      <ul class="pagination justify-content-center">
        <li class="page-item disabled">
          <a class="page-link" href="#" tabindex="-1" aria-disabled="true">이전</a>
        </li>
        <li class="page-item"><a class="page-link" href="#">1</a></li>
        <li class="page-item"><a class="page-link" href="#">2</a></li>
        <li class="page-item"><a class="page-link" href="#">3</a></li>
        <li class="page-item">
          <a class="page-link" href="#">다음</a>
        </li>
      </ul>
    </nav>
    
   
    

     <jsp:include page="sidemenu.jsp"></jsp:include>

     <script src="https://code.jquery.com/jquery-3.4.1.slim.min.js" integrity="sha384-J6qa4849blE2+poT4WnyKhv5vZF5SrPo0iEjwBvKU7imGFAV0wwj1yYfoRSJoZ+n" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js" integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.4.1/dist/js/bootstrap.min.js" integrity="sha384-wfSDF2E50Y2D1uUdj0O3uMBJnjuUD4Ih7YwaYd1iqfktj0Uod8GCExl3Og8ifwB6" crossorigin="anonymous"></script>
    <script>
    
      // 삭제 버튼 추가
      $('.collapse').each(function() {
      var button = $('<button/>', {
      text: '삭제',
      class: 'btn btn-danger',
      click: function() {
      $(this).closest('.collapse').remove(); // 클릭된 버튼의 가장 가까운 .collapse 엘리먼트 삭제
      }
      });
      $(this).append(button); // .collapse 엘리먼트 내의 가장 첫 번째 자식으로 버튼 추가
      });
    
      </script>
</body>
</html>