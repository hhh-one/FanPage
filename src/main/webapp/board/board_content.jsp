<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ include file="../include/header.jsp"%>

<div class="content">
	<div class="content-wrap">

		<div class="BoardBox">
			<!-- board 제목, 글쓴이, 작성일 -->
			<div class="board-header">
				<div class="board-title">${ vo.title }</div>
				<div class="board-info">
					<div class="board-writer">${ vo.name }</div>
					<div class="board-date">${ vo.regdate }</div>
					<div class="board-hit">조회 ${ vo.hit }</div>
				</div>
			</div>
			<!-- board 내용 -->
			<div class="board-container">
				<textarea class="board-content">${ vo.content }</textarea>
			</div>
		</div>

		<div class="CommentBox">
			<!-- comment 제목 -->
			<div class="comment-header">
				<h3>댓글</h3>
			</div>
			<!-- comment list -->
			<div class="comment-list"></div>
			<!-- comment 작성 -->
			<div class="comment-write">
				<form action="">
					<div class="comment-info">
						<div class="comment-writer">${ sessionScope.user_name }</div>
						<div class="comment-content">
							<input type="text" placeholder="댓글을 남겨보세요">
						</div>
					</div>
					<div class="comment-regist">
						<input type="submit" value="등록">
					</div>
				</form>
			</div>
		</div>

		<div class="board-btn">
		<c:if test="${ vo.name == sessionScope.user_name }">
			<input type="button" value="수정" class="edit-btn" onclick="location.href='board_modify.board?bno=${ vo.bno }'">
			<input type="button" value="삭제" class="delete-btn" onclick="location.href='board_delete.board?bno=${ vo.bno }'">
		</c:if>
			<input type="button" value="목록" class="list-btn" onclick="location.href='board_list.board'">
		</div>
	</div>
</div>
<!-- end content -->

<%@ include file="../include/footer.jsp"%>