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
    <link rel="stylesheet" type="text/css" href="${cPath}/resources/css/signup.css">
</head>
<body>
    <div class="login">
        <img src="${cPath}/resources/images/logo3.jpg" class="login-logo" onclick="location.href='${cPath}/'">
        <form method="post" class="login-form" action="${cPath}/join.do">
            <!-- <h3>Email</h3> -->
            <input type="text" name="m_email" placeholder="Email">
            <!-- <h3>Password</h3> -->
            <input type="password" name="m_pw" placeholder="Password" id="inputPassword4">
            <!-- <h3>Password 확인</h3> -->
            <input type="password" name="m_pw2" placeholder="Password Check" id="inputPassword5" onkeyup="checkPw()">
            <span style="color:red; font-size: 10px; margin-top: -5px" id="checkingPw"></span>
            <!-- <h3>Name</h3> -->
            <input type="text" name="m_name" placeholder="Name">
            <!-- <h3>NickName</h3> -->
            <input type="text" name="m_nick" placeholder="NickName">
            <!-- <h3>PhoneNumber</h3> -->
            <input type="tel" name="m_phone" placeholder="PhoneNumber">
            <!-- <h3>소속</h3> -->
            <input type="text" name="m_career" placeholder="Company">
            <!-- <label for="remember-check">
                <input type="checkbox" id="remember-check">아이디 저장하기
            </label> -->
            <!-- <input type="submit" value="Login"> -->
            <input type="submit" value="Sign up">
        </form>
    </div>
    <script>
    const form = document.querySelector('.login-form');
    const inputs = form.querySelectorAll('input');
    
    form.addEventListener('submit', function(e) {
      e.preventDefault();
    
      let emptyInputs = [];
      let password = '';
      let passwordConfirm = '';
    
      inputs.forEach(function(input) {
        if (input.name === 'm_pw') {
          password = input.value;
        } else if (input.name === 'm_pw2') {
          passwordConfirm = input.value;
        } else if (input.value.trim() === '') {
          emptyInputs.push(input.name);
        }
      });
    
      if (emptyInputs.length > 0) {
        alert(`다음 항목을 모두 입력하세요: ${emptyInputs.join(', ')}`);
      } else if (password !== passwordConfirm) {
        alert('비밀번호와 비밀번호 확인이 일치하지 않습니다.');
      } else {
        form.submit();
      }
    });
    function checkPw(){
	    let pw = document.getElementById("inputPassword4").value;
	    console.log(pw)
	    let pw2 = document.getElementById("inputPassword5").value;
	    console.log(pw2)
	    let text = "";
        if(pw == pw2){
            text = "비밀변호가 일치합니다.";
        }
        else{
            text = "비밀번호가 다릅니다.";
        }
        document.getElementById("checkingPw").innerText = text;
    }
</script>

</body>
</html>