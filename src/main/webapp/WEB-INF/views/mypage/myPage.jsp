<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<c:set var="cPath" value="${pageContext.request.contextPath}" />
<!DOCTYPE html>
<script type="text/javascript">
  	$(document).ready(function(){
  		
  		// 버튼일 클릭되었을때 처리
	$("button").on("click", function(e){
			var btn=$(this).data("btn");	// data-btn
				if(btn == "list"){
					location.href="${cpath}/list.do"
				}else if(btn == "remove"){
					location.href="${cpath}/remove.do?num="+${vo.m_num};
				}else if(btn == "modify"){
					location.href="${cpath}/modify.do?num="+${vo.m_num};	// get
				}
	
			});
  		
  	});
  
  
  
  </script>
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
                <span>${MemberVO.m_nick}</span>
                <span>${MemberVO.m_nick}</span>
                <div class="profile-info-button">
                    <button type="button" ><a href="#">로그아웃</a></button>
                </div>
            </div>             
            
        </div>
        

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
   	 <form action="${cPath}/modify.do" method ="post">
    <div class="page-content">
        <form class="mypage-form" action="${cPath}/updateMy.do">
            <div class="mypage-form1">
                <div class="mypage-img">
                    <img src="${cPath}/resources/images/hl.jpg">
                    <label for="ex_file">사진 업로드</label>
                    <input type="file" name="fileToUpload" id="fileToUpload">
                </div>
                <div class="mypage-form1-content">
                    <div class="form-row">
                        <div class="form-group col">
                          <label for="inputEmail4">${vo.m_name}</label>
                          <input type="email" class="form-control" id="inputEmail4">
                        </div>
                        <div class="form-group col">
                          <label for="inputPassword4">${vo.m_nick }</label>
                          <input type="password" class="form-control" id="inputPassword4">
                        </div>
                    </div>
                    <div class="form-row">
                        <div class="form-group col">
                          <label for="inputEmail4">${vo.m_email}</label>
                          <input type="email" class="form-control" id="inputEmail4">
                        </div>
                        <div class="form-group col">
                          <label for="inputPassword4">${vo.m_phone }</label>
                          <input type="password" class="form-control" id="inputPassword4">
                        </div>
                    </div>
                    <div style="width: 420px;">
                        <div class="form-group ">
                            <label for="inputAddress">${vo.m_career }</label>
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
            
            		
            	</form>
               
            </div>
            

                      
                
        </form>
    </div>
   
   
    

    <div class="side-menu">
        <h2>Side Menu</h2>
        <ul class="side-menu-content">
            <li><a type = "button"  data- btn="list" href="/mypage.html">내정보</a></li>
            <li><a type = "button"  data- btn="myqustion" href="/myquestion.html">내 문제</a></li>
            <li><a type = "button"  data- btn="modify"href="/change.html">비밀번호 변경</a></li>
            <li><a type = "button"  data- btn="remove"href="/delete.html">회원 탈퇴</a></li>
            
        </ul>
    </div>
    <script src="https://code.jquery.com/jquery-3.4.1.slim.min.js" integrity="sha384-J6qa4849blE2+poT4WnyKhv5vZF5SrPo0iEjwBvKU7imGFAV0wwj1yYfoRSJoZ+n" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js" integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.4.1/dist/js/bootstrap.min.js" integrity="sha384-wfSDF2E50Y2D1uUdj0O3uMBJnjuUD4Ih7YwaYd1iqfktj0Uod8GCExl3Og8ifwB6" crossorigin="anonymous"></script>
</body>
</html>