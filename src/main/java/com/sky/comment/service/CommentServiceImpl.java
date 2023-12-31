package com.sky.comment.service;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.sky.comment.model.CommentDAO;
import com.sky.comment.model.CommentVO;

public class CommentServiceImpl implements CommentService {
	CommentDAO dao = CommentDAO.getInstance();
	
	@Override
	public List<CommentVO> getComments(HttpServletRequest request, HttpServletResponse response) {
		String bno = request.getParameter("bno");
		
		List<CommentVO> list = dao.getComments(bno);
		return list;
	}
	
	@Override
	public void writeComment(HttpServletRequest request, HttpServletResponse response) {
		String bno = request.getParameter("bno");
		int intBno = Integer.parseInt(bno);
		HttpSession session = request.getSession();
		String name = (String) session.getAttribute("member_name");
		String content = request.getParameter("content");
		
		dao.writeComment(name, intBno, content);
	}
	
	@Override
	public void deleteComment(HttpServletRequest request, HttpServletResponse response) {
		String cno = request.getParameter("cno");
		System.out.println("comment service cno: " + cno);
		dao.deleteComment(cno);
	}
}
