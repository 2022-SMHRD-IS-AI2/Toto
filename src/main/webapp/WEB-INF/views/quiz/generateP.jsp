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
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.10.4/font/bootstrap-icons.css">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.4.1/dist/css/bootstrap.min.css" integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh" crossorigin="anonymous">
    <script src="https://code.jquery.com/jquery-3.6.1.min.js"></script>
    <link rel="stylesheet" href="${cPath}/resources/css/generateP.css"> 
    <title>문단 및 문제생성</title>
</head>
<body>
    <jsp:include page="../left.jsp"></jsp:include>
       <div class="gpt">
       <input type="hidden" id="path" value="${cPath}/generateP.do">
       <input type="hidden" id="nick" value="${memberVO.m_nick}">
               <div class="gpt-content" style="overflow-y:auto">
            <div class="gpt-model">   
                Model-GPT3
            </div>
            <form action="" class="gpt-inside">
                <div class="gpt-problem">
                    <p class="gpt-problem-text">
                       <span id="output">안녕?</span>
                    </p>                   
                </div>
                <div class="gpt-answer" >
                    <p class="gpt-answer-text">
                        <span id="answerOutput">안녕!</span>
                    </p>
                </div>
            </form>
            
        </div>
       
    </div>
    <div class="gpt-footer">
        <div class="gpt-form" >
            <div class="gpt-text">
                <textarea id="myTextarea" placeholder="문장을 입력해주세요."></textarea> 
                <button class="btn btn-outline-primary btn-sm send" id="send">전송</button>
            </div>
        </div>
    </div>
 
        <script type="module">

            import { Configuration, OpenAIApi }  from 'https://cdn.skypack.dev/openai';
                	let cnt = 1;
                    document.querySelector("#send").addEventListener('click',function(){

                        document.getElementById("send").disabled = true;
                   		
                        const value =document.querySelector('#myTextarea').value;
							document.querySelector('#myTextarea').value = '';
						const path = document.querySelector('#path').value;
						var firstTemplate = `<form class="gpt-inside" method="post" action = `+path+`><div class="bgTransparent" id="clickP`+cnt+`"></div></form>`;
						document.querySelector('.gpt-content').insertAdjacentHTML('beforeend',firstTemplate);
                        
                        var template =`<div class="gpt-problem">
                        <div class="gpt-problem-text">
                           <span id="output`+cnt+`" class="answer">`+value+`</span>
                        </div>                 
                    </div>`
					let valueID = "#clickP"+cnt;
					console.log(valueID);
                    document.querySelector(valueID).insertAdjacentHTML('beforeend',template);
					console.log("여기성공?");
                    
                    const configuration = new Configuration({
                        apiKey: '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',
                      });
                      const openai = new OpenAIApi(configuration);
                      
                      openai.createCompletion({
                        model: "text-davinci-003",
                        prompt: value + "이라는 문장과 관련된 영어 문단 만들어줘.",
                        temperature: 0.8,
                        max_tokens: 2000,
                        top_p: 1,
                        frequency_penalty: 0,
                        presence_penalty: 0,
                        
                      }).then((result)=>{
                        console.log(result.data.choices[0].text);
                        var template =`<div class="gpt-answer" >
                            <div class="gpt-answer-text">
                                <span id="answerOutput`+cnt+`">`+result.data.choices[0].text+`</span>
                            </div>
                        </div>`
                        document.querySelector(valueID).insertAdjacentHTML('beforeend',template);

                        
						var quiz = '';
						let para = {"s":result.data.choices[0].text}
       					 $.ajax({
           				 url:'http://211.227.224.143:5000/quiz/',
           				 type:'POST',
						 data:JSON.stringify(para),
						 timeout:6000,
						 contentType:"application/json; charset=utf-8",
           				 success:function(data, status, xhr){
           						   quiz = data;
             					   console.log(quiz);
           					 },
           					 error:function(xhr, status, error){
        						console.debug(error);
        					},
        						complete:function(xhr, status){
        							console.log('됐냐?');
        						}
        					})
						
						setTimeout(() => {
                        var template =`<div class="gpt-problem">
                            <div class="gpt-problem-text2">
                                <span id="question`+cnt+`">`+quiz["qSen"]+`</span><br>
								<span>정답 : </span><span id="answer`+cnt+`">`+quiz['answer']+`</span><br>
								<span>오답 선지들</span><br>
								<span><span><i class="bi bi-1-circle"></i>`+" "+`</span><span id="wrongOne`+cnt+`">`+quiz['wrongs'][0]+`</span></span><br>
								<span><span><i class="bi bi-2-circle"></i>`+" "+`</span><span id="wrongTwo`+cnt+`">`+quiz['wrongs'][1]+`</span></span><br>
								<span><span><i class="bi bi-3-circle"></i>`+" "+`</span><span id="wrongThree`+cnt+`">`+quiz['wrongs'][2]+`</span></span><br>
                            </div></div>
						<div class="btn_align">
                        <button type="button" style="margin-right: 50px;" class="btn_store" data-count="`+cnt+`" name="addMyQuiz">내 문제 저장</button>
                        <button type="submit"  style="margin-left: 50px;">문항 게시판에 올리기</button></div>
						`
                        
                        document.querySelector(valueID).insertAdjacentHTML('beforeend',template);
                        document.getElementById("send").disabled = false;
                        document.querySelector('.gpt-content').scrollTop = document.querySelector('.gpt-content').scrollHeight;
						++cnt;}
						,5000);
						console.log('여기도?????');
						console.log(cnt);
                      })

                });
				$(document).on("click",".btn_store",function(e){
   				  var clicked_num = e.target.dataset.count;
					console.log(clicked_num);
					let promptId = "#output"+clicked_num;
					let gptAnswerId = "#answerOutput"+clicked_num;
					let questionId = "#question"+clicked_num;
					let answerId = "#answer"+clicked_num;
					let wrongOneId = "#wrongOne"+clicked_num;
					let wrongTwoId = "#wrongTwo"+clicked_num;
					let wrongThreeId = "#wrongThree"+clicked_num;
					let promptVal = document.querySelector(promptId).innerHTML;
					let gptAnswerVal = document.querySelector(gptAnswerId).innerHTML;
					let questionVal = document.querySelector(questionId).innerHTML;
					let answerVal = document.querySelector(answerId).innerHTML;
					let wrongOneVal = document.querySelector(wrongOneId).innerHTML;
					let wrongTwoVal = document.querySelector(wrongTwoId).innerHTML;
					let wrongThreeVal = document.querySelector(wrongThreeId).innerHTML;
					let nickname = document.getElementById('nick').value;
					var param = {"m_nick":nickname,"q_quest":questionVal,"q_sentence":promptVal,"q_paragraph":gptAnswerVal,"q_answer":answerVal,"q_wrong1":wrongOneVal,"q_wrong2":wrongTwoVal,"q_wrong3":wrongThreeVal};
					$.ajax({
					type:"POST",
					url:"/toto/generateP.do",
					data:JSON.stringify(param),
					dataType:"text",
					contentType: "application/json; charset=UTF-8",
					success:function(data){
						console.log(data);
						alert('문제를 성공적으로 저장하였습니다!');
					},
					error:function(xhr, status, error){
						alert('시스템 오류입니다. 죄송합니다. 새로고침을 해주세요!');
						console.log(error);
					}
				})
					
				});
				
                
      </script>
      
     

    <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js" integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.4.1/dist/js/bootstrap.min.js" integrity="sha384-wfSDF2E50Y2D1uUdj0O3uMBJnjuUD4Ih7YwaYd1iqfktj0Uod8GCExl3Og8ifwB6" crossorigin="anonymous"></script>

</body>
</html>