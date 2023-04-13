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
<title>Document</title>
<link rel="stylesheet" type="text/css"
	href="${cPath}/resources/css/writeBoard.css">
</head>
<body>
	<jsp:include page="../left.jsp"></jsp:include>

	<div class="write">게시판</div>

	<div class="w-contents">
		<hr>
		<form class="board_wrap" method="post"  enctype="mulitpart/form-data"
			action="${cPath}/registerBoard.do">
			<div class="board_write_wrap">
				<div class="board_write">
					<div class="title">
						<dl>
							<dt>제목</dt>
							<dd>
								<input type="text" placeholder="제목 입력" name="b_title">
								<select name="b_file_or_quiz">
									<option value="0">자료게시판</option>
									<option value="1">문항게시판</option>
								</select>
							</dd>
						</dl>
					</div>
					<div class="info">
						<dl>
							<dt>닉네임</dt>
							<dd>
								<input type="text" placeholder="${memberVO.m_nick}"
									readonly="readonly">
							</dd>
						</dl>
						<dl>
							<dt>파일첨부</dt>
							<dd>
								<input type="file"  class = "form-control-file border"
								   name="b_word" multiple="multiple">단어파일
							</dd>
							<dt></dt>
							<dd>
								<input type="file" name="b_file1">자료파일
							</dd>
							<dt></dt>
							<dd>
								<input type="file" name="b_file2">자료파일
							</dd>
						</dl>
					</div>
					<div class="cont">
						<textarea placeholder="내용 입력" name="b_content"></textarea>
					</div>
					<div class="cont1">
						<textarea placeholder="지문 입력" name="q_paragraph"></textarea>
						<textarea placeholder="문제 입력" name="b_quiz"></textarea>
						<input placeholder="선지1" name="q_wrong1"> <input
							placeholder="선지2" name="q_wrong2"> <input
							placeholder="선지3" name="q_wrong3"> <input
							placeholder="정답" name="q_answer">
						<textarea placeholder="해설 입력" name="q_comment"></textarea>
					</div>
				</div>
				<div class="bt_wrap">
					<input type="submit"  value="등록" ><a href="${cPath}/fileSelect.do">취소</a>
				</div>
			</div>
		</form>
	</div>
</body>
</html>