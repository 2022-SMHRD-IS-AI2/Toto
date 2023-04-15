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
    <title>Document</title>

    <script src="https://kit.fontawesome.com/c3a31cbb00.js" crossorigin="anonymous"></script>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.4.1/dist/css/bootstrap.min.css" integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh" crossorigin="anonymous">
    <link rel="stylesheet" type="text/css" href="${cPath}/resources/css/in_board.css">
</head>
<body>
<jsp:include page="../left.jsp"></jsp:include>
<c:choose>
<c:when test="${info.b_num == 1}">
<div class="text-1">문항게시판</div>
</c:when>
<c:otherwise>
<div class="text-1">자료게시판</div>
</c:otherwise>
</c:choose>


    <div class="q-contents">
        <div class="q-contents-text-2">
            <div class="text-2">
                <!-- <span style="background-color: aliceblue;">제목</span>
                <span style="background-color: antiquewhite;">닉네임</span> -->
                <div>${info.b_title}</div>
                <div>${info.m_nick}</div>
            </div>

        </div>
        
        <hr>
        <div class="text-3">
            <!-- <div>자료 0개</div>
            <div>등록날짜</div> -->
            <p>자료0개 <fmt:formatDate value="${vo.indate}" pattern="yyyy-MM-dd" /></p>
        </div>
        <div class="all-text-box">
            <div class="text-box1">
                <table style="width: 1000px;">
                    <tr>
                        <td>
                            ${fn:replace(info.b_content, newLineChar, "<br/>")}
                        </td>
                    </tr>
                    
                </table>
            </div>
            <div class="text-box2">
                <table style="width: 1000px;">
                    <tr><th>[문제]</th></tr>
                    <tr>
                        <td>
                            Which of the following best describe the reason why the company is investing in a new line of eco-friendly cleaning supplies?
                        </td>
                    </tr>
                    <tr><th>[해설]</th></tr>
                    <tr>
                        <td>
                            문제의 질문은 "환경 친화적 청소 용품 라인 개발에 대한 회사의 이유는 무엇인가? 입니다."
                        </td>
                    </tr>
                </table>
            </div>
        </div>

        <div class="chat-btn">
            <div class="chat-btn1">
                <button type="button" class="btn btn-primary chat-btn1-button1" onclick="toggleHeart()">
                    <i class="fa-solid fa-heart">
                        
                    </i>
                    <span id="heartCount">0</span>
                
                </button>

                
            </div>

            <div class="chat-btn2">
                <button type="button" class="btn btn-primary">수정</button>
                <button type="button" class="btn btn-primary">삭제</button>
                
            </div>
        </div>

       
        <div id="comments" class="container">
            <form id="comment-form">
                <div class="form-group">
                  <label for="comment-body">댓글:</label>
                  <input id="comment-body" name="comment-body" class="form-control" required></input>
                </div>
                <div class="form-group-btn">
                  <button type="submit" class="btn btn-primary">등록</button>
                </div>
                
      
              </form> 
              <c:choose>
			<c:when test="${!empty reple}">
            <c:forEach var="repleVO" items="${reple}">
            <div class="comment">
                <div class="comment-img">
                    <!-- <img class="profile-pic" src="/image/hl.jpg" alt="프로필 사진"> -->
                </div>
                
                <div class="comment-details">
                    <div>
                        <h6 class="comment-author">${repleVO.m_nick}</h4>
                    </div>
                    
                    
                    
                    <div class="comment-actions">
                        <p class="comment-text">${repleVO.r_content}</p>
                        <span class="comment-date"><fmt:formatDate value="${repleVO.r_date}" pattern="yyyy-MM-dd" /></span>
                    
                    </div>
                </div>
            </div> 
            </c:forEach>
			</c:when>
			<c:otherwise>
			<div class="comment">
                <div class="comment-img">
                    <!-- <img class="profile-pic" src="/image/hl.jpg" alt="프로필 사진"> -->
                </div>
                
                <div class="comment-details">
                    <%-- <div>
                        <h6 class="comment-author">${repleVO.m_nick}</h4>
                    </div>
                    <div class="comment-actions">
                        <p class="comment-text">${repleVO.r_content}</p>
                        <span class="comment-date"><fmt:formatDate value="${repleVO.r_date}" pattern="yyyy-MM-dd" /></span>
                    </div> --%>
                    <p>댓글이 없습니다! 첫 댓글 작성해보세요!</p>
                </div>
            </div> 
			</c:otherwise>
              </c:choose>
              
            <div class="comment-footer">
                <button class="chat-btn1-button2" onclick="toggleUp()">
                    <img class="empty" src="image/handUp.svg">
                    <img class="filled" src="image/handUpfill.svg" style="display: none;">
                </button>
                  <span id="svgCount">0</span>
                <button class="chat-btn1-button3" onclick="toggleDown()" >
                    <img class="empty" src="image/handDown.svg">
                    <img class="filled" src="image/handDownfill.svg" style="display: none;">
                </button>
                  
            </div>
            <nav aria-label="Page navigation example">
                <ul class="pagination justify-content-between">
                  <li class="page-item disabled">
                    <a class="page-link" href="#" tabindex="-1" aria-disabled="true">이전글</a>
                  </li>
                  <li class="page-item">
                    <a class="page-link" href="#">다음글</a>
                  </li>
                </ul>
              </nav>
           
            
            
          </div>
          
          
    </div>

    <script>

        var heartButton = document.querySelector('.chat-btn1-button1');
        var heartCount = document.getElementById('heartCount');
       
        var isHearted = false;
        var count = 0;

        function toggleHeart() {
        if (isHearted) {
            // 색깔 원상태로 돌리기
            heartButton.style.color = 'white';
            count -= 1;
        } else {
            // 색깔 변경하고 개수 증가시키기
            heartButton.style.color = 'red';
            count += 1;
        }

        isHearted = !isHearted;
        heartCount.textContent = count.toString();
        
        }
    </script>
    
    <script>
        var isUpVoted = false;
        var isDownVoted = false;
        var svgCount = 0;
      
        function toggleUp() {
          var upButton = document.querySelector('.chat-btn1-button2');
          var downButton = document.querySelector('.chat-btn1-button3');
          var svgCountElem = document.getElementById('svgCount');
          var emptyImg = upButton.querySelector('.empty');
          var filledImg = upButton.querySelector('.filled');
      
          if (isUpVoted) {
            // 이미 upvote한 경우, upvote 취소
            emptyImg.style.display = '';
            filledImg.style.display = 'none';
            svgCount -= 1;
          } else {
            // upvote한 경우, upvote 추가
            emptyImg.style.display = 'none';
            filledImg.style.display = '';
            svgCount += 1;
      
            if (isDownVoted) {
              // 이미 downvote한 경우, downvote 취소
              toggleDown();
            }
          }
      
          isUpVoted = !isUpVoted;
          svgCountElem.textContent = svgCount.toString();
      
         
        }
      
        function toggleDown() {
          var upButton = document.querySelector('.chat-btn1-button2');
          var downButton = document.querySelector('.chat-btn1-button3');
          var svgCountElem = document.getElementById('svgCount');
          var emptyImg = downButton.querySelector('.empty');
          var filledImg = downButton.querySelector('.filled');
      
          if (isDownVoted) {
            // 이미 downvote한 경우, downvote 취소
            emptyImg.style.display = '';
            filledImg.style.display = 'none';
            
          } else {
            // downvote한 경우, downvote 추가
            emptyImg.style.display = 'none';
            filledImg.style.display = '';
            
      
            if (isUpVoted) {
              // 이미 upvote한 경우, upvote 취소
              toggleUp();
            }
          }
      
          isDownVoted = !isDownVoted;
          svgCountElem.textContent = svgCount.toString();
      
         
          
        }
    </script>
    
   
    <script src="https://code.jquery.com/jquery-3.4.1.slim.min.js"
        integrity="sha384-J6qa4849blE2+poT4WnyKhv5vZF5SrPo0iEjwBvKU7imGFAV0wwj1yYfoRSJoZ+n"
        crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js"
        integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo"
        crossorigin="anonymous"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js"
        integrity="sha384-wfSDF2E50Y2D1uUdj0O3uMBJnjuUD4Ih7YwaYd1iqfktj0Uod8GCExl3Og8ifwB6"
        crossorigin="anonymous"></script>
</body>
</html>