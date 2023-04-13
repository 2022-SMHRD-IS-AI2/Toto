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
<<<<<<< HEAD
    < <link rel="stylesheet" type="text/css"	href="${cPath}/resources/css/sentence.css">
    <title>Document</title>
</head>
<body>
    <div class="q-nav">
        <div class="q-nav-profile">
            <img src="${cPath}/resources/images/logo.png" >
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
                    <li class="m-4"><a href="${cPath}/generateP.do">문장생성 </a></li>
                <li class="m-4"><a href="${cPath}/registerBoard.do">문항게시판 </a></li>
                <li class="m-4"><a href="${cPath}/registerBoard.do">자료게시판 </a></li>
                <li class="m-4"><a href="${cPath}/myPage">마이페이지 </a></li>
            </ul>
        </div>
        <div class="question-title">
            <h2>문제 생성</h2>
        </div>

        <div class="creation">
            <div class="creation-download">
                <form>
                    <label>
                      <input type="checkbox" name="item" value="item1"> 숙어    
                    </label>
                    
                    <label>
                      <input type="checkbox" name="item" value="item2"> 단어
                    </label> 
                    <button type="button" onclick="downloadSelectedItems()">Download</button>
                </form>

            </div>
            
            <div class="">
                <div class="creation-content">
                    
                    <div class="creationQuestion"></div>
                    <div class="creationButton">
                        <button id="saveBtn">내 질문 저장하기</button>
                        <button id="postBtn">게시판에 올리기</button>

                    </div>
                </div>                
            </div>
        
        </div>
    </div>
    
    <script src="${cPath}/resources/js/question.js"></script>
=======
    <link rel="stylesheet" href="${cPath}/resources/css/generateP.css"> 
    <script src="https://code.jquery.com/jquery-3.6.1.min.js"></script>
    <link rel="stylesheet" href="${cPath}/resources/css/generateQ.css">
    <title>문제 생성</title>
</head>
<body>
    <jsp:include page="../left.jsp"></jsp:include>
            <div class="gpt">
        <div class="gpt-content2" style="overflow-y:auto">
            
        <div class="content-body" >
            <div id="content-body">
                <p>asdasdasd</p> 
                
                
             </div>
             <div class="content-form-btn">
                <button>저장</button>
            </div>
             

        </div>
        <div class="content-body">
            <form id="content-form">
                <div class="coldiv">
                    <div class="content-form-ta">
                        <label for="content-text">문단 입력</label>
                        <textarea id="content-text" name="content-text"></textarea>
                    </div>
                   
                    <div class="choices">
                        <div>
                            <label>
                                <input type="radio" name="radio-group" value="grammar" id="grammer">
                                문법
                              </label>
                              
                              <label>
                                <input type="radio" name="radio-group" value="vocabulary" id="words">
                                어휘
                              </label>
        
                        </div>
                         
                        <div>
                            <button onclick="saveCheckedRadio()"  type="submit" class="btn-sv">생성</button>
                        </div>
                         
                    </div>      

                </div>
                
              </form>
        </div>
       
            
        </div>
       
    </div>
    


    
    
    
    <script src="https://code.jquery.com/jquery-3.4.1.slim.min.js" integrity="sha384-J6qa4849blE2+poT4WnyKhv5vZF5SrPo0iEjwBvKU7imGFAV0wwj1yYfoRSJoZ+n" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js" integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.4.1/dist/js/bootstrap.min.js" integrity="sha384-wfSDF2E50Y2D1uUdj0O3uMBJnjuUD4Ih7YwaYd1iqfktj0Uod8GCExl3Og8ifwB6" crossorigin="anonymous"></script>

>>>>>>> branch 'master' of https://github.com/2022-SMHRD-IS-AI2/Toto.git
</body>
</html>