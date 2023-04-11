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
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bootstrap@4.4.1/dist/css/bootstrap.min.css"
	integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh"
	crossorigin="anonymous">
<link href="${cPath}/resources/css/reset.css" rel="stylesheet">
<title>Document</title>
</head>
<body>
	<div class="q-nav-profile">
		<a href="${cPath}/"> <img src="${cPath}/resources/images/logo.png">
		</a>
		<c:choose>
			<c:when test="${!empty memberVO}">
				<div class="profile">
					<div class="profile-img">
						<img src="${memberVO.m_profile}" alt="">
					</div>
					<div class="profile-info">
						<span>${memberVO.m_nick}</span> <span>${memberVO.m_email}</span>
						<div class="profile-info-button">
							<button type="button"
								onclick="location.href='${cPath}/logout.do'">로그아웃</button>
						</div>
					</div>

				</div>
		<ul class="q-board">
			<li class="m-4"><a href="${cPath}/generateP.do"><span
					>문장생성</span> </a></li>
			<li class="m-4"><a href="${cPath}/quizSelect.do?num=1"><span
					>문항게시판</span> </a></li>
			<li class="m-4"><a href="${cPath}/fileSelect.do?num=0"><span
					>자료게시판</span> </a></li>
			<li class="m-4"><a href="${cPath}/myPage"><span
					>마이페이지</span> </a></li>
		</ul>
	</div>
			</c:when>
			<c:otherwise>
				<div class="profile">
					<div class="profile-img">
						<img src="${cPath}/resources/images/simpleImg.png" alt="">
					</div>
					<div class="profile-info">
						<span>로그인을</span> <span>해주세요!</span>
						<div class="profile-info-button">
							<button type="button" onclick="location.href='${cPath}/login.do'">로그인</button>
						</div>
					</div>

				</div>
				<ul class="q-board">
			<li class="m-4"><a href="${cPath}/generateP.do"><span
					>문장생성</span> </a></li>
			<li class="m-4"><a href="${cPath}/login.do"><span
					>문항게시판</span> </a></li>
			<li class="m-4"><a href="${cPath}/login.do"><span
					>자료게시판</span> </a></li>
			<li class="m-4"><a href="${cPath}/login.do"><span
					>마이페이지</span> </a></li>
		</ul>
	</div>
			</c:otherwise>
		</c:choose>


	
</body>
</html>
