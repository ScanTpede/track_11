package controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import command.member.*;

/**
 * Servlet implementation class Member
 */
@WebServlet("/Member")
public class Member extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Member() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		request.setCharacterEncoding("utf-8");
		String gubun = request.getParameter("t_gubun");
		if(gubun == null)
		{
			gubun = "memberLogin";
		}
		
		String viewPage="";
		
		//회원가입폼
		if(gubun.equals("memberJoin"))
		{
			viewPage="member/member_join.jsp";
		}
		//로그인폼
		else if(gubun.equals("memberLogin"))
		{
			viewPage="member/member_login.jsp";
		}
		//회원가입
		else if(gubun.equals("memberSave"))
		{
			MemberJoin member = new MemberJoin();
			member.execute(request);
			viewPage="common_alert.jsp";
			
		}
		//로그인
		else if (gubun.equals("memberLoginCheck"))
		{
			MemberLogin member = new MemberLogin();
			member.execute(request);
			viewPage="common_alert.jsp";
		}
		//로그아웃
		else if (gubun.equals("memberLogout"))
		{
			MemberLogout member = new MemberLogout();
			member.execute(request);
			viewPage="common_alert.jsp";
		}
		//내정보보기
		else if(gubun.equals("memberInfo"))
		{
			MemberInfo member = new MemberInfo();
			member.execute(request);
			String urlGubun = (String) request.getAttribute("urlGubun");
			if(urlGubun.equals("noSession"))
			{
				viewPage="member/member_login.jsp";
			}
			else 
			{
				viewPage="member/member_info.jsp";
			}
		}
		//내정보 수정
		else if(gubun.equals("memberUpdateForm"))
		{
			MemberInfo member = new MemberInfo();
			member.execute(request);
			viewPage="member/member_update.jsp";
		}
		//내정보 수정저장
		else if(gubun.equals("memberUpdate"))
		{
			MemberUpdate member = new MemberUpdate();
			member.execute(request);
			viewPage="common_alert.jsp";
		}
		//비밀번호 찾기 폼
		else if(gubun.equals("memberPasswordFind"))
		{
			viewPage="member/member_passwordfind.jsp";
		}		
		//비밀번호 메일 전송
		else if(gubun.equals("memberPasswordSend"))
		{
			MemberPasswordSend member = new MemberPasswordSend();
			member.execute(request);
			viewPage="common_alert.jsp";
		}		
		//탈퇴 
		else if(gubun.equals("memberExit"))
		{
			MemberExit member = new MemberExit();
			member.execute(request);
			viewPage="common_alert.jsp";
		}	
		else if(gubun.equals("memberExit"))
		{
			MemberExit member = new MemberExit();
			member.execute(request);
			viewPage="common_alert.jsp";
		}	
		else if(gubun.equals("memberPassword"))
		{
			viewPage="member/member_passwordchange.jsp";
		}			
		else if(gubun.equals("memberPasswordUpdate"))
		{
			MemberPasswordUpdate member = new MemberPasswordUpdate();
			member.execute(request);
			viewPage="common_alert.jsp";
		}				
		
		RequestDispatcher rd = request.getRequestDispatcher(viewPage);
		rd.forward(request, response);
		
		

	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
