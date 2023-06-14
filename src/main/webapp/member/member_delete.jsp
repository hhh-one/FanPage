<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@ include file="../include/header.jsp" %>

<title>회원 탈퇴</title>


<!-- <script type="text/javascript">

	function check(){
		if(!document.delform.pw.value){
			alert("비밀번호를 입력하세요.");
			return false;
		}		
	}

</script> -->


</head>
<body>
<div style="text-align: center">

	<h3 style="font-weight: bold; font-size: 18px;">회원 탈퇴</h3><br><br>

	<form action="member_delete_result.member" method="post" onsubmit="return check()" name="delform">
	
	<!-- <h5 style="font-size: 14px;">비밀번호를 입력하세요 <input type="password" name="pw"/></h5><br><br>
	 -->
	<input  type="submit" value="회원탈퇴" style="background-color: #dcdcdc; 
			border-color: white; color: #323232; width: 80px; height: 28px;"
			onclick=""/>
	<br><br>
	<a href="../main.jsp" style="font-size: 13px;">메인 페이지로 돌아가기</a> <%-- 버튼 or 링크 고민.. 인덱스 주소로 입력 .member or .jsp or 메소드 ?  --%>
			
	</form>
	
</div>

<%@ include file="../include/footer.jsp" %>