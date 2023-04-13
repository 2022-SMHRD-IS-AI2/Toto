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
<link rel="stylesheet" type="text/css"	href="${cPath}/resources/css/m_board.css">
</head>
<body>
	<jsp:include page="../left.jsp"></jsp:include>

	<div class="text">문항게시판</div>
	<form action="${cPath}/registerBoard.do" method= "post"></form>

<input  type="hidden" name="b_f_or_q" value="0">
	<div class="contents">
		<hr>
		<div class="all-box"   type="button">
		
		<c:forEach var="vo" items="${fileVO}">
			<div class="box">
				<a href="${cPath}/seeInBoard.do?b_num=${vo.b_num}">
					<table style="width: 290px; height: 170px;">
						<tr style="height: 40px;">
							<td>날짜</td>
							<td><fmt:formatDate value="${vo.b_date}"
										pattern="yyyy-MM-dd" /></td>
						</tr>
						<tr>
							<td style="word-break: break-all;">내용</td>
						</tr>
					</table>
					<hr class="line">
					<table sylte="width: 290px; height: 75px;">
						<tr>
							<td>${vo.b_title}(댓글수)</td>
						</tr>
						<tr style="height: 50px;">
							<td>${memberVO.m_nick}</td>
							<td>좋아요 6</td>
							<td>조회수 ${vo.b_select}</td>
						</tr>
					</table>
				</a>
			</div>
		</c:forEach>
			<div class="box">B</div>
			<div class="box">C</div>
			<div class="box">D</div>
			<div class="box">E</div>
			<div class="box">F</div>
			<div class="box">G</div>
			<div class="box">H</div>
		</div>
		<div class='navigation-center'>
		<nav aria-label="Page navigation example">
		  <ul class="pagination">
		    <li class="page-item">
		      <a class="page-link" href="#" aria-label="Previous">
		        <span aria-hidden="true">&laquo;</span>
		      </a>
		    </li>
		    <li class="page-item"><a class="page-link" href="#">1</a></li>
		    <li class="page-item"><a class="page-link" href="#">2</a></li>
		    <li class="page-item"><a class="page-link" href="#">3</a></li>
		    <li class="page-item">
		      <a class="page-link" href="#" aria-label="Next">
		        <span aria-hidden="true">&raquo;</span>
		      </a>
		    </li>
		  </ul>
		</nav>
		</div>

				
		<select class="select">
			<option value="b_title">제목</option>
			<option value="b_nick">작성자</option>
			<option value="b_content">내용</option>
		</select>

		<div class="search">
			<input type="text" placeholder="검색어를 입력해주세요." name="search">
		</div>

		<div class="button">
			<button>검색</button>
			<button  onclick="location.href='${cPath}/registerBoard.do'">글쓰기</button>
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