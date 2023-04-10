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
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.4.1/dist/css/bootstrap.min.css" integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh" crossorigin="anonymous">
    < <link rel="stylesheet" type="text/css"	href="${cPath}/resources/css/sentence.css">
    <title>Document</title>
</head>
<body>
    <jsp:include page="../left.jsp"></jsp:include>
        <div class="question-title">
            <h2>문제 생성</h2>
        </div>

        <div class="creation">
            <div class="creation-download">
                <form>
                    <label>
                      <input type="checkbox" name="item" value="item1"> 숙어    
                    </label>
                    
                    <label>
                      <input type="checkbox" name="item" value="item2"> 단어
                    </label> 
                    <button type="button" onclick="downloadSelectedItems()">Download</button>
                </form>

            </div>
            
            <div class="">
                <div class="creation-content">
                    
                    <div class="creationQuestion"></div>
                    <div class="creationButton">
                        <button id="saveBtn">내 질문 저장하기</button>
                        <button id="postBtn">게시판에 올리기</button>

                    </div>
                </div>                
            </div>
        
        </div>
    </div>
    
    <script src="${cPath}/resources/js/question.js"></script>
</body>
</html>