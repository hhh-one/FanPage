<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@ include file="../include/header.jsp" %>

<meta charset="UTF-8">
<title>skyblue in your eyes</title>

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

<script>

 	 //id 중복체크
	 function idcheck() { 
	   window.open('idCheck.jsp', 'IDCheck', 'width=450,height=350');
	 }    
	 
	
	function namecheck() { 
	    window.open('nameCheck.jsp', 'IDCheck', 'width=450,height=350');
	} 
	
	
  function checkValue(){
	  
	  	var form = document.memberInfo; //user?
		
		if(!form.id.value){
			alert("아이디를 입력하세요.");
			return false;
		}
		
		if(form.idDuplication.value != "idCheck"){
			alert("아이디 중복체크를 해주세요.");
			return false;
		}
		
		if(!form.password.value){
			alert("비밀번호를 입력하세요.");
			return false;
		}
		
		// 비밀번호와 비밀번호 확인에 입력된 값이 동일한지 확인
		if(form.password.value != form.passwordcheck.value ){
			alert("비밀번호를 동일하게 입력하세요.");
			return false;
		}
	    	
    	if(!form.mail1.value){
			alert("메일 주소를 입력하세요.");
			return false;
		}
    	if(!form.name.value){
			alert("아이디를 입력하세요.");
			return false;
		}
		
		if(form.nameDuplication.value != "nameCheck"){
			alert("아이디 중복체크를 해주세요.");
			return false;
		} 	   
    	
	    	return true; //유효성 검사를 모두 통과
	}//memberCheck() end
	
	function inputIdChk(){
		document.memberInfo.idDuplication.value ="idUncheck";
	}

	
	
	
</script>




<div class="content" style="text-align: center; margin-top: 10px;" >

	<div style="display: inline-block;" align="center">
	
		<br>
		<h2 style="font-weight: bold; font-size: 20px;">skyblue in your eyes  회원 가입</h2><br><br><br>
		
		<span size="1" style="color: gray; ">* 은 필수 입력 사항 입니다.</span><br><br>
		
		<form action="joinForm.member" method="post" name="memberInfo" onsubmit="return checkValue()">

			<table border="1">

				<!-- 필수입력사항 -->	
				<tr>
					<td>* 아이디</td> <!-- 아이디 중복확인 넣어야함 -->
					<td><input type="text" name="id" required="required" pattern="\w{5,}" onkeydown="inputIdChk()" maxlength="20" placeholder="영문 5글자 이상 "></td>
					<td><input type="button" name="id중복확인" value="중복확인" onclick="idcheck();" style="background-color: #dcdcdc; border-color: white; color: #323232; width: 70px; height: 28px;" ></td>
									
					<!-- id 중복 체크 여부 -->
					<td><input type="hidden" name="idDuplication" value="idUncheck"></td> <!--  value가 idUncheck 이면 중복체크를 하지 않은 것 -->
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
					<td>* 닉네임</td> <!-- 닉네임 중복확인 넣어야함 -->
					<td><input type="text" name="name" required="required" ></td>
					<td><input type="button" name="id중복확인" value="중복확인" onclick="namecheck();" style="background-color: #dcdcdc; border-color: white; color: #323232; width: 70px; height: 28px;" ></td>
					
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
			<div style="display: inline-block; margin-right: 10px;">
			<!-- 이전 코드 내용 -->
			<!-- 가입하기 버튼과 입력초기화 버튼 사이에 오른쪽 마진을 10px로 설정 -->
			<input type="submit" value="가입하기" style="background-color: #AFDDFA	; color: white; border-color: white; width: 70px; height: 30px;">
			</div>
			
			<div style="display: inline-block;">
			<input type="reset" value="입력초기화"   style="background-color: #dcdcdc; border-color: white; color: #646464; width: 90px; height: 30px;" >
			</div><br><br>
			<a href="../main.jsp" style="font-size: 13px;">메인 페이지로 돌아가기</a> <!-- 버튼 or 링크 고민.. 인덱스 주소로 입력 .member or .jsp or 메소드 ? -->
			
			</section>
			
			
		</form>
		
	</div>
	
</div>

<!-- <script>
	function inputIdChk() {
		
		var joinForm = document.joinForm;
		var dbCheckId = document.joinForm.dbCheckId;
		
	}
</script> -->


<%@ include file="../include/footer.jsp" %>
