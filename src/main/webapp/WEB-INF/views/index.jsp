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
    <title>toto</title>
    <link rel="stylesheet" href="${cPath }/resources/css/index.css">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/swiper@9/swiper-bundle.min.css"/>
    <script src="https://cdn.jsdelivr.net/npm/swiper@9/swiper-bundle.min.js"></script>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css">
    
</head>
<body>
    
    <!-- header  -->
    <div class="head">
        <header class="header">
            <a href="${cPath }/index.html">
                <img src="${cPath }/resources/images/logo.png" >
            </a>
            
            <div class="sign">
            
                
                <ul class="signUp">
                    <li><a href="${cPath }/login.do"><p>로그인</p> </a></li>
                    <li><a href="${cPath }/join.do"><p>회원가입</p></a></li>
                </ul>
                
            </div>
 
        </header>
    </div>
   <div class="nav0">
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
            <button><a href="${cPath }/generateP.do">Getting Started Toto >></a>
                
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
<form action="${cpath}/modify.do" method="post">
    <div class="navgrid">
        <nav class="grid">
            <div class="grid1">
                <img src="${cPath }/resources/images/a.png">
                <span>Step1:문장입력</span>
                <span>문장을 넣으면 그에 대한 문단이 생성돼요!</span>
            </div>
            <div class="grid2">
                <img src="${cPath }/resources/images/b.png">
                <span>Step2:문제생성</span>
                <span>생성된 문단을 선택해서 다양한 유형의 문제를 생성할 수 있어요</span>
            </div>
            <div class="grid3">
                <img src="${cPath }/resources/images/v.png">
                <span>Step3:단어장</span>
                <span>문단에 있는 주요 단어들을 추출해서 단어장을 만들어줘요</span>
            </div>
            <div class="grid4">
                <img src="${cPath }/resources/images/d.png">
                <span>Step4:문제공유</span>
                <span>만들어진 문제를 여러 선생님들과 공유할 수 있어요</span>
            </div>
        </nav>
        </form>

        
        <!-- ?? 여기가 어디야  -->
    </div>
    <div class="container">
        <footer class="py-3 my-4">
          <ul class="nav justify-content-center border-bottom pb-3 mb-3">
            <li class="nav-item"><a href="${cPath }/index.do" class="nav-link px-2 text-muted">Home</a></li>
            <li class="nav-item"><a href="#" class="nav-link px-2 text-muted">Features</a></li>
            <li class="nav-item"><a href="#" class="nav-link px-2 text-muted">Pricing</a></li>
            <li class="nav-item"><a href="#" class="nav-link px-2 text-muted">FAQs</a></li>
            <li class="nav-item"><a href="#" class="nav-link px-2 text-muted">About</a></li>
          </ul>
          <p class="text-center text-muted">© 2023 Company, Inc</p>
        </footer>
      </div>
    
    <script src="${cPath }/resources/css/index.css">
        
    </script>
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.11.6/dist/umd/popper.min.js" integrity="sha384-oBqDVmMz9ATKxIep9tiCxS/Z9fNfEXiDAYTujMAeBAsjFuCZSmKbSSUnQlmh/jp3" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.min.js" integrity="sha384-cuYeSxntonz0PPNlHhBs68uyIAVpIIOZZ5JqeqvYYIcEL727kskC66kF92t6Xl2V" crossorigin="anonymous"></script>
</body>
</html>