<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>m_header.jsp</title>

<spring:url value="/resources/css/basic.css" var="basicCss"/>
<spring:url value="/resources/images/logo2.png" var="logo"/>

<link href="https://fonts.googleapis.com/css?family=Nunito&display=swap" rel="stylesheet">
<link rel="stylesheet" href="${basicCss }"> 

<style>
	
	.header-wrapper {
		margin-top: 0;
		background-color: #66CCCC;
		height: 80px;
		display: flex;
		flex-flow: row;
	}
	
	.img-container: {
		order: 1;
	}
	
	.logo {
		margin: 15px;
		margin-left: 80px;
		border-radius: 5px;
	}
	.logo:hover {
		cursor: pointer;
	}
	
	.title-container {
		order: 2;
		margin-top: 12px;
		margin-left: 20px;
	}
	.title {
		font-size: 32pt;
		color: white;
	}
	.title:hover {
		cursor: pointer;
		font-weight: bold;
	}
	
</style>

</head>
<body>

<div class="header-wrapper">

	<div class="img-container">
		<img class="logo" src="${logo }" width="50px" height="50px">
	</div>
	<div class="title-container">
		<span class="title">Tea Time</span>
	</div>

</div>

</body>
</html>