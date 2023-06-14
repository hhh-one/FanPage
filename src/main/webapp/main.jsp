<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
    
<%@ include file="../include/header.jsp" %>

<div class="content">
	<div class="main-wrap">
		<img class="main-image" src="<%= request.getContextPath() %>/images/main_img.png"><br/>
	
 		<table class="table table striped" style= "text-align: center" border="1px solid #dddddd">
			<thead>
				<tr>
					<th style="background-color : #eeeeee ; text-align : center;">글번호</th>
					<th style="background-color : #eeeeee ; text-align : center;">닉네임</th>
					<th style="background-color : #eeeeee ; text-align : center;">글제목</th>
					<th style="background-color : #eeeeee ; text-align : center;">작성일</th>
					<th style="background-color : #eeeeee ; text-align : center;">조회수</th>
				</tr>
			</thead>		
			<tbody>
			<c:forEach items="${list }" var="mainList">
				<tr>
					<td><c:out value="${list.bno } "></c:out></td>
					<td><c:out value="${list.name } "></c:out></td>
					<td><c:out value="${list.title } "></c:out></td>
					<td><c:out value="${list.regdate } "></c:out></td>
					<td><c:out value="${list.hit } "></c:out></td>
				</tr>
			</c:forEach>		
			</tbody>
		
		</table>
	</div>
	
</div>

<%@ include file="../include/footer.jsp" %>