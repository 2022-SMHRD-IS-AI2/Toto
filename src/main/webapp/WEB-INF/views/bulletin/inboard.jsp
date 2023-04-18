<%@page import="java.util.ArrayList"%>
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

<script src="https://kit.fontawesome.com/c3a31cbb00.js"
	crossorigin="anonymous"></script>
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bootstrap@4.4.1/dist/css/bootstrap.min.css"
	integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh"
	crossorigin="anonymous">
<link rel="stylesheet" type="text/css"
	href="${cPath}/resources/css/in_board.css">
</head>
<body>

	<jsp:include page="../left.jsp"></jsp:include>
	<c:choose>
		<c:when test="${info.b_file_or_quiz == 1}">
			<div class="text-1">문항게시판</div>
		</c:when>
		<c:otherwise>
			<div class="text-1">자료게시판</div>
		</c:otherwise>
	</c:choose>


	<div class="q-contents">
		<div class="q-contents-text-2">
			<div class="text-2">
				<!-- <span style="background-color: aliceblue;">제목</span>
                <span style="background-color: antiquewhite;">닉네임</span> -->
				<div>${info.b_title}</div>
				<div>${info.m_nick}</div>
			</div>

		</div>

		<hr>
		<div class="text-3">
			 <div>자료 0개</div>
            <div>등록날짜</div>
			<%-- <div> 
			<p><fmt:formatDate value="${info.b_date}" pattern="yyyy-MM-dd" /></p>

			<c:if test="${!empty info.b_file1}">
			<a href="<c:url value='${cPath}/fileDownload/${info.b_file1}'/> ">${info.b_file1} 파일 다운로드</a><br>
			<button type="button" onclick="downloadFiles()">${info.b_file1} 다운로드</button>
			</c:if>
			<c:if test="${!empty info.b_file2}">
			<a href="<c:url value='${cPath}/fileDownload/${info.b_file2}'/> ">${info.b_file2} 파일 다운로드</a><br>
			</c:if>
			<c:if test="${!empty info.b_file3}">
			<a href="<c:url value='${cPath}/fileDownload/${info.b_file3}'/> ">${info.b_file3} 파일 다운로드</a><br>
			</c:if>
			</div> --%>
		</div>
		<div class="all-text-box">
			<div class="text-box1">
				<table style="width: 1000px;">
					<tr>
						<td> ${fn:replace(info.b_content, newLineChar, "<br/>")}</td>
					</tr>
					
				</table>
			</div>
			<c:if test="${info.b_file_or_quiz ==1}">
			<div class="text-box2">
				<table style="width: 1000px;">
					<tr>
						<th>[문제]</th>
					</tr>
					<tr>
						<td>Which of the following best describe the reason why the
							company is investing in a new line of eco-friendly cleaning
							supplies?</td>
					</tr>
					<tr>
						<th>[해설]</th>
					</tr>
					<tr>
						<td>문제의 질문은 "환경 친화적 청소 용품 라인 개발에 대한 회사의 이유는 무엇인가? 입니다."</td>
					</tr>
				</table>
			</div>
			</c:if>
		</div>

		<div class="chat-btn">
			<div class="chat-btn1">
				<button type="button" class="btn btn-primary chat-btn1-button1"
					onclick="toggleHeart()">
					<i class="fa-solid fa-heart"> </i> <span id="heartCount">${info.b_like}</span>

				</button>


			</div>

			<div class="chat-btn2">
				<button type="button" class="btn btn-primary">수정</button>
				<button type="button" class="btn btn-primary">삭제</button>

			</div>
		</div>


		<div id="comments" class="container">
			<form id="comment-form">
				<div class="form-group">
					<label for="comment-body">댓글:</label> <input id="comment-body"
						name="comment-body" class="form-control" required></input>
						<input type="hidden" id="nick" value="${memberVO.m_nick}">
						<input type="hidden" id="b_num" value="${info.b_num}">
				</div>
				<div class="form-group-btn">
					<button type="button" class="btn btn-primary" onclick="repleSendGet()">등록</button>
				</div>


			</form>
			<div class="comment" id="reple-container">
			<c:choose>
			<c:when test="${!empty reple}">
			<c:forEach var="repleVO" items="${reple}">
			<div class="comment">
				<div class="comment-img">
					<img class="profile-pic" src="${cPath}/resources/images/default.png" alt="프로필 사진">
				</div>

				<div class="comment-details">
					<div>
						<h6 class="comment-author">
							${repleVO.m_nick}
							</h6>
					</div>
					<div class="comment-actions">
						<p class="comment-text">${repleVO.r_content}</p>
						<span class="comment-date"><fmt:formatDate value="${repleVO.r_date}" pattern="yyyy-MM-dd" /></span>

					</div>
				</div>
			</div>
			</c:forEach>
			</c:when>
			<c:otherwise>
			<div class="comment">
				<div class="comment-img">
				</div>

				<div class="comment-details">
					<div>
						<h6 class="comment-author">
							</h6>
					</div>
					<div class="comment-actions">
						<p class="comment-text">댓글이 없습니다! 첫 댓글을 작성해보세요!</p>
						<span class="comment-date"></span>

					</div>
				</div>
			</div>
			
			</c:otherwise>
			</c:choose>
			</div>
			<div class="comment-footer">
				<button class="chat-btn1-button2" onclick="toggleUp()">
					<img class="empty" src="${cPath}/resources/images/handUp.svg"> <img
						class="filled" src="${cPath}/resources/images/handUpfill.svg" style="display: none;">
				</button>
				<span id="svgCount">0</span>
				<%-- <button class="chat-btn1-button3" onclick="toggleDown()">
					<img class="empty" src="${cPath}/resources/images/handDown.svg"> <img
						class="filled" src="${cPath}/resources/images/handDownfill.svg" style="display: none;">
				</button> --%>

			</div>
			<nav aria-label="Page navigation example">
				<ul class="pagination justify-content-between">
					<li class="page-item disabled"><a class="page-link" href="#"
						tabindex="-1" aria-disabled="true">이전글</a></li>
					<li class="page-item"><a class="page-link" href="#">다음글</a></li>
				</ul>
			</nav>



		</div>


	</div>
	
		<script src="https://code.jquery.com/jquery-3.6.1.min.js"></script>
		
	<script type="text/javascript">
			
			function downloadFiles(){
					console.log('tlqkf');

			}
	
	
			function repleSendGet(){
				var repleText = document.getElementById('comment-body').value;
				var writer = document.getElementById('nick').value;
				var bulNum = Number(document.getElementById('b_num').value);
				var param = {"m_nick":writer, "r_content":repleText, "b_num":bulNum};
				let today = new Date();   

				let year = today.getFullYear(); // 년도
				let month = today.getMonth() + 1;  // 월
				let date = today.getDate();  // 날짜
				let day = today.getDay();  // 요일

				var time = year+'-'+month+'-'+date;
				$.ajax({
					type:"POST",
					url:"/toto/writeReple.do",
					data:JSON.stringify(param),
					dataType:"text",
					contentType: "application/json; charset=UTF-8",
					success:function(data){
						console.log('tlqkf');
						console.log(data);
					var putReple = `<div class="comment">
						<div class="comment-img">
						<img class="profile-pic" src="${cPath}/resources/images/default.png" alt="프로필 사진">
					</div>

					<div class="comment-details">
						<div>
							<h6 class="comment-author">
								`+writer+`
								</h6>
						</div>
						<div class="comment-actions">
							<p class="comment-text">`+repleText+`</p>
							<span class="comment-date">`+time+`</span>

						</div>
					</div>
				</div>`;
					document.querySelector('#reple-container').insertAdjacentHTML('afterbegin',putReple);
					document.getElementById('comment-body').value = '';
					},
					error:function(xhr, status, error){
						alert('시스템 오류입니다. 죄송합니다. 새로고침을 해주세요!');
						console.log(error);
					}
				})
			}
	
		var heartButton = document.querySelector('.chat-btn1-button1');
		var heartCount = document.getElementById('heartCount');

		var isHearted = false;
		var count = 0;

		function toggleHeart() {
			if (isHearted) {
				// 색깔 원상태로 돌리기
				heartButton.style.color = 'white';
				count -= 1;
			} else {
				// 색깔 변경하고 개수 증가시키기
				heartButton.style.color = 'red';
				count += 1;
			}

			isHearted = !isHearted;
			heartCount.textContent = count.toString();

		}

		var isUpVoted = false;
		var isDownVoted = false;
		var svgCount = 0;

		function toggleUp() {
			var upButton = document.querySelector('.chat-btn1-button2');
			var downButton = document.querySelector('.chat-btn1-button3');
			var svgCountElem = document.getElementById('svgCount');
			var emptyImg = upButton.querySelector('.empty');
			var filledImg = upButton.querySelector('.filled');

			if (isUpVoted) {
				// 이미 upvote한 경우, upvote 취소
				emptyImg.style.display = '';
				filledImg.style.display = 'none';
				svgCount -= 1;
			} else {
				// upvote한 경우, upvote 추가
				emptyImg.style.display = 'none';
				filledImg.style.display = '';
				svgCount += 1;

				if (isDownVoted) {
					// 이미 downvote한 경우, downvote 취소
					toggleDown();
				}
			}

			isUpVoted = !isUpVoted;
			svgCountElem.textContent = svgCount.toString();

		}

		function toggleDown() {
			var upButton = document.querySelector('.chat-btn1-button2');
			var downButton = document.querySelector('.chat-btn1-button3');
			var svgCountElem = document.getElementById('svgCount');
			var emptyImg = downButton.querySelector('.empty');
			var filledImg = downButton.querySelector('.filled');

			if (isDownVoted) {
				// 이미 downvote한 경우, downvote 취소
				emptyImg.style.display = '';
				filledImg.style.display = 'none';

			} else {
				// downvote한 경우, downvote 추가
				emptyImg.style.display = 'none';
				filledImg.style.display = '';

				if (isUpVoted) {
					// 이미 upvote한 경우, upvote 취소
					toggleUp();
				}
			}

			isDownVoted = !isDownVoted;
			svgCountElem.textContent = svgCount.toString();

		}
	</script>




	<script
		src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js"
		integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo"
		crossorigin="anonymous"></script>
	<script
		src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js"
		integrity="sha384-wfSDF2E50Y2D1uUdj0O3uMBJnjuUD4Ih7YwaYd1iqfktj0Uod8GCExl3Og8ifwB6"
		crossorigin="anonymous"></script>
</body>
</html>