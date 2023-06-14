package com.sky.comment.service;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.sky.comment.model.CommentVO;

public interface CommentService {
	List<CommentVO> getComments(HttpServletRequest request, HttpServletResponse response);
	void writeComment(HttpServletRequest request, HttpServletResponse response);
	void deleteComment(HttpServletRequest request, HttpServletResponse response);
}
