<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Tea Time</title>

<spring:url value="/resources/images/naver.png" var="naver" />

<link href="https://fonts.googleapis.com/css?family=Nunito&display=swap" rel="stylesheet">
<link rel="stylesheet" href="${basicCss }">

<style>
.main-wrapper {
	text-align: center;
}


.id-box {
	width: 300px;
	height: 30px;
	font-size: 16pt;
}
.id-box:focus {
	outline-width: 1px;
	outline-style: solid;
	outline-color: #228B22;
}
.pw-box {
	width: 300px;
	height: 30px;
	font-size: 16pt;
}
.pw-box:focus {
	outline-width: 1px;
	outline-style: solid;
	outline-color: #228B22;
}
</style>

</head>
<body>

<jsp:include page="/WEB-INF/views/header/l_header.jsp"/>

<div class="main-wrapper">



	<form action="loginchk" method="post">
	
		<input class="id-box" type="text" name="id" placeholder="ID"><br> 
		<input class="pw-box" type="password" name="pw" placeholder="Password"><br> 
		<input type="submit" value="로그인"><br>
		
		<div class="text-center">
			<a href="${ naver_url }"><img class="logo" src="${naver }" width="400px" height="50px"></a>
		</div>
		<br><input type="button" value="회원가입" onclick="location.href='register'">
	</form>
	
	
	
	
	
</div>
	
</body>
</html>