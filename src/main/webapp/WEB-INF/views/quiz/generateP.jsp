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
    <link rel="stylesheet" href="${cPath}/resources/css/generateP.css">
    <script src="https://code.jquery.com/jquery-3.6.1.min.js"></script>
    <title>연습용</title>
</head>
<body>
    <jsp:include page="../left.jsp"></jsp:include>
        <div class="gpt">
        <div class="gpt-content">
            <div class="gpt-model">   
                Model-GPT3
            </div>
            <form action="">
                <div class="gpt-problem">
                    <div class="gpt-problem-text">
                       <span id="output">여기에다가 예시 적기</span>
                    </div>                   
                </div>
                <div class="gpt-answer" >
                    <div class="gpt-answer-text">
                        <span id="answerOutput">예시를 통해서 나온 문장을 적기</span>
                    </div>
                    
                </div>
                
            </form>
            
        </div>
       
    </div>
    <div class="gpt-footer">
<<<<<<< HEAD
        <form class="gpt-form" action="${cPath}/generateP.do">
        <form class="gpt-form" action="generateP.do" method = "post">
=======
        <div class="gpt-form" >
>>>>>>> branch 'master' of https://github.com/2022-SMHRD-IS-AI2/Toto.git
            <div class="gpt-text">
<<<<<<< HEAD
                <textarea id="myTextarea"placeholder="문장을 입력해주세요." name ="p_sentence"></textarea> 
                <button type="submit" >전송</button>
                <textarea id="myTextarea"placeholder="문장을 입력해주세요." name="sentence"></textarea> 
                <button type="submit">전송</button>
    
=======
                <textarea id="myTextarea"placeholder="문장을 입력해주세요."></textarea> 
                <c:choose>
                <c:when test="${!empty memberVO}">
                <button class="btn btn-outline-primary btn-sm send" >전송</button>  <!-- 버튼 이벤트는 여기에 걸어주세요 -->
                </c:when>
                <c:otherwise>
                <button class="btn btn-outline-primary btn-sm send" onclick="location.href = '${cPath}/login.do'">전송</button>
                <!-- 로그인 안했을 때 로그인으로 가는 로직 -->
                </c:otherwise>
                </c:choose>
>>>>>>> branch 'master' of https://github.com/2022-SMHRD-IS-AI2/Toto.git
            </div>
        </div>
    </div>


    <script type="module">
        import { Configuration, OpenAIApi } from 'https://cdn.skypack.dev/openai';
      
        const configuration = new Configuration({
          apiKey: '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',
        });
        const openai = new OpenAIApi(configuration);
    
        // 전송 버튼 클릭 이벤트 처리
        document.querySelector(".send").addEventListener('click',function(){
          var inputText = document.querySelector('#myTextarea').value;
    
          // 요청 보내기
          openai.createCompletion({
            model: "text-davinci-003",
            prompt: inputText,
            temperature: 0.8,
            suffix: "토익문장만들어줘\n",
            max_tokens: 2000,
            top_p: 1,
            frequency_penalty: 0,
            presence_penalty: 0,
          }).then((result)=>{
            console.log(result.choices[0].text);
    
            // 로컬 스토리지에 저장
            localStorage.setItem('output', inputText);
            localStorage.setItem('answer', result.choices[0].text);
    
            // 결과 출력
            var template =`<div class="gpt-answer" >
              <div class="gpt-answer-text">
                <span id="answerOutput">${result.choices[0].text}</span>
              </div>
            </div>`
            document.querySelector('.gpt-content').insertAdjacentHTML('beforeend', template);
          });
        });
    
        // 불러오기 버튼 클릭 이벤트 처리
        document.querySelector(".load").addEventListener('click',function(){
          // 로컬 스토리지에서 값 불러오기
          var outputText = localStorage.getItem('output');
          var answerText = localStorage.getItem('answer');
    
          // 결과 출력
          document.querySelector('#output').innerHTML = outputText;
          document.querySelector('#answerOutput').innerHTML = answerText;
        });
      </script>
    
    
    <script src="https://code.jquery.com/jquery-3.4.1.slim.min.js" integrity="sha384-J6qa4849blE2+poT4WnyKhv5vZF5SrPo0iEjwBvKU7imGFAV0wwj1yYfoRSJoZ+n" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js" integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.4.1/dist/js/bootstrap.min.js" integrity="sha384-wfSDF2E50Y2D1uUdj0O3uMBJnjuUD4Ih7YwaYd1iqfktj0Uod8GCExl3Og8ifwB6" crossorigin="anonymous"></script>

</body>
</html>