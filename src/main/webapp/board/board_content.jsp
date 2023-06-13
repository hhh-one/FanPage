<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ include file="../include/header.jsp"%>

<div class="content">
	<div class="content-wrap">

		<div class="BoardBox">
			<!-- board 제목, 글쓴이, 작성일 -->
			<div class="board-header">
				<div class="board-title">${ boardvo.title }</div>
				<div class="board-info">
					<div class="board-writer">${ boardvo.name }</div>
					<div class="board-date">${ boardvo.regdate }</div>
					<div class="board-hit">조회 ${ boardvo.hit }</div>
				</div>
			</div>
			<!-- board 내용 -->
			<div class="board-container">
				<textarea class="board-content">${ boardvo.content }</textarea>
			</div>
		</div>

		<div class="CommentBox">
			<!-- comment 제목 -->
			<div class="comment-header">
				<h3>댓글</h3>
			</div>
			<!-- comment list -->
			<c:forEach var="comment" items="${ commentList }">
				<div class="comment-list">
					<div class="comment-writer">${ comment.name }</div>
					<div class="comment-content">${ comment.content }</div>
					<div class="comment-date">${comment.regdate }</div>
				</div>
			</c:forEach>
			<!-- comment 작성 -->
			<div class="comment-write">
				<form action="">
					<div class="comment-info">
						<div class="write-writer">${ sessionScope.member_name }</div>
						<div class="write-content">
							<input type="text" placeholder="댓글을 남겨보세요">
						</div>
					</div>
					<div class="comment-regist">
						<input type="submit" value="등록" onclick="location.href='writeComment.comment?bno=${ boardvo.bno }'">
					</div>
				</form>
			</div>
		</div>

		<div class="board-btn">
		<c:if test="${ boardvo.name == sessionScope.member_name }">
			<input type="button" value="수정" class="edit-btn" onclick="location.href='board_modify.board?bno=${ boardvo.bno }'">
			<input type="button" value="삭제" class="delete-btn" onclick="location.href='board_delete.board?bno=${ boardvo.bno }'">
		</c:if>
			<input type="button" value="목록" class="list-btn" onclick="location.href='board_list.board'">
		</div>
	</div>
</div>
<!-- end content -->

<%@ include file="../include/footer.jsp"%>