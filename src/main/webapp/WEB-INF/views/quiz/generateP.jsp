<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<c:set var="cPath" value="${pageContext.request.contextPath}" />
<!DOCTYPE html>
<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bootstrap@4.4.1/dist/css/bootstrap.min.css"
	integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh"
	crossorigin="anonymous">
<link rel="stylesheet" href="${cPath}/resources/css/sentence.css">
<title>Document</title>
</head>
<body>
	<div class="q-nav">
		<div class="q-nav-profile">
					<img src="${cPath}/resources/images/logo.png">
			<!-- 로그인 했을 때 세션이름을 memberSession이라고 하겠음 -->
			<c:choose>
				<c:when test="${!empty memberSession}">
					<div class="profile">
						<div class="profile-img">
							<img src="${cPath}/resources/images/hl.jpg" alt="">
						</div>
						<div class="profile-info">
							<span>준연</span> <span>ziririsky8@naver.com</span>
							<div class="profile-info-button">
								<button type="button" onclick="location.href='${cPath}/logout.do'">로그아웃</button>
							</div>
						</div>
					</div>
				</c:when>
				<c:otherwise>

					<div class="profile">
						<div class="profile-img">
							<img src="${cPath}/resources/images/hl.jpg" alt="">		<!-- 기본 이미지 만들기! -->
						</div>
						<div class="profile-info">
							<span>로그인을</span> <span>해주세요!</span>
							<div class="profile-info-button">
								<button type="button" onclick="location.href='${cPath}/login.do'">로그인</button>
							</div>
						</div>
					</div>
				</c:otherwise>
			</c:choose>


			<ul class="q-board">
				<li class="m-4"><a href="#"><span class="q-board-span">문장생성</span>
				</a></li>
				<li class="m-4"><a href="#"><span class="q-board-span">문항게시판</span>
				</a></li>
				<li class="m-4"><a href="#"><span class="q-board-span">자료게시판</span>
				</a></li>
				<li class="m-4"><a href="#"><span class="q-board-span">마이페이지</span>
				</a></li>
			</ul>
		</div>
		<div class="q-nav2">
			<div class="q-nav2-question">
				<div class="q-nav2-content">
					<div class="q-nav2-content-h2">
						<h4>문제 생성</h4>
					</div>
					<div class="creation"></div>
				</div>


			</div>

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