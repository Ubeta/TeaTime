<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>register</title>
<style>
#cat {
	text-align: center;
  	animation-duration: 0.8s;
  	animation-name: slidein;
	}

@keyframes slidein {
  from {
    margin-left: 200px;
    opacity: 0;
   
  }

  to {
    margin-left: -250px;
    opacity: 1;
  }
}

<%--###########################--%>
 
   .table2{
   	border:1px solid #fff;
   	  border-radius: 10%;
      position:absolute;
      top:55%;
      left:50%;
      width:700px;
      height:700px;
      
      margin-top: -350px;
      margin-left: -350px;
   }
   .table2 td{
   	border-radius: 10%;
   	 width:200px;
   	background-color: white;
   }
   
   
   .div	{
	height: 1000px;
   }
  
   .table1{
      position:absolute;
      top:55%;
      left:50%;
      width:700px;
      height:700px;
      margin-top: -350px;
      margin-left: -350px;
   }
   
   tr{
     
      width: 500px; height: 70px;
   }
   
   
   .regButton {
   	width:400px;
   	height:60px;
	box-shadow: 0px 10px 14px -7px #3e7327;
	background:linear-gradient(to bottom, #77b55a 5%, #72b352 100%);
	background-color: #86E57F;
	border-radius:4px;
	border:1px solid #4b8f29;
	display:inline-block;
	cursor:pointer;
	color:#ffffff;
	font-family:Arial;
	font-size:13px;
	font-weight:bold;
	padding:6px 12px;
	text-decoration:none;
	text-shadow:0px 1px 0px #5b8a3c;
	}
	.regButton:hover {
		background:linear-gradient(to bottom, #72b352 5%, #77b55a 100%);
		background-color:#72b352;
	}
	.regButton:active {
		position:relative;
		top:1px;
	}
	   
</style>
<script type="text/javascript" src="resources/jquery-3.2.1.min.js"></script>
<c:set var="list" value="${id_list }"/>
<jsp:useBean id="dao" class="com.care.modelDAO.ModelDAO"/>
<script type="text/javascript">
	window.onload = function () {
		$("#m_id").focus();
		  $("#cat").hide();
	}
	
	function reg_chk(){
		
		var id = document.getElementById("m_id").value;
		var pw = document.getElementById("m_pw").value;
		var pwchk = document.getElementById("m_pwchk").value;
		var name = document.getElementById("m_name").value;
		var idnum = document.getElementById("m_idnum").value;
		var gender = document.getElementById("m_gender").value;
		var tel = document.getElementById("m_tel").value;
		var mail = document.getElementById("m_mail").value;
		
				
		if(!(id==null || id=='')){
			if(id=="1"){
					document.getElementById("m_id").value="";
					alert("아이디"+id+"(은)는 이미 가입된 아이디 입니다.");
				}else{
					if(pw!=null && pw!=""){
						if(pw==pwchk){
							if(name!=null && name!=""){
								if(idnum!=null && idnum!=""){
									if(idnum.length==6){
										if(gender!=null && gender!=""){
											if(tel!=null && tel!=""){
												if(mail!=null && mail!=""){
													$("#meminfo").hide();
													$("#cat").show();
												}else{
													alert("메일주소를 입력하세요");
												}
											}else{
												alert("전화번호를 입력하세요");
											}
										}else{
											alert("성별을 입력하세요");
										}
									}else{
										document.getElementById("m_idnum").value="";
										alert("주민등록번호 앞 6자리를 정확하게 입력하세요");
									}
								}else{
									alert("생년월일을 입력하세요");
								}
							}else{
								alert("이름을 입력하세요");
							}
						}else{
							document.getElementById("m_pw").value="";
							document.getElementById("m_pwchk").value="";
							alert("비밀번호가 일치하지 않습니다.");
						}
					}else{
						alert("비밀번호를 입력하세요");
					}
				}
		}else{
			alert("아이디를 입력하세요");
		}
	}
</script>

</head>
<body>
<jsp:include page="/WEB-INF/views/header/l_header.jsp"/>
<div>
	<form action="register_chk">
		<div class="div">
			<table border="1" class="table1" id="meminfo">
				<tr>
					<td><font size="4em">아이디</font></td><th><input type="text" name="m_id" id="m_id" placeholder="아이디를 입력하세요" style="width: 300px; height: 60px;"></th>
				</tr>
				<tr>
					<td><font size="4em">비밀번호</font></td><th><input type="password" name="m_pw" id="m_pw" placeholder="비밀번호를 입력하세요" style="width: 300px; height: 60px;"></th>
				</tr>
				<tr>
					<td><font size="4em">비밀번호 확인</font></td><th><input type="password" name="m_pkchk" id="m_pwchk" placeholder="비밀번호를 다시입력하세요" style="width: 300px; height: 60px;"></th>
				</tr>
				<tr>
					<td><font size="4em">이름</font></td><th><input type="text" name="m_name" id="m_name" placeholder="이름을 입력하세요" style="width: 300px; height: 60px;"></th>
				</tr>
				<tr>
					<td><font size="4em">생년월일</font></td><th><input type="text" name="m_idnum" id="m_idnum" placeholder="주민번호 앞 6자리를 입력하세요" style="width: 300px; height: 60px;"></th>
				</tr>
				<tr>
					<td><font size="4em">성별</font></td><td align="center"><font size="3em">남성</font><input type="radio" name="m_gender" id="m_gender" value="1"><font size="3em">여성</font><input type="radio" name="m_gender" id="m_gender" value="0"></td>
				</tr>
				<tr>
					<td><font size="4em">전화번호</font></td><th><input type="text" name="m_tel" id="m_tel" placeholder="전화번호를 입력하세요" style="width: 300px; height: 60px;"></th>
				</tr>
				<tr>
					<td><font size="4em">이메일</font></td><th><input type="text" name="m_mail" id="m_mail" placeholder="이메일을 입력하세요" style="width: 300px; height: 60px;"></th>
				</tr>
				<tr>
					<td colspan="2" style="text-align: center "><input class="regButton" type="button" value="다음" name="next" onclick="reg_chk()" ></td>
				</tr>
			</table>
		</div>
		
		<table class="table2" id="cat" border="1">
			<tr>
				<td>뉴스<br><input type="checkbox" name="c_news" value="1"></td>
				<td>스포츠<br><input type="checkbox" name="c_sports" value="1"></td>
				<td>음식<br><input type="checkbox" name="c_food" value="1"></td>
				<td>언어<br><input type="checkbox" name="c_language" value="1"></td>
				<td>인물<br><input type="checkbox" name="c_people" value="1"></td>
			</tr>
			
			<tr>
				<td>동물<br><input type="checkbox" name="c_animal" value="1"></td>
				<td>패션<br><input type="checkbox" name="c_fashion" value="1"></td>
				<td>연애<br><input type="checkbox" name="c_love" value="1"></td>
				<td>영화<br><input type="checkbox" name="c_movie" value="1"></td>
				<td>종교<br><input type="checkbox" name="c_religion" value="1"></td>
			</tr>
	
			<tr>
				<td>지식<br><input type="checkbox" name="c_knowledge" value="1"></td>
				<td>여행<br><input type="checkbox" name="c_travel" value="1"></td>
				<td>만화<br><input type="checkbox" name="c_cartoon" value="1"></td>
				<td>게임<br><input type="checkbox" name="c_game" value="1"></td>
				<td>IT<br><input type="checkbox" name="c_it" value="1"></td>
			</tr>
			
			<tr>
				<td>날씨<br><input type="checkbox" name="c_weather" value="1"></td>
				<td>음악<br><input type="checkbox" name="c_music" value="1"></td>
				<td>자동차<br><input type="checkbox" name="c_car" value="1"></td>
				<td>경제<br><input type="checkbox" name="c_economy" value="1"></td>
				<td>기타<br><input type="checkbox" name="c_etc" value="1"></td>
			</tr>
			
			<tr>
				<td>Job<br><input type="checkbox" name="c_job" value="1"></td>
				<td>리빙<br><input type="checkbox" name="c_living" value="1"></td>
				<td>도서<br><input type="checkbox" name="c_book" value="1"></td>
				<td>축제<br><input type="checkbox" name="c_festival" value="1"></td>
				<td>건강<br><input type="checkbox" name="c_health" value="1"></td>
			</tr>
			<tr>
				<td colspan="5" style="text-align: center;">
				<input class="regButton" type="submit" name="sub" value="회원가입">
				</td>
			</tr>
		</table>
	</form>
</div>

</body>
</html>