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
<title>Insert title here</title>
</head>
<body>
	<p id="p">Nice</p>
	<p id="paragraph">Hello</p>
	<button id="btn">clicked</button>
	
	<script src="https://code.jquery.com/jquery-3.6.1.min.js"></script>
	<script>

	document.getElementById('btn').addEventListener('click',btnClicked);
    
     function btnClicked(){
        var a = document.getElementById('p');
        let para = {"q":"tlqkf"};
        let jsonPara = JSON.stringify(para);

        $.ajax({
        	url:'http://211.227.224.143:5000/quiz',
        	data:jsonPara,
        	type:'POST',
        	timeout:5000,
        	
        	contentType:"application/json; charset=utf-8",
        	success:function(data, status, xhr){
        		a.innerText = data
        	},
        	error:function(xhr, status, error){
        		console.debug(error)
        	},
        	complete:function(xhr, status){
        		console.log('됐냐?')
        	}
        	
        
        
        })
        }
     

</script>

</body>
</html>