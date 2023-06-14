<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<meta charset="UTF-8">

<title>skyblue in your eyes</title>


<script type="text/javascript">

	function blankCheck(p){
		var name = p.name.value;
		name = name.trim();
		
		if(name.length < 5){
			alert("닉네임은 5글자 이상 입력해주세요")
			return false;
		}
		return true;
	}

</script>


<body>

	<div style="text-align: center">
	<br><br>
		<h3 style="font-size:20px"> 닉네임 중복확인 </h3><br>
		
	    <form method="post" action="nameCheckResult.jsp" onsubmit="return blankCheck(this)">
	    
	    닉네임 : <input type="text" name="name" maxlength="10" autofocus>
	    <input type="submit" value="중복확인" style="background-color: #dcdcdc; border-color: white; color: #646464; width: 70px; height: 30px;">
	    
	    </form>
	    
	</div>



</body>
</html>