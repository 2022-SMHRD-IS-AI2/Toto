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
    <link rel="stylesheet" type="text/css" href="${cPath}/resources/css/in_board.css">
    <script src="https://kit.fontawesome.com/c3a31cbb00.js" crossorigin="anonymous"></script>
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

        <div class="chat-board">
            <div class="reviewer-info-header">
                <div class="reviewer-info">
                    <span class="reviewer-name">닉네임</span>
                    <span class="reviewer-date">2023년 04월 05일</span>
                </div>
            </div>

            <div class="review-body">
                <div class="review-contents">
                    잘 알려주셔서 감사합니다
                </div>
                <button type="button" class="reviewer-img"><i class="fa-solid fa-heart"> 0</i></button>
            </div>
        </div>
        
        <div class="chat">
            <!-- <div class="comment1">
                <h3>댓글</h3>
            </div> -->
            <div class="comment2">
                <div class="comment-input">
                    <input type="text" placeholder="댓글을 입력해주세요">
                </div>
                <button type="submit" class="comment-btn">등록</button>
            </div>
        </div>

        <div class="btn">
            <i class="fa-solid fa-arrow-left fa-l"></i>
            <button type="button" class="button" onclick="history.back()">이전글</button>
            <button type="button" class="button" onclick="history.forward()">다음글</button>
            <i class="fa-solid fa-arrow-right fa-l"></i>
        </div>
    </div>
</body>
</html>