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

<div class="text-1">문항게시판</div>

    <div class="q-contents">
        <div class="text-2">
            <!-- <span style="background-color: aliceblue;">제목</span>
            <span style="background-color: antiquewhite;">닉네임</span> -->
            <div>제목</div>
            <div>닉네임</div>
        </div>
        <hr>
        <div class="text-3">
            <!-- <div>자료 0개</div>
            <div>등록날짜</div> -->
            <p>자료0개 23-04-05</p>
        </div>
        <div class="all-text-box">
            <div class="text-box1">
                <table style="width: 1000px;">
                    <tr>
                        <td>
                            안녕하세요. 환경에 관해 문제를 준비해봤습니다.
                        </td>
                    </tr>
                    <tr>
                        <td>
                            "Due to the recent increase in demand for environmentally friendly products, our company has decided to invest in developing a new line of eco-friendly cleaning supplies."
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
                <button type="button" class="chat-btn1-button1"><i class="fa-solid fa-heart"> 0</i></button>
                <button type="button" class="chat-btn1-button1">댓글<i class="fa-solid fa-check"></i></button>
            </div>

            <div class="chat-btn2">
                <button type="button" class="chat-btn1-button1">수정</button>
                <button type="button" class="chat-btn1-button1">삭제</button>
            </div>
        </div>

       
        <div id="comments" class="container">
            <h2>댓글</h2>
            <ul id="comment-list" class="list-group mt-3"></ul>
            <form id="comment-form">
              <div class="form-group">
                <label for="comment-body">댓글:</label>
                <textarea id="comment-body" name="comment-body" class="form-control" required></textarea>
              </div>
              <div class="form-group-btn">
                <button type="submit" class="btn btn-primary">댓글 등록</button>
              </div>
              <nav aria-label="Page navigation example">
                <ul class="pagination justify-content-center">
                  <li class="page-item disabled">
                    <a class="page-link" href="#" tabindex="-1" aria-disabled="true">이전글</a>
                  </li>
                  <li class="page-item">
                    <a class="page-link" href="#">다음글</a>
                  </li>
                </ul>
              </nav>
              
            </form> 
          </div>
          
          
    </div>
    <script>
        const commentForm = document.getElementById('comment-form');
const commentList = document.getElementById('comment-list');

commentForm.addEventListener('submit', function(event) {
  event.preventDefault();
  const nameInput = document.getElementById('comment-name');
  const bodyInput = document.getElementById('comment-body');
  const name = nameInput.value;
  const body = bodyInput.value;
  const comment = { name, body };
  const commentItem = createCommentItem(comment);
  commentList.appendChild(commentItem);
  nameInput.value = '';
  bodyInput.value = '';
});

function createCommentItem(comment) {
  const li = document.createElement('li');
  const namePara = document.createElement('p');
  namePara.textContent = comment.name;
  const bodyPara = document.createElement('p');
  bodyPara.textContent = comment.body;
  li.appendChild(namePara);
  li.appendChild(bodyPara);
  return li;

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