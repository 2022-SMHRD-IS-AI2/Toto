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

</head>
<body>
    <jsp:include page="../left.jsp"></jsp:include>

    <div class="write">게시판</div>

    <div class="w-contents">
        <hr>
        <form action="${cPath}/registerBoard.do" method="post">
        <div class="board_wrap">
            <div class="board_write_wrap" onclick="location.href='${cPath}/fileBulletin.do'">
                <div class="board_write">
                    <div class="title">
                        <dl>
                            <dt>제목</dt>
                            <dd><input type="text" placeholder="제목 입력" class="form-control" placeholder="Enter title" name ="b_title"></dd>
                        </dl>
                    </div>
                    <div class="info">
                        <dl>
                            <dt>닉네임</dt>
                            <dd><input type="text" value="${memberVO.m_nick}" name= "m_nick" readonly="readonly"></dd>
                        </dl>
                        <dl>
                            <dt>파일첨부</dt>
                            <dd><input type = "file"  name="b_file1"></dd>
                        </dl>
                    </div>
                    <div class="cont">
                        <textarea placeholder="내용 입력"  name="b_content"></textarea>
                    </div>
                    <div class="cont1">
                        <textarea placeholder="문제/해설 입력" name="q_comment"></textarea>
                    </div>
                </div>
                <div class="bt_wrap">
                    <input type="submit">
                    <a href="list.html">취소</a>
                </div>
            </div>
        </div>
        </form>
    </div>
</body>
</html>