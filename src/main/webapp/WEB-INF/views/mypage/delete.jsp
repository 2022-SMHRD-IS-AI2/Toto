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
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.4.1/dist/css/bootstrap.min.css" integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh" crossorigin="anonymous">
    <link href="./css/reset.css" rel="stylesheet">
    
    <title>Document</title>
</head>
<body>
   
    <jsp:include page="../left.jsp"></jsp:include>
    <div class="delete-title">
        <h2>Membership Withdrawal</h2>
    </div>
    <div class="delete">
        <div class="deleteContent">
           
            
            <div class="deleteForm">
                <form action="">
                    <div class="form-group row"style="width:800px">
                        <label for="staticEmail" class="col-sm-2 col-form-label">Email</label>
                        <div class="col-sm-10">
                          <input type="text" readonly class="form-control-plaintext" id="staticEmail" value="email@example.com">
                        </div>
                      </div>
                      <div class="form-group row" style="width:800px" >
                        <label for="inputPassword" class="col-sm-2 col-form-label">비밀번호</label>
                        <div class="col-sm-10" >
                          <input type="password" class="form-control" id="inputPassword">
                        </div>
                      </div>
                    <div class="panel-body">
                        
                            <label class="control-label"> 회원 탈퇴 약관 </label>
                            <div class="col-xs-12">
                                <textarea class="form-control" readonly rows="10" cols="100" style="height: 320px;">
    제1조
    이 약관은 샘플 약관입니다.
    
    ① 약관 내용 1
    
    ② 약관 내용 2
    
    ③ 약관 내용 3
    
    ④ 약관 내용 4
    
    
    제2조
    이 약관은 샘플 약관입니다.
    
    ① 약관 내용 1
    
    ② 약관 내용 2
    
    ③ 약관 내용 3
    
    ④ 약관 내용 4
    </textarea>
                            </div>
                           
                                    <div class="form-check">
                                        <input type="checkbox" name="agree" id="agree"
                                            > <br>
                                        <label class="form-check-label"
                                            for="agree">위 약관에 동의합니다.</label>
                                    </div>
        
                    </div>    
                    
                    <div class="btnDelete">
                        <button style="width: 200px; height: 40px;" class="btn btn-secondary btn-sm" type="submit">회원탈퇴하기</button>
                    </div>
     
                </form>
            </div>
        </div>
         

    </div>

     <jsp:include page="sidemenu.jsp"></jsp:include>
    <script src="https://code.jquery.com/jquery-3.4.1.slim.min.js" integrity="sha384-J6qa4849blE2+poT4WnyKhv5vZF5SrPo0iEjwBvKU7imGFAV0wwj1yYfoRSJoZ+n" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js" integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.4.1/dist/js/bootstrap.min.js" integrity="sha384-wfSDF2E50Y2D1uUdj0O3uMBJnjuUD4Ih7YwaYd1iqfktj0Uod8GCExl3Og8ifwB6" crossorigin="anonymous"></script>
    
</body>
</html>