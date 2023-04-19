<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<c:set var="cPath" value="${pageContext.request.contextPath}" />
<!DOCTYPE html>
<html>
<head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.4.1/dist/css/bootstrap.min.css" integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh" crossorigin="anonymous">
    <link rel="stylesheet" href="${cPath}/resources/css/myquestion.css">
    
  </head>
  <body>
    <jsp:include page="../left.jsp"></jsp:include>
    <div class="myquestion-title">
        <h2>my questions</h2>
    </div>
    <div class="myquestion-content">
        <div class="content-size">
            <table class="table text-center">
                <thead>
                  <tr>
                    <th scope="col" >번호</th>
                    <th scope="col">문제</th>
                    <th scope="col">생성일</th>         
                  </tr>
                </thead>
                <% int cnt = 0; %>
                <tbody>
              <c:choose>
        <c:when test="${!empty quizs}">
        <c:forEach var="quizVO" items="${quizs}">
        <% cnt++; %>
                  
                    <tr>
                      <th scope="row"><%= cnt %></th>
                      <td class="hidden">
                      <div><a href="#" data-toggle="collapse" data-target="#demo1">${quizVO.q_quest}</a></div>
                        
                        <div id="demo1" class="collapse">
                          <p>문제: ${quizVO.q_quest}</p>
                          <p>오답 (1) ${quizVO.q_wrong1}<br> (2) ${quizVO.q_wrong2}<br> (3) ${quizVO.q_wrong3}<br></p>
                          <p>답: ${quizVO.q_answer}</p>
                        </div>
                      </td>                   
                      <td><fmt:formatDate value="${quizVO.q_date}" pattern="yyyy-MM-dd HH:ss"/></td>
                    </tr>
        </c:forEach>
        </c:when>
        <c:otherwise>
        	<tr><td rowspan="3">문제가 없습니다! 문제를 생성해보세요! <button onclick="location.href = '${cPath}/generateP.do'">문제 생성하기</button></td></tr>
        </c:otherwise>
              </c:choose>
            
                 
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
    <!-- Optional JavaScript -->
    <!-- jQuery first, then Popper.js, then Bootstrap JS -->
    <script src="https://code.jquery.com/jquery-3.4.1.slim.min.js" integrity="sha384-J6qa4849blE2+poT4WnyKhv5vZF5SrPo0iEjwBvKU7imGFAV0wwj1yYfoRSJoZ+n" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js" integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.4.1/dist/js/bootstrap.min.js" integrity="sha384-wfSDF2E50Y2D1uUdj0O3uMBJnjuUD4Ih7YwaYd1iqfktj0Uod8GCExl3Og8ifwB6" crossorigin="anonymous"></script>
  </body>
</html>