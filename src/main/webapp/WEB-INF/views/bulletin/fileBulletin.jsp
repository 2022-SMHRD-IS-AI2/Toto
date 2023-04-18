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
	<jsp:include page="../left.jsp"></jsp:include>

	<div class="text">자료게시판</div>

	<div class="contents">
		<div class="row row-cols-1 row-cols-sm-2 row-cols-md-3 g-3" id="box">
			<c:forEach var="vo" items="${fileVO}">
				<a href="${cPath}/seeInBoard.do?b_num=${vo.b_num}">


					<div class="col">
						<div class="card shadow-sm mb-5">
							<div class="card-body contents-size">
								<small class="text-body-secondary"><fmt:formatDate
										value="${vo.b_date}" pattern="yyyy-MM-dd" /></small>
								<p class="card-text">This is a wider card with supporting
									text below as a natural lead-in to additional content. This
									content is a little bit longer.</p>
							</div>
							<div class="card-body back">
								<p class="card-text">${vo.b_title}</p>
								<div class="d-flex justify-content-between align-items-center">
									<div class="btn-group">
										<p class="card-text">${vo.m_nick}</p>
									</div>
									<div>
										<svg xmlns="http://www.w3.org/2000/svg" width="16" height="16"
											fill="currentColor" class="bi bi-eye" viewBox="0 0 16 16">
                  <path
												d="M16 8s-3-5.5-8-5.5S0 8 0 8s3 5.5 8 5.5S16 8 16 8zM1.173 8a13.133 13.133 0 0 1 1.66-2.043C4.12 4.668 5.88 3.5 8 3.5c2.12 0 3.879 1.168 5.168 2.457A13.133 13.133 0 0 1 14.828 8c-.058.087-.122.183-.195.288-.335.48-.83 1.12-1.465 1.755C11.879 11.332 10.119 12.5 8 12.5c-2.12 0-3.879-1.168-5.168-2.457A13.134 13.134 0 0 1 1.172 8z" />
                  <path
												d="M8 5.5a2.5 2.5 0 1 0 0 5 2.5 2.5 0 0 0 0-5zM4.5 8a3.5 3.5 0 1 1 7 0 3.5 3.5 0 0 1-7 0z" />
                </svg>
										<small class="text-body-secondary">${vo.b_select}</small>
										<svg xmlns="http://www.w3.org/2000/svg" width="16" height="16"
											fill="currentColor" class="bi bi-hand-thumbs-up"
											viewBox="0 0 16 16">
                  <path
												d="M8.864.046C7.908-.193 7.02.53 6.956 1.466c-.072 1.051-.23 2.016-.428 2.59-.125.36-.479 1.013-1.04 1.639-.557.623-1.282 1.178-2.131 1.41C2.685 7.288 2 7.87 2 8.72v4.001c0 .845.682 1.464 1.448 1.545 1.07.114 1.564.415 2.068.723l.048.03c.272.165.578.348.97.484.397.136.861.217 1.466.217h3.5c.937 0 1.599-.477 1.934-1.064a1.86 1.86 0 0 0 .254-.912c0-.152-.023-.312-.077-.464.201-.263.38-.578.488-.901.11-.33.172-.762.004-1.149.069-.13.12-.269.159-.403.077-.27.113-.568.113-.857 0-.288-.036-.585-.113-.856a2.144 2.144 0 0 0-.138-.362 1.9 1.9 0 0 0 .234-1.734c-.206-.592-.682-1.1-1.2-1.272-.847-.282-1.803-.276-2.516-.211a9.84 9.84 0 0 0-.443.05 9.365 9.365 0 0 0-.062-4.509A1.38 1.38 0 0 0 9.125.111L8.864.046zM11.5 14.721H8c-.51 0-.863-.069-1.14-.164-.281-.097-.506-.228-.776-.393l-.04-.024c-.555-.339-1.198-.731-2.49-.868-.333-.036-.554-.29-.554-.55V8.72c0-.254.226-.543.62-.65 1.095-.3 1.977-.996 2.614-1.708.635-.71 1.064-1.475 1.238-1.978.243-.7.407-1.768.482-2.85.025-.362.36-.594.667-.518l.262.066c.16.04.258.143.288.255a8.34 8.34 0 0 1-.145 4.725.5.5 0 0 0 .595.644l.003-.001.014-.003.058-.014a8.908 8.908 0 0 1 1.036-.157c.663-.06 1.457-.054 2.11.164.175.058.45.3.57.65.107.308.087.67-.266 1.022l-.353.353.353.354c.043.043.105.141.154.315.048.167.075.37.075.581 0 .212-.027.414-.075.582-.05.174-.111.272-.154.315l-.353.353.353.354c.047.047.109.177.005.488a2.224 2.224 0 0 1-.505.805l-.353.353.353.354c.006.005.041.05.041.17a.866.866 0 0 1-.121.416c-.165.288-.503.56-1.066.56z" />
                </svg>
										<small class="text-body-secondary">${vo.b_like}</small>

									</div>
								</div>
							</div>
						</div>
					</div>
				</a>
			</c:forEach>


		</div>
		<div class='navigation-center'>
			<nav aria-label="Page navigation example">
				<ul class="pagination">
					<li class="page-item"><a class="page-link" href="#"
						aria-label="Previous"> <span aria-hidden="true"><</span>
					</a></li>
					<li class="page-item"><a class="page-link" href="#" onclick="pageMove()">1</a></li>
					<li class="page-item"><a class="page-link" href="#" onclick="pageMove()">2</a></li>
					<li class="page-item"><a class="page-link" href="#" onclick="pageMove()">3</a></li>
					<li class="page-item"><a class="page-link" href="#"
						aria-label="Next"> <span aria-hidden="true">></span>
					</a></li>
				</ul>
			</nav>
			<nav class="navbar bg-body-tertiary serch">
				<div class="container-fluid">
					<div class="d-flex" role="search">
						<input class="form-control me-2" type="search"
							placeholder="Search" id="searchArea" aria-label="Search">
						<button class="btn btn-outline-success" type="submit" onclick="searching()">Search</button>

					</div>
					<button type="button" class="btn btn-outline-success"
						style="margin-left: 10px;"
						onclick="location.href='${cPath}/registerBoard.do'">글쓰기</button>
				</div>



			</nav>
		</div>

		<div class="position-right-top-side">
			<div class="dropdown">
				<button class="btn btn-secondary dropdown-toggle" type="button"
					id="dropdownMenuButton" data-toggle="dropdown" aria-haspopup="true"
					aria-expanded="false">봤던 글</button>
				<div class="dropdown-menu" aria-labelledby="dropdownMenuButton">
					<a class="dropdown-item" href="#">제목</a> <a class="dropdown-item"
						href="#">제목</a> <a class="dropdown-item" href="#">제목</a>
				</div>
			</div>
		</div>
		<script src="https://code.jquery.com/jquery-3.6.1.min.js"></script>
		<script type="text/javascript">
	function searching(){
		var searchVal = document.getElementById('searchArea').value;
		console.log(searchVal);
		$.ajax({
			type:"POST",
			url:"/toto/search.do",
			data: {"searchVal":searchVal},
			dataType:"Json",
			success : function(data, status){
				console.log(data);
				var arrayList = data;
		var search_bulletin = ``;
		for(let i=0;i<arrayList.length;i++){
			
			search_bulletin += `<a href="${cPath}/seeInBoard.do?b_num=`+arrayList[i]["b_num"]+`">
				<div class="col">
					<div class="card shadow-sm mb-5">
						<div class="card-body contents-size">
							<small class="text-body-secondary">`+arrayList[i]["b_date"]+`</small>
							<p class="card-text">This is a wider card with supporting
								text below as a natural lead-in to additional content. This
								content is a little bit longer.</p>
						</div>
						<div class="card-body back">
							<p class="card-text">`+arrayList[i]["b_title"]+`</p>
							<div class="d-flex justify-content-between align-items-center">
								<div class="btn-group">
									<p class="card-text">`+arrayList[i]["m_nick"]+`</p>
								</div>
								<div>
									<svg xmlns="http://www.w3.org/2000/svg" width="16" height="16"
										fill="currentColor" class="bi bi-eye" viewBox="0 0 16 16">
              <path
											d="M16 8s-3-5.5-8-5.5S0 8 0 8s3 5.5 8 5.5S16 8 16 8zM1.173 8a13.133 13.133 0 0 1 1.66-2.043C4.12 4.668 5.88 3.5 8 3.5c2.12 0 3.879 1.168 5.168 2.457A13.133 13.133 0 0 1 14.828 8c-.058.087-.122.183-.195.288-.335.48-.83 1.12-1.465 1.755C11.879 11.332 10.119 12.5 8 12.5c-2.12 0-3.879-1.168-5.168-2.457A13.134 13.134 0 0 1 1.172 8z" />
              <path
											d="M8 5.5a2.5 2.5 0 1 0 0 5 2.5 2.5 0 0 0 0-5zM4.5 8a3.5 3.5 0 1 1 7 0 3.5 3.5 0 0 1-7 0z" />
            </svg>
									<small class="text-body-secondary"> `+arrayList[i]["b_select"]+`</small>
									<svg xmlns="http://www.w3.org/2000/svg" width="16" height="16"
										fill="currentColor" class="bi bi-hand-thumbs-up"
										viewBox="0 0 16 16">
              <path
											d="M8.864.046C7.908-.193 7.02.53 6.956 1.466c-.072 1.051-.23 2.016-.428 2.59-.125.36-.479 1.013-1.04 1.639-.557.623-1.282 1.178-2.131 1.41C2.685 7.288 2 7.87 2 8.72v4.001c0 .845.682 1.464 1.448 1.545 1.07.114 1.564.415 2.068.723l.048.03c.272.165.578.348.97.484.397.136.861.217 1.466.217h3.5c.937 0 1.599-.477 1.934-1.064a1.86 1.86 0 0 0 .254-.912c0-.152-.023-.312-.077-.464.201-.263.38-.578.488-.901.11-.33.172-.762.004-1.149.069-.13.12-.269.159-.403.077-.27.113-.568.113-.857 0-.288-.036-.585-.113-.856a2.144 2.144 0 0 0-.138-.362 1.9 1.9 0 0 0 .234-1.734c-.206-.592-.682-1.1-1.2-1.272-.847-.282-1.803-.276-2.516-.211a9.84 9.84 0 0 0-.443.05 9.365 9.365 0 0 0-.062-4.509A1.38 1.38 0 0 0 9.125.111L8.864.046zM11.5 14.721H8c-.51 0-.863-.069-1.14-.164-.281-.097-.506-.228-.776-.393l-.04-.024c-.555-.339-1.198-.731-2.49-.868-.333-.036-.554-.29-.554-.55V8.72c0-.254.226-.543.62-.65 1.095-.3 1.977-.996 2.614-1.708.635-.71 1.064-1.475 1.238-1.978.243-.7.407-1.768.482-2.85.025-.362.36-.594.667-.518l.262.066c.16.04.258.143.288.255a8.34 8.34 0 0 1-.145 4.725.5.5 0 0 0 .595.644l.003-.001.014-.003.058-.014a8.908 8.908 0 0 1 1.036-.157c.663-.06 1.457-.054 2.11.164.175.058.45.3.57.65.107.308.087.67-.266 1.022l-.353.353.353.354c.043.043.105.141.154.315.048.167.075.37.075.581 0 .212-.027.414-.075.582-.05.174-.111.272-.154.315l-.353.353.353.354c.047.047.109.177.005.488a2.224 2.224 0 0 1-.505.805l-.353.353.353.354c.006.005.041.05.041.17a.866.866 0 0 1-.121.416c-.165.288-.503.56-1.066.56z" />
            </svg>
									<small class="text-body-secondary"> `+arrayList[i]["b_like"]+`</small>

								</div>
							</div>
						</div>
					</div>
				</div>
			</a>`
			
			
		document.getElementById('box').innerHTML = search_bulletin;
		}

			},
			error:function(xhr, status, error){
				alert('시스템 오류입니다. 죄송합니다. 새로고침을 해주세요!');
			}
		})
		
		
		
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