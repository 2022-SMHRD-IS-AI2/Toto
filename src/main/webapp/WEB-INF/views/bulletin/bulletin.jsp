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
    <link rel="stylesheet" type="text/css" href="${cPath}/resources/css/board.css">
</head>
<body>
    
    <div class="container">
        <ul>
            <div class="header">
                <img src="${cPath}/resources/images/logo.jpg" class="header-img">
            </div>
            <div class="profile-img">
                <img src="${cPath}/resources/images/image.jpg" class="profile-user-img">
            </div>
            <!-- <li>개원이</li> -->
            <h3>개원이</h3>
            <!-- <li>leejang1226@naver.com</li> -->
            <h4>leejang1226@naver.com</h4>
            <li><a class="home" href="#">문항생성</a></li>
            <li><a href="#">문항게시판</a></li>
            <li><a href="#">자료게시판</a></li>
            <li><a href="#">마이페이지</a></li>
        </ul>
      
        <div class="contents">
            <div class="text">문항게시판</div>  
            <hr>
            <div class="all-box">
                <div class="box">
                    <table>
                        <th>23-03-29</th>
                        <tr>
                            <td>내용</td>
                        </tr>
                        <tr>
                            <td>제목(댓글수)</td>
                        </tr>
                        <tr>
                            <td>${memberVO.m_nick}</td>
                            <td>좋아요</td>
                            <td>댓글수</td>
                        </tr>
                        <c:forEach var="vo" items="${list}">
											<tr>
												<td><fmt:formatDate value="${vo.b_date }"
														pattern="yyyy-MM-dd" /></td>
												<td><a href="${cpath}/get.do?num=${vo.b_num}">${vo.b_content}</a></td>
											<%-- 	<td>${vo.writer}</td>
												
												<td>${vo.count}</td> --%>
											</tr>
										</c:forEach>
                    </table>
                    <!-- <hr> -->
                </div>
                <div class="box">B</div>
                <div class="box">C</div>
                <div class="box">D</div>
                <div class="box">E</div>
                <div class="box">F</div>
                <div class="box">G</div>
                <div class="box">H</div>
            </div>
          
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
            </div>

            <!-- <div class="search">
                <select class="select">
                    <option value="">제목</option>
                    <option value="">닉네임</option>
                    <option value="">아이디</option>
                    <option value="">작성자</option>
                </select>
                
                <div class="search_area">
                    input 타입에는 form형식으로 감싸줘야한다
                    <form>
                        <input type="search" placeholder="검색어를 입력해주세요">
                        <span>검색</span>
                    </form>
                </div>
            </div> -->
        </div>
	</div>
</body>
</html>