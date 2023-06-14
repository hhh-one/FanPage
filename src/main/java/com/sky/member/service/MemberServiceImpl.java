package com.sky.member.service;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.sky.member.model.MemberDAO;
import com.sky.member.model.MemberVO;

public class MemberServiceImpl implements MemberService {

	
	@Override //회원가입
	public int join(HttpServletRequest request, HttpServletResponse response) {

		String id = request.getParameter("id");
		String pw = request.getParameter("pw");
		String name = request.getParameter("name");
		String email = request.getParameter("email");
		String gender = request.getParameter("gender");
		
		MemberDAO dao = MemberDAO.getInstance();
		int result = dao.idCheck(id);
		
		if(result == 1) { //중복
			return 1;
		} else { //가입처리
			MemberVO vo = new MemberVO(id, pw, name, email, gender); //regdate 뺀 상태.
			dao.join(vo);
			
			return 0;
		}		
	}
	

	@Override //닉네임 중복 체크
	public int nameCheck(HttpServletRequest request, HttpServletResponse response) {
		
		String id = request.getParameter("id");
		String pw = request.getParameter("pw");
		String name = request.getParameter("name");
		String email = request.getParameter("email");
		String gender = request.getParameter("gender");
		
		MemberDAO dao = MemberDAO.getInstance();
		//int result = dao.idCheck(id);
		int result2 = dao.nameCheck(name);		
		
		if(result2 == 1) { //중복
			return 1;
		} else { //가입처리
			MemberVO vo = new MemberVO(id, pw, name, email, gender);
			dao.join(vo);
			
			return 0;
		}		
	}
	
	
	@Override
	public MemberVO login(HttpServletRequest reqeust, HttpServletResponse response) {
		
		String id = reqeust.getParameter("id");
		String pw = reqeust.getParameter("pw");
		
		MemberDAO dao = MemberDAO.getInstance();
		MemberVO vo = dao.login(id, pw);
		
		return vo;
	}

	@Override
	public MemberVO getInfo(HttpServletRequest reqeust, HttpServletResponse response) {
		
		HttpSession session = reqeust.getSession();
		String id = (String)session.getAttribute("member_id");
		
		MemberDAO dao = MemberDAO.getInstance();
		MemberVO vo = dao.getInfo(id);
		
		return vo;
	}

	@Override
	public int updateInfo(HttpServletRequest request, HttpServletResponse response) {
		
		String id = request.getParameter("id");
		String pw = request.getParameter("pw");
		String name = request.getParameter("name");
		String email = request.getParameter("email");
		String gender = request.getParameter("gender");
		
		MemberVO vo = new MemberVO(id, pw, name, email, gender);

		MemberDAO dao = MemberDAO.getInstance();
		int result = dao.updateInfo(vo);
		
		return result;
	}


	@Override //회원 삭제
	public void deleteInfo(HttpServletRequest request, HttpServletResponse response) {
		
		HttpSession session = request.getSession();
		
		String id = (String)session.getAttribute("member_id");
		String pw = request.getParameter("pw");
		String name = request.getParameter("name");
		String email = request.getParameter("email");
		String gender = request.getParameter("gender");
		
		//int result = 0;
		
		MemberDAO dao = MemberDAO.getInstance();
		MemberVO vo = dao.getInfo(id);				
		dao.deleteInfo(id); //, "pw"
		
//		if(result == 1) {			
//			return 1;
//		} else { 
//			return 0;
//		}
//	

}
}
