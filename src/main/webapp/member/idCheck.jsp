<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<meta charset="UTF-8">

<title>skyblue in your eyes</title>


<script type="text/javascript">

	function blankCheck(p){
		var id = p.id.value;
		id = id.trim();
		
		if(id.length < 5){
			alert("아이디는 영문으로 5글자 이상 입력해주세요")
			return false;
		}
		return true;
	}

</script>


<body>

	<div style="text-align: center">
	
		<h3> 아이디 중복확인 </h3>
		
	    <form method="post" action="idCheckResult.jsp" onsubmit="return blankCheck(this)">
	    
	    아이디 : <input type="text" name="id" maxlength="10" autofocus>
	    <input type="submit" value="중복확인">
	    
	    </form>
	    
	</div>



</body>
</html>