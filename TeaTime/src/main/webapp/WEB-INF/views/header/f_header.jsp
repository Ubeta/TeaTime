<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>f_header.jsp</title>

<spring:url value="/resources/css/basic.css" var="basicCss" />
<spring:url value="/resources/images/logo2.png" var="logo" />
<spring:url value="/resources/images/searchicon.png" var="searchicon" />

<link href="https://fonts.googleapis.com/css?family=Nunito&display=swap"
	rel="stylesheet">
<link rel="stylesheet" href="${basicCss }">

<style>
.header-wrapper {
	margin-top: 0;
	background-color: #66CCCC;
	height: 80px;
	display: flex;
	flex-flow: row;
	border-bottom-style: solid;
	border-bottom-width: 5px;
	border-color: #2F4F4F;
}

.img-container: {
	order: 1;
}

.logo {
	margin: 15px;
	margin-left: 60px;
	border-radius: 5px;
}

.logo:hover {
	cursor: pointer;
}

.title-container {
	order: 2;
	margin-top: 12px;
	margin-left: 10px;
}

.title {
	font-size: 32pt;
	color: white;
}

.title:hover {
	cursor: pointer;
	font-weight: bold;
}

.search-container {
	order: 3;
}

#sFrm {
	display: flex;
	flex-flow: row;
}

.search-bar-container {
	order: 1;
	margin-left: 200px;
	margin-top: 15px;
}

.search-bar {
	height: 30px;
	width: 300px; height : 30px;
	font-size: 16pt;
}

.search-button-container {
	order: 2;
	margin-top: 24px;
	background-color: #DCDCDC;
	width: 34px;
	height: 34px;
}

.search-button {
	margin-top: 3px;
	margin-left: 1px;
	width: 30px;
	height: 30px;
}
.search-button-container:hover {
	opacity: .8;
}
.search-button:hover {
	cursor: pointer;
	opacity: .8;
}
a {
	text-decoration: none;
	font-size: 12pt;
	text-align: center;
	color: white;
	
}

.list-container {
	order: 4;
	display: flex;
	flex-flow: row;
	margin-left: 160px;
	margin-top: 6px;
	height: 60px;
	width: 320px;
	background-color: #2F4F4F;
	line-height: 50px;
	border-radius: 3px;
	border-style: solid;
	border-color: black;
	text-align: center;
	
}
.main-page {
	order: 1;
	margin-left: 12px;
}
.main-page:hover {
	font-weight: bold;
	cursor: pointer;
}
.my-page {
	order: 2;
	padding-left: 10px;
	padding-right: 10px;
	margin-left: 15px;
	margin-right: 15px;
	border-left-style: solid;
	border-left-color: grey;
	border-left-width: 2px;
	border-right-style: solid;
	border-right-color: grey;
	border-right-width: 2px;
}
.my-page:hover {
	font-weight: bold;
	cursor: pointer;
}
.logout {
	order: 3;
	margin-right: 12px;
	
}
.logout:hover {
	font-weight: bold;
	cursor: pointer;
}
</style>

<script>
	function searchFunc(){
		var frm = document.getElementById("sFrm");
		frm.submit();
	}
	function mainpage(){
		location.href="#";
	}
	function mypage(){
		location.href="#";
	}
	function logout(){
		location.href="#";
	}
</script>

</head>
<body>

	<div class="header-wrapper">

		<div class="img-container">
			<img class="logo" src="${logo }" width="50px" height="50px">
		</div>
		<div class="title-container">
			<span class="title">Tea Time</span>
		</div>

		<div class="search-container">
			<form id="sFrm" action="main-search" method="get">
				<div class="search-bar-container">
					<input class="search-bar" type="text" name="m_search">
				</div>
				<div class="search-button-container">
					<img class="search-button" src="${searchicon }"
						onclick="searchFunc">
				</div>
			</form>
		</div>
		
		<div class="list-container">
			<div class="main-page" onclick="mainpage()">
				<a href="#">메인 페이지</a>
			</div>
			<div class="my-page" onclick="mypage()">
				<a href="#">마이 페이지</a>
			</div>
			<div class="logout" onclick="logout()">
				<a href="#">로그아웃</a>
			</div>
		</div>

	</div>

</body>
</html>