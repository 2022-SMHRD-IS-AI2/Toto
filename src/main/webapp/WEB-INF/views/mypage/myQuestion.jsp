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
    <div class="q-nav-profile">
        <a href="${cPath}/">
            <img src="${cPath}/resources/images/logo.png">
        </a>
        <c:choose>
        <c:when test="${!empty MemberVO}">
        <div class="profile">
            <div class="profile-img">
                <img src="${cPath}/resources/images/hl.jpg" alt="">
            </div>
            <div class="profile-info">
                <span>${MemberVO.m_nick}</span>
                <span>${MemberVO.m_email}</span>
                <div class="profile-info-button">
                    <button type="button">로그아웃</button>
                </div>
            </div>             
        </div>
        </c:when>
        <c:otherwise>
        <div class="profile">
            <div class="profile-img">
                <img src="${cPath}/resources/images/hl.jpg" alt="">
            </div>
            <div class="profile-info">
                <span>로그인을</span>
                <span>해주세요!</span>
                <div class="profile-info-button">
                    <button type="button">로그인</button>
                </div>
            </div>             
        </div>
        </c:otherwise>
        </c:choose>
            
        <ul class="q-board">
            <li class="m-4"><a href="${cPath}/generateP.do"><span class="q-board-span">문장생성</span> </a></li>
            <li class="m-4"><a href="#"><span class="q-board-span">문항게시판</span> </a></li>
            <li class="m-4"><a href="${cPath}registerBoard.do"><span class="q-board-span">자료게시판</span> </a></li>
            <li class="m-4"><a href="${cPath}/myPage"><span class="q-board-span">마이페이지</span> </a></li>
        </ul>
        
    </div>
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
        <c:forEach var="quizVO" items="${quizs}">
        <% cnt++; %>
                <tbody>
                  
                    <tr>
                      <th scope="row"><%= cnt %></th>
                      <td class="hidden">
                        <a href="#" data-toggle="collapse" data-target="#demo1">${quizVO.q_quest}</a>
                        <div id="demo1" class="collapse">
                          <p>문제: ${quizVO.q_quest}</p>
                          <p>선지 (1) ${quizVO.q_wrong1}<br> (2) ${quizVO.q_wrong2}<br> (3) ${quizVO.q_wrong3}<br> (4) ${quizVO.q_answer}<br> (5) ${quizVO.q_wrong4} </p>
                          <p>답: ${quizVO.q_answer}</p>
                          <p>해설: ${quizVO.q_comment}</p>
                        </div>
                      </td>                   
                      <td><fmt:formatDate value="${quizVO.q_date}" pattern="yyyy-MM-dd HH:ss"/></td>
                    </tr>
        </c:forEach>
            
                  <tr>
                    <th scope="row">2</th>
                    <td><a href="#">Mark</a></td>
                    <td>2023-04-04</td>
                  </tr>
                  <tr>
                    <th scope="row">3</th>
                    <td><a href="#">Mark</a></td>
                    <td>2023-04-04</td>
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

    <div class="side-menu">
        <h2>Side Menu</h2>
        <ul class="side-menu-content">
              <li><a href="${cPath}/myPage">내정보</a></li>
            <li><a href="${cPath}/myQuestion.do">내 문제</a></li>
            <li><a href="${cPath}/changePw.do">비밀번호 변경</a></li>
            <li><a href="${cPath}/delete.do">회원 탈퇴</a></li>
        </ul>
    </div>
    <!-- Optional JavaScript -->
    <!-- jQuery first, then Popper.js, then Bootstrap JS -->
    <script src="https://code.jquery.com/jquery-3.4.1.slim.min.js" integrity="sha384-J6qa4849blE2+poT4WnyKhv5vZF5SrPo0iEjwBvKU7imGFAV0wwj1yYfoRSJoZ+n" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js" integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.4.1/dist/js/bootstrap.min.js" integrity="sha384-wfSDF2E50Y2D1uUdj0O3uMBJnjuUD4Ih7YwaYd1iqfktj0Uod8GCExl3Og8ifwB6" crossorigin="anonymous"></script>
  </body>
</html>