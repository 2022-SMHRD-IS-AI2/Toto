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
		<div class="all-box" id="box" type="button">
		
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
							<td>${vo.m_nick}</td>
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
			<input type="text" placeholder="검색어를 입력해주세요." name="search" id="searchArea">
		</div>

		<div class="button">
			<button onclick="searching()">검색</button>
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
	
	<script src="https://code.jquery.com/jquery-3.6.1.min.js"></script>
	<script type="text/javascript">
	console.log('tlqkf');

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
			
			search_bulletin += `<div class="box">
			<a href="${cPath}/seeInBoard.do?b_num=`+arrayList[i]["b_num"]+`">
		<table style="width: 290px; height: 170px;">
			<tr style="height: 40px;">
				<td>날짜</td>
				<td>`+arrayList[i]["b_date"]+`</td>
			</tr>
			<tr>
				<td style="word-break: break-all;">내용</td>
			</tr>
		</table>
		<hr class="line">
		<table sylte="width: 290px; height: 75px;">
			<tr>
				<td>`+arrayList[i]["b_title"]+` (댓글수)</td>
			</tr>
			<tr style="height: 50px;">
				<td>`+arrayList[i]["m_nick"]+`</td>
				<td>좋아요 6</td>
				<td>조회수 `+arrayList[i]["b_select"]+`</td>
			</tr>
		</table>
	</a>
</div>`
		document.getElementById('box').innerHTML = search_bulletin;
		}

			},
			error:function(xhr, status, error){
				alert('시스템 오류입니다. 죄송합니다. 새로고침을 해주세요!');
			}
		})
		
		
		
	}
	</script>
	<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js" integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.4.1/dist/js/bootstrap.min.js" integrity="sha384-wfSDF2E50Y2D1uUdj0O3uMBJnjuUD4Ih7YwaYd1iqfktj0Uod8GCExl3Og8ifwB6" crossorigin="anonymous"></script>
</body>
</html>