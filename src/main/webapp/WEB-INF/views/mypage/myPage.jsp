<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<c:set var="cPath" value="${pageContext.request.contextPath}" />

<script type="text/javascript">
  	$(document).ready(function(){
  		
  		// 버튼일 클릭되었을때 처리
	$("button").on("click", function(e){
			var btn=$(this).data("btn");	// data-btn
				if(btn == "remove"){
					location.href="${cpath}/remove.do?num="+${vo.m_num};
				}else if(btn == "modify"){
					location.href="${cpath}/modify.do?num="+${vo.m_num};	// get
				}
			
	
			});
  		
  	});
  </script>
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0"> <!-- displays site properly based on user's device -->

  <!-- <link rel="icon" type="image/png" sizes="32x32" href="./images/favicon-32x32.png"> -->
  <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.4.1/dist/css/bootstrap.min.css" integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh" crossorigin="anonymous">
  <link rel="stylesheet" href="./css/mypage.css">
  <link rel="stylesheet" href="style.css">
  <title>Frontend Mentor | Profile card component</title>

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
                <span>준연</span>
                <span>ziririsky8@naver.com</span>
                <div class="profile-info-button">
                    <button type="button">로그아웃</button>
                </div>
            </div>             
            
        </div>
        

        <ul class="q-board">
            <li class="m-4"><a href="/연습용.html">문장생성 </a></li>
            <li class="m-4"><a href="#">문항게시판 </a></li>
            <li class="m-4"><a href="#">자료게시판 </a></li>
            <li class="m-4"><a href="/myprofile.html">마이페이지 </a></li>
        </ul>
    </div>


    <div class="mypage-title">
        <h2>Mypage</h2>
    </div>
    
    <div class="page-content">
        <div class="mypofile-form" action="">
            <div class="myprofile-form1">
                <div class="myprofile-img">
                    <div class="card">
                        <div class="card-body">
                            <div>
                                <img src="./image/hl.jpg" alt="photo" class="rounded-circle positioned">
                            </div>
                            <div class="name">
                                <p class="w700">Victor Crest</p>
                            </div>
                            <div class="location">
                                <p class="text-muted">London</p>
                            </div>
                            <div class="card-bottom row justify-content-center lh-1">
                                <span class="border-top"></span>
                                <div class="col">
                                    <p class="w700 col">80K<br><span class="w400 text-muted">Followers</span></p>
                                </div>
                                <div class="col">
                                    <p class="w700 col">803K<br><span class="w400 text-muted">Likes</span></p>
                                </div>
                                <div class="col">
                                    <p class="w700 col">12<br><span class="w400 text-muted">Quiz</span></p>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                
                    <div class="row row-cols-1 row-cols-sm-2 g-4 white">
                        <div class="d-flex flex-column gap-2">
                         
                          <span class="fw-semibold mb-0 f-18">이름</span>
                          <span class="text-muted info ">${vo.m_name }</span>
                        </div>
                
                        <div class="d-flex flex-column gap-2">
                         
                          <span class="fw-semibold mb-0 f-18">닉네임</span>
                          <span class="text-muted info">${vo.m_nick }</span>
                        </div>
                
                        <div class="d-flex flex-column gap-2">
                      
                          <span class="fw-semibold mb-0 f-18">email</span>
                          <span class="text-muted info">${vo.m_email }</span>
                        </div>
                
                        <div class="d-flex flex-column gap-2">     
                          <span class="fw-semibold mb-0 f-18">전화번호</span>
                          <span class="text-muted info">${vo.m_phone }</span>
                        </div>
                        <div class="d-flex flex-column gap-2 ">     
                            <span class="fw-semibold mb-0 f-18">소속</span>
                            <span class="text-muted info w3">${vo.m_career }</span>
                        </div>
                      </div>
                
                
            </div>
                <div class="myprofileTop">
                    <div class="myprofileTop-Title" >
                        <span class="fw-semibold mb-0">대표문제</span>
                    </div>
                    <c:forEach>
                    <div class="myprofileTop-quiz"><p href="${cpath}/get.do?m_num=${vo.num}">${vo.m_best_quiz}</p></div>
                    </c:forEach>
                </div>
                <div class="btnMypage">
                    <button type="submit" class="btn btn-outline-primary btn-sm">수정하기</button>
                </div>
            
        </div>
    </div>

    <div class="side-menu">
        <h2>Side Menu</h2>
        <ul class="side-menu-content">
            <li><a onclick = "location.href=${cPath}/bulletin/inboard.do">내 문제</a></li>
            <li><a onclick = "location.href=${cPath}/mypage/modify.do">내정보 수정</a></li>
           
            <li><a href="/change.html">비밀번호 변경</a></li>
            <li><a onclick = "location.href=${cPath}/mypage/delete.do">회원 탈퇴</a></li>
        </ul>
    </div>
    <script src="https://code.jquery.com/jquery-3.4.1.slim.min.js" integrity="sha384-J6qa4849blE2+poT4WnyKhv5vZF5SrPo0iEjwBvKU7imGFAV0wwj1yYfoRSJoZ+n" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js" integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.4.1/dist/js/bootstrap.min.js" integrity="sha384-wfSDF2E50Y2D1uUdj0O3uMBJnjuUD4Ih7YwaYd1iqfktj0Uod8GCExl3Og8ifwB6" crossorigin="anonymous"></script>
  
</body>
</html>