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
    <script src="https://code.jquery.com/jquery-3.6.1.min.js"></script>
    <link rel="stylesheet" href="${cPath}/resources/css/generateP.css"> 
    <title>문단 및 문제생성</title>
</head>
<body>
  
    <jsp:include page="../left.jsp"></jsp:include>
    <div class="gpt">
        <div class="gpt-content" style="overflow-y:auto">
            <div class="gpt-model">   
                Model-GPT3
            </div>
            <form action="">
                <div class="gpt-problem">
                    <div class="gpt-problem-text">
                       <span id="output">안녕?</span>
                    </div>                   
                </div>
                <div class="gpt-answer" >
                    <div class="gpt-answer-text">
                        <span id="answerOutput">안녕!</span>
                    </div>
                    
                </div>
                
            </form>
            
        </div>
       
    </div>
    <div class="gpt-footer">
        <div class="gpt-form" >
            <div class="gpt-text">
                <textarea id="myTextarea"placeholder="문장을 입력해주세요."></textarea> 
                <button class="btn btn-outline-primary btn-sm send" >전송</button>
            </div>
        </div>
    </div>

 
        <script type="module">
            import { Configuration, OpenAIApi }  from 'https://cdn.skypack.dev/openai';
                
                    document.querySelector(".send").addEventListener('click',function(){
                   
                        const value =document.querySelector('#myTextarea').value;
                   
                        var template =`<div class="gpt-problem">
                        <div class="gpt-problem-text">
                           <span id="output"> ${document.querySelector('#myTextarea').value}</span>
                        </div>                   
                    </div>`
                    document.querySelector('.gpt-content').insertAdjacentHTML('beforeend',
                    template);

                    
                    const configuration = new Configuration({
                        apiKey: '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',
                      });
                      const openai = new OpenAIApi(configuration);
                      
                      openai.createCompletion({
                        model: "text-davinci-003",
                        prompt:`${value}영어문단만들어줘`,
                        temperature: 0.8,
                        max_tokens: 2000,
                        top_p: 1,
                        frequency_penalty: 0,
                        presence_penalty: 0,
                        
                      }).then((result)=>{
                        console.log(result.data.choices[0].text)
                        var template =`<div class="gpt-answer" >
                            <div class="gpt-answer-text">
                                <span id="answerOutput">${result.data.choices[0].text}</span>
                            </div>
                        </div>`
                        document.querySelector('.gpt-content').insertAdjacentHTML('beforeend',
                        template);
                        document.querySelector('.gpt-content').scrollTop = document.querySelector('.gpt-content').scrollHeight;
                      })
                });
                
      </script>
    
      
    
    
    <script src="https://code.jquery.com/jquery-3.4.1.slim.min.js" integrity="sha384-J6qa4849blE2+poT4WnyKhv5vZF5SrPo0iEjwBvKU7imGFAV0wwj1yYfoRSJoZ+n" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js" integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.4.1/dist/js/bootstrap.min.js" integrity="sha384-wfSDF2E50Y2D1uUdj0O3uMBJnjuUD4Ih7YwaYd1iqfktj0Uod8GCExl3Og8ifwB6" crossorigin="anonymous"></script>

</body>
</html>