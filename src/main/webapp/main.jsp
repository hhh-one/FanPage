<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
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
				<tr>
					<td></td>
					<td></td>
					<td></td>
					<td></td>
					<td></td>
				</tr>		
			</tbody>
		
		</table>
	</div>
	


</div>

<%@ include file="../include/footer.jsp" %>