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
    <!-- <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-giJF6kkoqNQ00vy+HMDP7azOuL0xtbfIcaT9wjKHr8RbDVddVHyTfAAsrekwKmP1" crossorigin="anonymous"> -->
    <link rel="stylesheet" href="${cpath}/resources/css/mypage.css">
    <title>Document</title>
</head>
<body>
    <div class="q-nav-profile">
        <a href="index.html">
            <img src="/image/logo.png">
        </a>
        <div class="profile">
            <div class="profile-img">
                <img src="/image/hl.jpg" alt="">
            </div>
            <div class="profile-info">
                <span>${vo.m_name}</span>
                <span>${vo.m_email }</span>
                <div class="profile-info-button">
                    <button type="button" onclick ="location.href=${cPath}/">로그아웃</button>
                </div>
            </div>             
            
        </div>
        

        <ul class="q-board">
               <li class="m-4"><a href="${cPath}/generateP.do">문장생성 </a></li>
                <li class="m-4"><a href="${cPath}/registerBoard.do">문항게시판 </a></li>
                <li class="m-4"><a href="${cPath}/registerBoard.do">자료게시판 </a></li>
                <li class="m-4"><a href="${cPath}/myPage">마이페이지 </a></li>
        </ul>
    </div>


    <div class="mypage-title">
        <h2>Mypage</h2>
    </div>
    
    <div class="page-content">
        <div class="page-upload">
            <div>
                <img src="" class="uploadImage">
            <input type="file" id="inputImage" style="display:none;">

            </div>
            
            <span>${vo.m_name }</span>
            <div class="page-upload-button">
                <label for="inputImage" class="custom-file-upload">이미지</label>
                <button id="sendButton">업로드</button>
            </div>
            

  
            
        </div>
       
        <form class="mypage-form" action="">
            <div class="mypage-form1">
              
            
                
                <div class="mypage-form1-content">
                    <div class="form-row">
                        <div class="form-group col">
                          <label for="inputEmail4">이름</label>
                          <input type="email" class="form-control" id="inputEmail4">
                        </div>
                        <div class="form-group col">
                          <label for="inputPassword4">닉네임</label>
                          <input type="text" class="form-control" id="inputPassword4">
                        </div>
                    </div>
                    <div class="form-row">
                        <div class="form-group col">
                          <label for="inputEmail4">Email</label>
                          <input type="email" class="form-control" id="inputEmail4">
                        </div>
                        <div class="form-group col">
                          <label for="inputPassword4">전화번호</label>
                          <input type="text" class="form-control" id="inputPassword4">
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
            
            <div class="formTop">
                <label for="exampleFormControlTextarea1">대표문제</label>
                <textarea class="form-control textarea" id="exampleFormControlTextarea1" rows="5" cols="30"></textarea>
            </div>
            <div class="btnMypage">
                <button type="submit" class="btn btn-outline-primary btn-sm">수정하기</button>  
            </div>
        
        </form>
    </div>
   
   
    

    <div class="side-menu">
        <h2>Side Menu</h2>
        <ul class="side-menu-content">
            <li><a href="/myquestion.html">내 문제</a></li>
            <li><a href="/mypage.html">내정보 수정</a></li>
           
            <li><a href="/change.html">비밀번호 변경</a></li>
            <li><a href="/delete.html">회원 탈퇴</a></li>
        </ul>
    </div>
    <script src="mypage.js">
        
      </script>
       
      
    <script src="https://code.jquery.com/jquery-3.4.1.slim.min.js" integrity="sha384-J6qa4849blE2+poT4WnyKhv5vZF5SrPo0iEjwBvKU7imGFAV0wwj1yYfoRSJoZ+n" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js" integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.4.1/dist/js/bootstrap.min.js" integrity="sha384-wfSDF2E50Y2D1uUdj0O3uMBJnjuUD4Ih7YwaYd1iqfktj0Uod8GCExl3Og8ifwB6" crossorigin="anonymous"></script>
</body>
</html>