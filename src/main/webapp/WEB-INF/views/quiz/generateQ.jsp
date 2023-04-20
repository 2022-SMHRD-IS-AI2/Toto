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
    <link rel="stylesheet" type="text/css"   href="${cPath}/resources/css/generateQ.css">
    <link rel="stylesheet" type="text/css"   href="${cPath}/resources/css/generateP.css">
    <title>문제 생성</title>
</head>
<body>

    <jsp:include page="../left.jsp"></jsp:include>
            <div class="gpt">
        <div class="gpt-content2" style="overflow-y:auto">
           <form action="">  
        <div class="content-body" >
            <div id="content-body" style="display: block;">
              
                
                
             </div>
             <div class="content-form-btn">
                <button>저장</button>
            </div>
            
        </div>
         </form>
        
        <div class="content-body">
            <div id="content-form">
                <div class="coldiv">
                    <div class="content-form-ta">
                        <label for="content-text">문단 입력</label>
                        <textarea id="content-text" name="content-text"></textarea>
                    </div>
                   
                    <div class="choices">
                        <div>
                          <button type="button" class="btn-sv">생성</button>
                        </div>
                      </div>  

                </div>
                
              </div>
        </div>
       
            
        </div>
       
    </div>
    <script src="https://code.jquery.com/jquery-3.6.1.min.js"></script>
   <script type="module">
           
                
            import { Configuration, OpenAIApi }  from 'https://cdn.skypack.dev/openai';
  
            document.querySelector(".btn-sv").addEventListener('click', function() {
              const value = document.querySelector('#content-text').value;
              const apiKey = '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'; // OpenAI API 키를 입력합니다.
                                          
              const problemTemplate = `
                    <div>
                    <p>문단</p>
                    <p>`+value+`</p>
                </div>
                   
                    
              `;
              document.querySelector('#content-body').insertAdjacentHTML('beforeend', problemTemplate);
              
              const configuration = new Configuration({
                apiKey: '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',
              });
              const openai = new OpenAIApi(configuration);
                                            
              openai.createCompletion({
                model: "davinci:ft-personal-2023-04-18-02-50-00",
                prompt: value,
                temperature: 0.7,
                max_tokens: 256,
                top_p: 1,
                frequency_penalty: 0,
                presence_penalty: 0,
              }).then((result) =>{
                console.log(result.data.choices);
                console.log(result.data.choices[0].text);
                const text = result.data.choices[0].text;

           
                
                  
                    let question ;
                    let correctAnswer ;
                    let wrongAnswers ;

                    

                    const pattern = /'(.*?)',\s+'correct_answer':\s+'(.*?)',\s+'wrong_answers':\s+(\[.*?\])/;
                    const match = text.match(pattern);
                    console.log(match);
                    question = match[1];
                    console.log("문제:", question);
                    correctAnswer = match[2];
                    console.log("정답:", correctAnswer);
                    

                    const wrongAnswersArr = match[3];
                    console.log("오답:", wrongAnswersArr);

                    var template =`<div>
                
                            <div><p>문제</p>
                            <p id="answerOutput">`+question+`</p></div>
                            <div><p>정답</p>
                            <p id="answerOutput">`+correctAnswer+`</p></div>
                            <div><p>오답</p>
                            <p id="answerOutput">`+wrongAnswersArr+`</p></div>
                            
                            </div>`
                    document.querySelector('#content-body').insertAdjacentHTML('beforeend',template);
       

              
            })
              });
        </script>
      


    
    
    
    
    <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js" integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.4.1/dist/js/bootstrap.min.js" integrity="sha384-wfSDF2E50Y2D1uUdj0O3uMBJnjuUD4Ih7YwaYd1iqfktj0Uod8GCExl3Og8ifwB6" crossorigin="anonymous"></script>

</body>
</html>