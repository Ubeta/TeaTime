<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>register</title>
<script type="text/javascript" src="http://code.jquery.com/jquery-3.2.0.min.js" ></script>
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
 
   .table1{
   	border:1px solid #fff;
   	  border-radius: 10%;
      position:absolute;
      top:43%;
      left:45%;
      width:700px;
      height:700px;
      
      margin-top: -250px;
      margin-left: -250px;
   }
   .table1 td{
   	border-radius: 10%;
   	 width:200px;
   	background-color:lightblue;
   }
   
   
   .div	{
     background-color: skyblue;
	height: 1500px;
   }
  
   .table2{
      position:absolute;
      top:50%;
      left:50%;
      width:500px;
      height:500px;
      background-color:lightblue;
      margin-top: -250px;
      margin-left: -250px;
   }
   
   tr{
     
      width: 500px; height: 70px;
   }
   
</style>

<script type="text/javascript">
	window.onload = function () {
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
		
		if(id!=null || id!=""){
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
<div>
	<form action="register_chk">
		<div class="div">
			<table border="1" class="table2" id="meminfo">
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
					<td><font size="4em">성별</font></td><td align="center">남성<input type="radio" name="m_gender" id="m_gender" value="1">여성<input type="radio" name="m_gender" id="m_gender" value="0"></td>
				</tr>
				<tr>
					<td><font size="4em">전화번호</font></td><th><input type="text" name="m_tel" id="m_tel" placeholder="전화번호를 입력하세요" style="width: 300px; height: 60px;"></th>
				</tr>
				<tr>
					<td><font size="4em">이메일</font></td><th><input type="text" name="m_mail" id="m_mail" placeholder="이메일을 입력하세요" style="width: 300px; height: 60px;"></th>
				</tr>
				<tr>
					<td colspan="2"><input type="button" value="다음" name="next" onclick="reg_chk()"></td>
				</tr>
			</table>
		</div>
		
		<table class="table1" id="cat" border="1">
			<tr>
				<td><input type="checkbox" name="sports" value="1">스포츠</td>
				<td><input type="checkbox" name="news" value="1">뉴스</td>
				<td><input type="checkbox" name="food" value="1">음식</td>
				<td><input type="checkbox" name="language" value="1">언어</td>
				<td><input type="checkbox" name="people" value="1">인물</td>
			</tr>
			
			<tr>
				<td><input type="checkbox" name="animal" value="1">동물</td>
				<td><input type="checkbox" name="fashion" value="1">패션</td>
				<td><input type="checkbox" name="love" value="1">연애</td>
				<td><input type="checkbox" name="movie" value="1">영화</td>
				<td><input type="checkbox" name="religion" value="1">종교</td>
			</tr>
	
			<tr>
				<td><input type="checkbox" name="knowledge" value="1">지식</td>
				<td><input type="checkbox" name="travel" value="1">여행</td>
				<td><input type="checkbox" name="cartoon" value="1">만화</td>
				<td><input type="checkbox" name="game" value="1">게임</td>
				<td><input type="checkbox" name="it" value="1">IT</td>
			</tr>
			
			<tr>
				<td><input type="checkbox" name="weather" value="1">날씨</td>
				<td><input type="checkbox" name="music" value="1">음악</td>
				<td><input type="checkbox" name="car" value="1">자동차</td>
				<td><input type="checkbox" name="economy" value="1">경제</td>
				<td><input type="checkbox" name="etc" value="1">기타</td>
			</tr>
			
			<tr>
				<td><input type="checkbox" name="job" value="1">Job</td>
				<td><input type="checkbox" name="living" value="1">리빙</td>
				<td><input type="checkbox" name="book" value="1">도서</td>
				<td><input type="checkbox" name="festival" value="1">축제</td>
				<td><input type="checkbox" name="health" value="1">건강</td>
			</tr>
			<tr>
				<td>
				<input type="submit" name="sub">
				</td>
			</tr>
		</table>
	</form>
</div>

</body>
</html>