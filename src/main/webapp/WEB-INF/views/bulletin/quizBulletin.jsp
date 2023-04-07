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
<link rel="stylesheet" type="text/css"
	href="${cPath}/resources/css/m_board.css">
</head>
<body>
	<div class="q-nav">
		<div class="q-nav-profile">
			<img src="${cPath}/resources/images/logo.png">
			<div class="profile">
				<div class="profile-img">
					<img src="${cPath}/resources/images/image.jpg" alt="">
				</div>
				<div class="profile-info">
					<span>${memberVO.m_nick}</span> <span>${memberVO.m_email}</span>
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

	<div class="text">문항게시판</div>
	<form action="${cPath}/registerBoard.do" method= "post"></form>

<input  type="hidden" name="b_f_or_q" value="0">
	<div class="contents">
		<hr>
		<div class="all-box">
			<div class="box">
				<a href="#">
					<table style="width: 290px; height: 170px;">
						<tr style="height: 40px;">
							<td>날짜</td>
							<td><fmt:formatDate value="${vo.indate }"
										pattern="yyyy-MM-dd" /></td>
						</tr>
						<tr>
							<td style="word-break: break-all;">내용</td>
						</tr>
					</table>
					<hr class="line">
					<table sylte="width: 290px; height: 75px;">
						<tr>
							<td>제목(댓글수)</td>
						</tr>
						<tr style="height: 50px;">
							<td>닉네임</td>
							<td>좋아요 6</td>
							<td>조회수 10</td>
						</tr>
						<c:forEach var="vo" items="${list}">
							<tr>
								<td>${vo.b_title}</td>
								<td>${memberVO.m_nick} }</td>
								<td><a href="${cPath}/get.do?num=${vo.b_num}">${vo.b_content}</a></td>
							<%-- 	<td>${vo.writer}</td>
								<td>${vo.count}</td> --%>
							</tr>
						</c:forEach>
					</table>
				</a>
			</div>
			<div class="box">B</div>
			<div class="box">C</div>
			<div class="box">D</div>
			<div class="box">E</div>
			<div class="box">F</div>
			<div class="box">G</div>
			<div class="box">H</div>
		</div>

		<ul class="w3-pagination">
			<li><a href="#">&laquo;</a></li>
			<li><a class="w3-blue" href="#">1</a></li>
			<li><a href="#">2</a></li>
			<li><a href="#">3</a></li>
			<li><a href="#">4</a></li>
			<li><a href="#">5</a></li>
			<li><a href="#">&raquo;</a></li>
		</ul>

		<select class="select">
			<option value="">제목</option>
			<option value="">닉네임</option>
			<option value="">아이디</option>
			<option value="">작성자</option>
		</select>

		<div class="search">
			<input type="text" placeholder="검색어를 입력해주세요.">
		</div>

		<div class="button">
			<button>검색</button>
			<button  onclick="location.href='${cPath}/writer.do'">글쓰기</button>
		</div>
	</div>

	<div class="position-right-top-side">
		<div class="banner-contents">
			<table style="width: 200px;">
				<thead>
					<tr>
						<th>봤던글</th>
					</tr>
				</thead>
				<tbody>
					<tr>
						<td style="word-break: break-all;"><a href="#">제목</a></td>
					</tr>
					<tr>
						<td style="word-break: break-all;"><a href="#">제목</a></td>
					</tr>
					<tr>
						<td style="word-break: break-all;"><a href="#">제목</a></td>
					</tr>
				</tbody>
			</table>
		</div>
	</div>
</body>
</html>