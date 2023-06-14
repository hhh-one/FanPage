<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@ include file="../include/header.jsp" %>

<head>
<meta charset="UTF-8">
<title>skyblue in your eyes</title>
</head>
<style>

	table {
	  border-collapse: separate;
	  border-spacing: 10px; /* 간격 크기 조정 */
	}
	
	td {
	  padding: 10px; /* 간격 크기 조정 */
	}
	
	<table cellpadding="10">
 	 <!-- 테이블 콘텐츠 -->
	</table>
		
</style>

<style>
.btn-7 frame {
  width: 90%;
  margin: 40px auto;
  text-align: center;
}
.btn-7 button {
  margin: 20px;
  outline: none;
}
.btn-7 {
  width: 100px;
  height: 40px;
  padding: 10px 25px;
  border: 2px solid #000;
  font-family: 'Lato', sans-serif;
  font-weight: 500;
  background: transparent;
  cursor: pointer;
  transition: all 0.3s ease;
  position: relative;
  display: inline-block;
}
.btn-7 {
  background: #000;
  color: #fff;
  line-height: 42px;
  padding: 0;
  border: none;
  z-index: 1;
   -webkit-transition: all 0.3s linear;
  transition: all 0.3s linear;
}
.btn-7:hover {
  background: transparent;
  color: #000;
}
.btn-7:before,
.btn-7:after {
  position: absolute;
  content: "";
  left: 0;
  width: 100%;
  height: 50%;
  right: 0;
  z-index: -1;
  background: #000;
  transition: all 0.3s ease;
}
.btn-7:before {
  top: 0;
}
.btn-7:after {
  bottom: 0;
}
.btn-7:hover:before,
.btn-7:hover:after {
  height: 0;
  background-color: #000;
}

/* btn-8  */

.btn-8 frame {
  width: 90%;
  margin: 40px auto;
  text-align: center;
}
.btn-8 button {
  margin: 20px;
  outline: none;
}
.btn-8 {
  width: 100px;
  height: 40px;
  padding: 10px 25px;
  border: 2px solid #000;
  font-family: 'Lato', sans-serif;
  font-weight: 500;
  background: transparent;
  cursor: pointer;
  transition: all 0.3s ease;
  position: relative;
  display: inline-block;
}
.btn-8 {
  background: #A4A4A4;
  color: #fff;
  line-height: 42px;
  padding: 0;
  border: none;
  z-index: 1;
   -webkit-transition: all 0.3s linear;
  transition: all 0.3s linear;
}
.btn-8:hover {
  background: transparent;
  color: #000;
}
.btn-8:before,
.btn-8:after {
  position: absolute;
  content: "";
  left: 0;
  width: 100%;
  height: 50%;
  right: 0;
  z-index: -1;
  background: #000;
  transition: all 0.3s ease;
}
.btn-8:before {
  top: 0;
}
.btn-8:after {
  bottom: 0;
}
.btn-8:hover:before,
.btn-8:hover:after {
  height: 0;
  background-color: #000;
}


</style>



<script>

 	 //id 중복체크
	 function idcheck() { 
	   window.open('idCheck.jsp', 'IDCheck', 'width=450,height=350');
	 }    	 
	
	function namecheck() { 
	    window.open('nameCheck.jsp', 'IDCheck', 'width=450,height=350');
	} 
	
</script>

<div class="content">
<section style="text-align: center; margin-top: 10px;" >

	<div style="display: inline-block;" align="center">
	
		<br>
		<h2 style="font-weight: bold; font-size: 20px;">skyblue in your eyes  회원 가입</h2><br><br><br>
		
		<span size="1" style="color: gray; ">* 은 필수 입력 사항 입니다.</span><br><br>
	
		<form action="joinForm.member" method="post" name="memberInfo" "> 	<!-- onsubmit="return checkValue()  -->

			<table border="1">

				<!-- 필수입력사항 -->	
				<tr>
					<td>* 아이디</td> <!-- 아이디 중복확인 넣어야함 -->
					<td><input type="text" name="id" required="required" pattern="\w{5,}" maxlength="20" placeholder="영문 5글자 이상 "></td>
					<td><input type="button" name="id중복확인" value="중복확인" onclick="idcheck()"  style="background-color: #dcdcdc; border-color: white; color: #323232; width: 70px; height: 28px;" ></td>
					<!--  style="background-color: #dcdcdc; border-color: white; color: #323232; width: 70px; height: 28px;"-->
									
					<!-- id 중복 체크 여부 -->
					<td><input type="hidden" name="idDuplication" value="idCheck"></td> <!--  value가 idUncheck 이면 중복체크를 하지 않은 것 -->
				</tr><br>			
				<tr>
					<td>* 비밀번호</td>
					<td><input type="password" name="pw" required="required" pattern="\w{6,}" placeholder="영문 6자리 이상"></td>
				</tr>
				<tr>	
					<td>* 비밀번호 확인 </td>					
					<td><input type="password" name="repw" required="required" placeholder="비밀번호를 재입력하세요"></td>
				</tr>			
				<tr>
					<td>* 닉네임</td> 
					<td><input type="text" name="name" required="required" ></td>
					<td><input type="button" name="name중복확인" value="중복확인" onclick="namecheck()" style="background-color: #dcdcdc; border-color: white; color: #323232; width: 70px; height: 28px;" ></td>
					<!-- 닉네임 중복 체크 여부 -->
					<td><input type="hidden" name="nameDuplication" value="nameCheck"></td> 
				</tr>
			
				<tr>
					<td>* 성별</td>
					<td>
						<input type="radio" name="gender" value="M">남자 
						<input type="radio" name="gender" value="F" checked="checked">여자 
					</td>
				</tr>	
				
				
				<!-- 선택입력사항 -->	
					
				<tr>
					<td> 이메일</td>
					<td><input type="email" name="email" placeholder="skyblue_eyes@gmail.com" ></td>
					<!-- <td><input type="button" value="Email 중복확인" onclick="emailCheck()"></td> -->
				</tr>
			
			</table>
							
			<div style="color: skyblue;">${msg }</div><br><br>		
			
			<section style="text-align: center; margin-top: 10px;">
			<div style="display: inline-block; margin-right: 30px;">
			
			<input type="submit" value="가입하기" class="btn-7" >
					<!-- style="background-color: #AFDDFA; color: white; border-color: white; width: 70px; height: 30px;" -->
			</div>
			
			<div style="display: inline-block;" >
			<input type="reset" value="입력초기화" class="btn-8" >
			<!-- style="background-color: #dcdcdc; border-color: white; color: #646464; width: 90px; height: 30px;" >
			 -->
			</div><br><br>
			<a href="../main.jsp" style="font-size: 13px;">메인 페이지로 돌아가기</a> 
			
			</section>
			
			
		</form>
		
	</div>
	
</section>
</div>
<script>
	function inputIdChk() {
		
		var joinForm = document.joinForm;
		var dbCheckId = document.joinForm.dbCheckId;
		
	}
</script>


<%@ include file="../include/footer.jsp" %>
