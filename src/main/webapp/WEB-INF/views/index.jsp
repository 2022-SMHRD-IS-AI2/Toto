<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<c:set var="cPath" value="${pageContext.request.contextPath}" />
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>toto</title>
    <link rel="stylesheet" href="${cPath}/resources/css/index.css">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/swiper@9/swiper-bundle.min.css"/>
    <script src="https://cdn.jsdelivr.net/npm/swiper@9/swiper-bundle.min.js"></script>
    <script src="https://kit.fontawesome.com/c3a31cbb00.js" crossorigin="anonymous"></script>
</head>
<body>
    
    <!-- header  -->
    <div class="head">
        <header class="header">
            <a href="${cPath}/">
                <img src="${cPath}/resources/images/logo.png" >
            </a>
            <div class="menu">
                <span>개요</span>
                <i class="fa-solid fa-chevron-down fa-2xs" onmouseover= i_mouseover() ></i>     
                <ul class="ul" onmouseover= i_mouseover() onmouseout= i_mouseout()>
                    <li>
                        <a href="#" >기능</a>       
                    </li>
                    <li>
                        <a href="#">가격</a>
                    </li>
                    <li>
                        <a href="#">팀원소개</a>
                    </li>
                </ul>
                
            </div>
            <div>
                <a href="${cPath}/login.do">로그인</a>
            </div>
 
        </header>
    </div>
   <div class="nav">
    <nav>
        <div class="nav1">
            <span>
                Create () Toto Toeic
            </span>
        </div>
        <div class="nav2">
            <span>
                Toto에서 Chat GPT를 활용해 토익문제를 생성 해드립니다!
            </span>
        </div>
        <div class="nav3">
            <button><a href="${cPath}/generateP.do">Getting Started Toto >></a>
                
            </button>
        </div>
       
    </nav>
    <div class="swiper">
        <!-- Additional required wrapper -->
        <div class="swiper-wrapper">
          <!-- Slides -->
          <div class="swiper-slide">Slide 1</div>
          <div class="swiper-slide">Slide 2</div>
          <div class="swiper-slide">Slide 3</div>
          ...
        </div>
        <!-- If we need pagination -->
        <div class="swiper-pagination"></div>
        <!-- If we need navigation buttons -->
        <div class="swiper-button-prev"></div>
        <div class="swiper-button-next"></div>
      </div>
   </div>
    <!-- Slider main container -->

    <div class="navgrid">
        <nav class="grid">
            <div class="grid1">
                <img src="${cPath}/resources/images/a.png">
                <span>Step1:문장입력</span>
                <span>문장을 넣으면 그에 대한 문단이 생성돼요!</span>
            </div>
            <div class="grid2">
                <img src="${cPath}/resources/images/b.png">
                <span>Step2:문제생성</span>
                <span>생성된 문단을 선택해서 다양한 유형의 문제를 생성할 수 있어요</span>
            </div>
            <div class="grid3">
                <img src="${cPath}/resources/images/v.png">
                <span>Step3:단어장</span>
                <span>문단에 있는 주요 단어들을 추출해서 단어장을 만들어줘요</span>
            </div>
            <div class="grid4">
                <img src="${cPath}/resources/images/d.png">
                <span>Step4:문제공유</span>
                <span>만들어진 문제를 여러 선생님들과 공유할 수 있어요</span>
            </div>
        </nav>

    </div>
    <footer>

    </footer>
    <script src="${cPath}/resources/js/index.js">
    </script>
</body>
</html>