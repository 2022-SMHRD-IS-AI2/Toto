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
    <link href="${cPath}/resources/css/reset.css" rel="stylesheet">
    <title>Document</title>
</head>
<body>
    <div class="q-nav-profile">
        <a href="index.html">
            <img src="${cPath}/resources/images/logo.png">
        </a>
        <c:choose>
        <c:when test="${!empty memberVO}">
        <div class="profile">
            <div class="profile-img">
                <img src="${memberVO.m_profile}" alt="">
            </div>
            <div class="profile-info">
                <span>${memberVO.m_nick}</span>
                <span>${memberVO.m_email}</span>
                <div class="profile-info-button">
                    <button type="button" onclick="location.href='${cPath}/logout.do'">로그아웃</button>
                </div>
            </div>             
            
        </div>
        </c:when>
        <c:otherwise>
         <div class="profile">
            <div class="profile-img">
                <img src="${cPath}/resources/images/simpleImg.png" alt="">
            </div>
            <div class="profile-info">
                <span>로그인을</span>
                <span>해주세요</span>
                <div class="profile-info-button">
                    <button type="button" onclick="location.href='${cPath}/login.do'">로그인</button>
                </div>
            </div>             
            
        </div>
        </c:otherwise>
        </c:choose>
        

        <ul class="q-board">
            <li class="m-4"><a href="/연습용.html"><span class="q-board-span">문장생성</span> </a></li>
                <li class="m-4"><a href="/m_board.html"><span class="q-board-span">문항게시판</span> </a></li>
                <li class="m-4"><a href="/m_board.html"><span class="q-board-span">자료게시판</span> </a></li>
                <li class="m-4"><a href="/myprofile.html"><span class="q-board-span">마이페이지</span> </a></li>
        </ul>
    </div>
    <div class="change-title">
        <h2>Change Password</h2>
    </div>
    <div class="change">
        
        
        
        <div class="changeContent">
        
            
            <hr>
            <div class="changePassword">
                <form action="${cPath}/modifyPW.do">
                    <div class="changePassword-id">
                        <div class="col-md-2 ml-4">
                            <h6>이메일</h6>
                        </div>
                        <div class="col-md-2 ml-1">
                            <h5 id="id">${memberVO.m_email}</h5>
                        </div>
                    </div>

                    <input name = "m_nick" value="${memberVO.m_nick}" type="hidden">
                    <!-- 현재 비밀번호 -->
                    <div class="form-group row ml-5">
                        <label for="colFormLabelSm" class="col-sm-2 col-form-label col-form-label-sm">Email</label>
                        <div class="col-sm-8">
                          <input type="email" class="form-control form-control-sm" id="colFormLabelSm" placeholder="${memberVO.m_email}" readonly="readonly">
                        </div>
                    </div>

                    <!-- 새 비밀번호 -->
                    <div class="form-group row ml-5">
                        <label for="inputPassword5" class="col-sm-2 col-form-label col-form-label-sm">Password</label>
                        <div class="col-sm-8">
                            <input type="password" class="form-control form-control-sm" aria-describedby="passwordHelpBlock" name ="m_pw" id="inputPassword4">
                        </div>
                        
                       
                    </div>

                    <!-- 새 비밀번호 확인-->
                    <div class="form-group row ml-5">
                        <label for="inputPassword5" class="col-sm-2 col-form-label col-form-label-sm">Password</label>
                        <div class="col-sm-8">
                            <input type="password" class="form-control form-control-sm" aria-describedby="passwordHelpBlock" id="inputPassword5" onkeyup="checkPw()">
                    	<span style="color:red; font-size: 10px" id="checkingPw"></span>
                        </div>
                        
                                             
                    </div>
                    
                    	
                    <hr class="mb-4">
                    
                    <div class="btnChange">
                        <button class="btn btn-outline-primary btn-sm" type="submit">변경하기</button>
                    </div>
                    

                </form>
            </div>
        </div>


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
    <script type="text/javascript">
    function checkPw(){
	    let pw = document.getElementById("inputPassword4").value;
	    console.log(pw)
	    let pw2 = document.getElementById("inputPassword5").value;
	    console.log(pw2)
	    let text = "";
        if(pw == pw2){
            text = "비밀변호가 일치합니다.";
        }
        else{
            text = "비밀번호가 다릅니다.";
        }
        document.getElementById("checkingPw").innerText = text;
    }
    </script>
    <script src="https://code.jquery.com/jquery-3.4.1.slim.min.js" integrity="sha384-J6qa4849blE2+poT4WnyKhv5vZF5SrPo0iEjwBvKU7imGFAV0wwj1yYfoRSJoZ+n" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js" integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.4.1/dist/js/bootstrap.min.js" integrity="sha384-wfSDF2E50Y2D1uUdj0O3uMBJnjuUD4Ih7YwaYd1iqfktj0Uod8GCExl3Og8ifwB6" crossorigin="anonymous"></script>
    
</body>
</html>