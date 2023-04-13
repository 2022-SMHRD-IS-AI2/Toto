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
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bootstrap@4.4.1/dist/css/bootstrap.min.css"
	integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh"
	crossorigin="anonymous">
<link href="${cPath}/resources/css/m_board.css" rel="stylesheet">

</head>
<body>

<jsp:include page="../left.jsp"></jsp:include>

	<div class="myquestion-title">
		<h2>문항게시판</h2>
	</div>
	<div class="myquestion-content">
		<div class="content-size">
			<table class="table text-center">
				<thead>
					<tr>
						<th scope="col">번호</th>
						<th scope="col">제목</th>
						<th scope="col">좋아요</th>
						<th scope="col">조회수</th>
						<th scope="col">생성일</th>
					</tr>
				</thead>

				<tbody>

					<tr>
						<th scope="row">1</th>
						<td class="hidden">
							<div>
								<a href="#" data-toggle="collapse" data-target="#demo1">Mark</a>
							</div>

						</td>
						<td>30</td>
						<td>600</td>
						<td>2023-04-04</td>
					</tr>

					<tr>
						<th scope="row">2</th>
						<td><a href="#">Mark</a></td>
						<td></td>
						<td></td>
						<td>2023-04-04</td>
					</tr>
					<tr>
						<th scope="row">3</th>
						<td><a href="#">Mark</a></td>
						<td></td>
						<td></td>
						<td>2023-04-04</td>
					</tr>
				</tbody>


			</table>

		</div>



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




	<div class="foot">
		<select class="select">
			<option value="">제목</option>

			<option value="">작성자</option>
		</select>

		<div class="search">
			<input type="text" placeholder="검색어를 입력해주세요.">
		</div>

		<div class="button">
			<button>검색</button>
		</div>
		<div class="button">
			<a href="write.html"><button>글쓰기</button></a>

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
	<script src="https://code.jquery.com/jquery-3.4.1.slim.min.js"
		integrity="sha384-J6qa4849blE2+poT4WnyKhv5vZF5SrPo0iEjwBvKU7imGFAV0wwj1yYfoRSJoZ+n"
		crossorigin="anonymous"></script>
	<script
		src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js"
		integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo"
		crossorigin="anonymous"></script>
	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@4.4.1/dist/js/bootstrap.min.js"
		integrity="sha384-wfSDF2E50Y2D1uUdj0O3uMBJnjuUD4Ih7YwaYd1iqfktj0Uod8GCExl3Og8ifwB6"
		crossorigin="anonymous"></script>
</body>
</html>