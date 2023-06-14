package com.sky.controller;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.sky.member.model.MemberDAO;
import com.sky.member.model.MemberVO;
import com.sky.member.service.*;

@WebServlet("*.member")
public class MemberController extends HttpServlet {
	private static final long serialVersionUID = 1L;
        
    public MemberController() {
        super();       
    }
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doAction(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doAction(request, response);
	}
	
	protected void doAction(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		//System.out.println("접근주소:" + request.getRemoteAddr());
		request.setCharacterEncoding("utf-8");
		
		String uri = request.getRequestURI();
		String conPath = request.getContextPath();
		String command = uri.substring( conPath.length()  );

		System.out.println(command);
		MemberService service= new MemberServiceImpl();
		HttpSession session = request.getSession();
		
		
		if(command.equals("/member/member_join.member")) {
			
			request.getRequestDispatcher("member_join.jsp").forward(request, response);
		//로그인
		} else if( command.equals("/member/member_login.member") ) { 
			
			request.getRequestDispatcher("member_login.jsp").forward(request, response);
		
		//회원가입요청
		} else if(command.equals("/member/joinForm.member")) {
			
			//가입
			int result = service.join(request, response);
			int result2 = service.nameCheck(request, response);
			
			if(result == 1) { //중복
				
				request.setAttribute("msg", "중복된 아이디입니다");
				request.getRequestDispatcher("member_join.jsp").forward(request, response);
			} else { //가입성공
				
				response.sendRedirect("member_login.member");
				return;
			}
			
			//닉네임 중복검사
			if(result2 == 1) { //중복
				request.setAttribute("msg", "중복된 닉네임입니다");
				request.getRequestDispatcher("member_join.jsp").forward(request, response);
			} else { //가입성공				
				response.sendRedirect("member_login.member");
				return;
			}
		
			//로그인
			} else if(command.equals("/member/loginForm.member")) {
				
				MemberVO vo = service.login(request, response);
				
				if(vo == null) { //로그인 실패
					
					request.setAttribute("msg", "아이디와 비밀번호를 확인하세요");
					request.getRequestDispatcher("member_login.jsp").forward(request, response);
					
				} else { //로그인 성공
					//세션에 회원정보 저장 (자바에서 세션얻는 방법)
					
					session.setAttribute("member_id", vo.getId() );
					session.setAttribute("member_name", vo.getName() );
					response.sendRedirect("member_mypage.member");
					return;
				}
				
			//마이페이지	
			} else if(command.equals("/member/member_mypage.member")) {
				
				request.getRequestDispatcher("member_mypage.jsp").forward(request, response);
			
			//로그아웃 - 인증수단 삭제
			} else if(command.equals("/member/member_logout.member")) {
				
				session.invalidate();
				response.sendRedirect("member_login.member");
				return;
			
			//정보 수정페이지
			} else if(command.equals("/member/member_modify.member")) {
				
				//회원정보를 가지고 감
				MemberVO vo = service.getInfo(request, response);
				request.setAttribute("vo",  vo);
				
				request.getRequestDispatcher("member_modify.jsp").forward(request, response);
				
			//정보 수정
			} else if(command.equals("/member/member_update.member")) {				
				
				int result = service.updateInfo(request, response);
				
				if(result == 1 ) { //성공(유저닉네임이 변경)
					
					//out객체를 이용한 메시지 전달
					response.setContentType("text/html; charset=UTF-8;");
					PrintWriter out = response.getWriter();
					out.println("<script>");
					out.println("alert('정보가 변경되었습니다.');");
					out.println("location.href='member_mypage.member'; ");
					out.println("</script>");
					
					//request.getRequestDispatcher("member_mypage.member").forward(request, response);
				    

				} else { //실패
					response.sendRedirect("member_modify.member");
					return;
				}
				
				
			//회원탈퇴(삭제) 페이지
			} else if (command.equals("/member/member_delete.member")) {
				request.getRequestDispatcher("member_delete.jsp").forward(request, response);
			
			//회원탈퇴성공 페이지
			} else if(command.equals("/member/member_delete_result.member")) {
				
				request.getRequestDispatcher("member_delete_ch.jsp").forward(request, response);				
				
				service.deleteInfo(request, response);
				
				int result = 0;			
				
				if(result == 1) {					
					String id = (String)request.getSession().getAttribute("member_id");
					String pw = request.getParameter("pw");
					session.invalidate();
				
					//String id = request.getParameter("_id");		
					MemberDAO dao = MemberDAO.getInstance();					
					dao.deleteInfo(id, pw);					
					
					response.setContentType("text/html; charset=UTF-8;");
					PrintWriter out = response.getWriter();
					out.println("탈퇴 성공");
					request.getRequestDispatcher("../main.jsp").forward(request, response);	
					
					return;
					
			} else { //실패시 이동					
				response.sendRedirect("member_mypage.member");
				return;
			}
				
	} //delete_result end
}
}


