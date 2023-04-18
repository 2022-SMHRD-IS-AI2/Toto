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
    <link rel="stylesheet" type="text/css"	href="${cPath}/resources/css/generateQ.css">
    <link rel="stylesheet" type="text/css"	href="${cPath}/resources/css/generateP.css">
    <title>문제 생성</title>
</head>
<body>

    <jsp:include page="../left.jsp"></jsp:include>
            <div class="gpt">
        <div class="gpt-content2" style="overflow-y:auto">
            
        <div class="content-body" >
            <div id="content-body">
                <p>asdasdasd</p> 
                
                
             </div>
             <div class="content-form-btn">
                <button>저장</button>
            </div>
             

        </div>
        <div class="content-body">
            <form id="content-form">
                <div class="coldiv">
                    <div class="content-form-ta">
                        <label for="content-text">문단 입력</label>
                        <textarea id="content-text" name="content-text"></textarea>
                    </div>
                   
                    <div class="choices">
                        <div>
                            <label>
                                <input type="radio" name="radio-group" value="grammar" id="grammer">
                                문법
                              </label>
                              
                              <label>
                                <input type="radio" name="radio-group" value="vocabulary" id="words">
                                어휘
                              </label>
        
                        </div>
                         
                        <div>
                            <button onclick="saveCheckedRadio()"  type="submit" class="btn-sv">생성</button>
                        </div>
                         
                    </div>      

                </div>
                
              </form>
        </div>
       
            
        </div>
       
    </div>
    <script src="https://code.jquery.com/jquery-3.6.1.min.js"></script>
    <script>
        function setActiveLabel(label) {
          // 모든 라벨에서 active 클래스 제거
          const labels = document.querySelectorAll('.btn-group-toggle label');
          labels.forEach(function (label) {
            label.classList.remove('active');
          });
        
          // 클릭된 라벨에 active 클래스 추가
          label.classList.add('active');
        }
        </script>


    
    
    
    <script src="${cPath}/resources/js/question.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js" integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.4.1/dist/js/bootstrap.min.js" integrity="sha384-wfSDF2E50Y2D1uUdj0O3uMBJnjuUD4Ih7YwaYd1iqfktj0Uod8GCExl3Og8ifwB6" crossorigin="anonymous"></script>

</body>
</html>