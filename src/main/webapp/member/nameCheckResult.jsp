<%@page import="com.sky.member.model.MemberDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>skyblue in your eyes</title>
</head>

<body>

	<div style="text-align: center">

	<h3 style="font-size:20px"> 닉네임 중복 확인 결과 </h3>
	
<%
	//사용가능한 아이디일 경우, 아이디 입력 폼에 넣기
	    String name =request.getParameter("name");
	    MemberDAO dao = MemberDAO.getInstance();    
	    int cnt = dao.nameCheck(name);
	    
	    out.println("입력 ID : <strong>" + name + "</stong>");
	    
	    if (name.trim().isEmpty()) {
	        out.println("<p style='color: red'> 닉네임을 입력해주세요.</p>");
	    } else if (cnt == 0) {
	    	out.println("<p>사용 가능한 닉네임입니다.</p>");
			//out.println("<a href='javascript:apply(\"" + name + "\")'>[적용]</a>");		
	    }else{
	    	out.println("<p style='color: red'>해당 닉네임은 이미 사용중입니다.</p>");
	    } //if end
	%>

	<hr>
	<a href="javascript:history.back()">[다시 검색]</a>
	&nbsp;&nbsp;
	<a href="javascript:window.close()">[창 닫기]</a>



</div>

    
    		
</body>
</html>