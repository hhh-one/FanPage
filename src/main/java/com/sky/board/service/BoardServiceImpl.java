package com.sky.board.service;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.sky.board.model.BoardDAO;
import com.sky.board.model.BoardVO;

public class BoardServiceImpl implements BoardService {
	BoardDAO dao = BoardDAO.getInstance();

	
	@Override
	public void regist(HttpServletRequest request, HttpServletResponse response) {
		HttpSession session = request.getSession();
		String name = (String) session.getAttribute("member_name");
		String title = request.getParameter("title");
		String content = request.getParameter("content");
		
		dao.regist(name, title, content);
	}
	
	@Override
	public List<BoardVO> getBoards(HttpServletRequest request, HttpServletResponse response) {
		List<BoardVO> list = dao.getBoards();
		return list;
	}
	
	@Override
	public BoardVO getDetailBoard(HttpServletRequest request, HttpServletResponse response) {
		BoardVO vo = dao.getDetailBoard(request.getParameter("bno"));
		return vo;
	}

	@Override
	public void modifyBoard(HttpServletRequest request, HttpServletResponse response) {
		String bno = request.getParameter("bno");
		String title = request.getParameter("title");
		String content = request.getParameter("content");
		
		dao.modifyBoard(bno, title, content);
	}
	
	@Override
	public void deleteBoard(HttpServletRequest request, HttpServletResponse response) {
		String bno = request.getParameter("bno");
		System.out.println("bno:" + bno);
		dao.deleteBoard(bno);
	}
	
	@Override
	public void updateHit(String bno) {
		dao.updateHit(bno);
	}
}
