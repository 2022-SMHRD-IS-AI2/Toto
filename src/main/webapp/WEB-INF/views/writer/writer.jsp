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
    <link rel="stylesheet" type="text/css" href="write.css">
</head>
<body>
    <div class="q-nav">
        <div class="q-nav-profile">
            <img src="${cPath}/resources/images/logo.png" >
            <div class="profile">
                <div class="profile-img">
                    <img src="${cPath}/resources/images/image.jpg" alt="">
                </div>
                <div class="profile-info">
                    <span>준연</span>
                    <span>ziririsky8@naver.com</span>
                </div>             
            </div>
        
            <ul class="q-board">
                <li>문장생성</li>
                <li>문항게시판</li>
                <li>자료게시판</li>
                <li>마이페이지</li>
            </ul>
        </div>
    </div>

    <div class="write">게시판</div>

    <div class="w-contents">
        <hr>
        <div class="board_wrap">
            <div class="board_write_wrap">
                <div class="board_write">
                    <div class="title">
                        <dl>
                            <dt>제목</dt>
                            <dd><input type="text" placeholder="제목 입력"></dd>
                        </dl>
                    </div>
                    <div class="info">
                        <dl>
                            <dt>닉네임</dt>
                            <dd><input type="text" placeholder="닉네임 입력"></dd>
                        </dl>
                        <dl>
                            <dt>파일첨부</dt>
                            <dd><input type = "file" ></dd>
                        </dl>
                    </div>
                    <div class="cont">
                        <textarea placeholder="내용 입력"></textarea>
                    </div>
                    <div class="cont1">
                        <textarea placeholder="문제/해설 입력"></textarea>
                    </div>
                </div>
                <div class="bt_wrap">
                    <input type="submit">
                    <a href="list.html">취소</a>
                </div>
            </div>
        </div>
    </div>
</body>
</html>