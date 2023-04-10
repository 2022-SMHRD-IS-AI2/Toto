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
  <meta name="viewport" content="width=device-width, initial-scale=1.0"> <!-- displays site properly based on user's device -->

  <!-- <link rel="icon" type="image/png" sizes="32x32" href="./images/favicon-32x32.png"> -->
  <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.4.1/dist/css/bootstrap.min.css" integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh" crossorigin="anonymous">
  <link rel="stylesheet" href="${cPath}/resources/css/mypage.css">
  <link rel="stylesheet" href="${cPath}/resources/css/style.css">

<script type="text/javascript">
  	$(document).ready(function(){
  		
  		// 버튼일 클릭되었을때 처리
	$("button").on("click", function(e){
			var btn=$(this).data("btn");	// data-btn
				if(btn == "remove"){
					location.href="${cPath}/remove.do?num="+${vo.m_num};
				}else if(btn == "modify"){
					location.href="${cPath}/modify.do?num="+${vo.m_num};	// get
				}
			
	
			});
  		
  	});
  </script>
  <title>Frontend Mentor | Profile card component</title>

</head>
<body>
    <div class="q-nav-profile">
        <a href="${cPath}/">
            <img src="{cPath}/resources/images/logo.png">
        </a>
        <c:choose>
		<c:when test="${!empty memberVO}">
        <div class="profile">
            <div class="profile-img">
                <img src="{cPath}/resources/images/hl.jpg" alt="">
            </div>
            <div class="profile-info">
                <span>${memberVO.m_nick}</span>
                <span>${memberVO.m_email}</span>
                <div class="profile-info-button">
                    <button type="button" onclick="location.href ='${cPath}/logout.do'">로그아웃</button>
                </div>
            </div>             
            
        </div>
		</c:when>
		<c:otherwise>
		<div class="profile">
            <div class="profile-img">
                <img src="{cPath}/resources/images/simpleImg.png" alt="">
            </div>
            <div class="profile-info">
                <span>로그인을</span>
                <span>해주세요</span>
                <div class="profile-info-button">
                    <button type="button" onclick="location.href = '${cPath}/login.do'">로그인</button>
                </div>
            </div>             
            
        </div>
		</c:otherwise>
        </c:choose>
        

        <ul class="q-board">
            <li class="m-4"><a href="${cPath}/generateP.do"><span class="q-board-span">문장생성</span> </a></li>
            <li class="m-4"><a href="#"><span class="q-board-span">문항게시판</span> </a></li>
            <li class="m-4"><a href="${cPath}/registerBoard.do"><span class="q-board-span">자료게시판</span> </a></li>
            <li class="m-4"><a href="${cPath}/myPage"><span class="q-board-span">마이페이지</span> </a></li>
        </ul>
    </div>


    <div class="mypage-title">
        <h2>Mypage</h2>
    </div>
    
    <div class="page-content">
    <c:if test="${!empty memberVO}">
        <div class="mypofile-form">
            <div class="myprofile-form1">
                <div class="myprofile-img">
                    <div class="card">
                        <div class="card-body">
                            <div>
                                <img src="${cPath}/resources/images/hl.jpg" alt="photo" class="rounded-circle positioned">
                            </div>
                            <div class="name">
                                <p class="w700">${memberVO.m_nick}</p>
                            </div>
                            <div class="location">
                                <p class="text-muted">${memberVO.m_career}</p>
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
                          <span class="text-muted info ">${memberVO.m_name}</span>
                        </div>
                
                        <div class="d-flex flex-column gap-2">
                         
                          <span class="fw-semibold mb-0 f-18">닉네임</span>
                          <span class="text-muted info">${memberVO.m_nick}</span>
                        </div>
                
                        <div class="d-flex flex-column gap-2">
                      
                          <span class="fw-semibold mb-0 f-18">email</span>
                          <span class="text-muted info">${memberVO.m_email}</span>
                        </div>
                
                        <div class="d-flex flex-column gap-2">     
                          <span class="fw-semibold mb-0 f-18">전화번호</span>
                          <span class="text-muted info">${memberVO.m_phone}</span>
                        </div>
                        <div class="d-flex flex-column gap-2 ">     
                            <span class="fw-semibold mb-0 f-18">소속</span>
                            <span class="text-muted info w3">${memberVO.m_career}</span>
                        </div>
                      </div>
                
                
            </div>
                <div class="myprofileTop">
                    <div class="myprofileTop-Title" >
                        <span class="fw-semibold mb-0">대표문제</span>
                    </div>
                    
                    <div class="myprofileTop-quiz"><p>1</p><p>2</p><p>3</p></div>
                </div>
                <div class="btnMypage">
                    <button type="submit" class="btn btn-outline-primary btn-sm" onclick="location.href ='${cPath}/modify.do'">수정하기</button>
                </div>
            
        </div>
    </c:if>
        <!-- myprofile 끝! -->
    </div>

    <div class="side-menu">
        <h2>Side Menu</h2>
        <ul class="side-menu-content">
            <li><a href="${cPath}/myQuestion.do">내 문제</a></li>
            <li><a href="${cPath}/modify.do">내정보 수정</a></li>
           
            <li><a href="${cPath}/modifyPW.do">비밀번호 변경</a></li>
            <li><a href="${cPath}/remove.do">회원 탈퇴</a></li>
        </ul>
    </div>
    <script src="https://code.jquery.com/jquery-3.4.1.slim.min.js" integrity="sha384-J6qa4849blE2+poT4WnyKhv5vZF5SrPo0iEjwBvKU7imGFAV0wwj1yYfoRSJoZ+n" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js" integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.4.1/dist/js/bootstrap.min.js" integrity="sha384-wfSDF2E50Y2D1uUdj0O3uMBJnjuUD4Ih7YwaYd1iqfktj0Uod8GCExl3Og8ifwB6" crossorigin="anonymous"></script>
  
</body>
</html>