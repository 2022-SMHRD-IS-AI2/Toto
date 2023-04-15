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
    <link rel="stylesheet" type="text/css" href="${cPath}/resources/css/login.css">
</head>
<body>
    <div class="login">
        <img src="${cPath}/resources/images/logo3.jpg" class="login-logo" onclick="location.href='${cPath}/'">
        <form method="post" class="login-form" action="${cPath}/login.do">
            <h3>Email</h3>
            <input type="text" name="m_email" placeholder="Email">
            <h3>Password</h3>
            <input type="password" name="m_pw" placeholder="Password">
            <!-- <label for="remember-check">
                <input type="checkbox" id="remember-check">아이디 저장하기
            </label> -->
            <input type="submit" value="Login">
            <input type="button" value="Sign up" onclick="location.href='${cPath}/join.do'">
        </form>
    </div>
</body>
</html>