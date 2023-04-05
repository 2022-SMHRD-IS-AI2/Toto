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
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.4.1/dist/css/bootstrap.min.css" integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh" crossorigin="anonymous">
    <link rel="stylesheet" href="${cPath}/resources/css/mypage.css">
    <title>Document</title>
</head>
<body>
    <div class="q-nav-profile">
        <a href="${cPath}/">
            <img src="${cPath}/resources/images/logo.png">
        </a>
        <div class="profile">
            <div class="profile-img">
                <img src="${cPath}/resources/images/hl.jpg" alt="">
            </div>
            <div class="profile-info">
                <span>준연</span>
                <span>ziririsky8@naver.com</span>
                <div class="profile-info-button">
                    <button type="button">로그아웃</button>
                </div>
            </div>             
            
        </div>
        

        <ul class="q-board">
            <li class="m-4"><a href="#"><span class="q-board-span">문장생성</span> </a></li>
            <li class="m-4"><a href="#"><span class="q-board-span">문항게시판</span> </a></li>
            <li class="m-4"><a href="#"><span class="q-board-span">자료게시판</span> </a></li>
            <li class="m-4"><a href="#"><span class="q-board-span">마이페이지</span> </a></li>
        </ul>
    </div>


    <div class="mypage-title">
        <h2>Mypage</h2>
    </div>
    
    <div class="page-content">
        <form class="mypage-form" action="">
            <div class="mypage-form1">
                <div class="mypage-img">
                    <img src="${cPath}/resources/images/hl.jpg">
                    <label for="ex_file">사진 업로드</label>
                    <input type="file" name="fileToUpload" id="fileToUpload">
                </div>
                <div class="mypage-form1-content">
                    <div class="form-row">
                        <div class="form-group col">
                          <label for="inputEmail4">이름</label>
                          <input type="email" class="form-control" id="inputEmail4">
                        </div>
                        <div class="form-group col">
                          <label for="inputPassword4">닉네임</label>
                          <input type="password" class="form-control" id="inputPassword4">
                        </div>
                    </div>
                    <div class="form-row">
                        <div class="form-group col">
                          <label for="inputEmail4">Email</label>
                          <input type="email" class="form-control" id="inputEmail4">
                        </div>
                        <div class="form-group col">
                          <label for="inputPassword4">전화번호</label>
                          <input type="password" class="form-control" id="inputPassword4">
                        </div>
                    </div>
                    <div style="width: 420px;">
                        <div class="form-group ">
                            <label for="inputAddress">소속</label>
                            <input type="text" class="form-control" id="inputAddress" >
                        </div>

                    </div>
                    

                </div>
                
            </div>
            <div class="form-group">
                <label for="exampleFormControlTextarea1">대표문제</label>
                <textarea class="form-control" id="exampleFormControlTextarea1" rows="3"></textarea>
            </div>
            <div class="btnChange">
                <button type="submit" class="btn btn-outline-primary btn-sm">수정하기</button>
               
            </div>
            

                      
                
        </form>
    </div>
   
   
    

    <div class="side-menu">
        <h2>Side Menu</h2>
        <ul class="side-menu-content">
            <li><a href="/mypage.html">내정보</a></li>
            <li><a href="/myquestion.html">내 문제</a></li>
            <li><a href="/delete.html">회원 탈퇴</a></li>
            <li><a href="/change.html">비밀번호 변경</a></li>
            <li><a href="/delete.html">회원 탈퇴</a></li>
        </ul>
    </div>
    <script src="https://code.jquery.com/jquery-3.4.1.slim.min.js" integrity="sha384-J6qa4849blE2+poT4WnyKhv5vZF5SrPo0iEjwBvKU7imGFAV0wwj1yYfoRSJoZ+n" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js" integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.4.1/dist/js/bootstrap.min.js" integrity="sha384-wfSDF2E50Y2D1uUdj0O3uMBJnjuUD4Ih7YwaYd1iqfktj0Uod8GCExl3Og8ifwB6" crossorigin="anonymous"></script>
</body>
</html>