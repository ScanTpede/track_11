package command.member;

import java.security.NoSuchAlgorithmException;

import javax.servlet.http.HttpServletRequest;

import common.CommonExecute;
import common.MailContentSend;
import dao.MemberDao;

public class MemberPasswordSend implements CommonExecute {

	@Override
	public void execute(HttpServletRequest request) {

		MemberDao dao = new MemberDao();
		String id = request.getParameter("t_id");
		String mobile_1 = request.getParameter("t_mobile_1");
		String mobile_2 = request.getParameter("t_mobile_2");
		String mobile_3 = request.getParameter("t_mobile_3");
		String email = request.getParameter("t_email");
		
		String memberName = dao.getCheckMember(id,mobile_1,mobile_2,mobile_3);
		
		String msg="";
		
		if(memberName.equals("")) msg="ID나 전화번호가 정확하지 않습니다!!!!";
		else 
		{
			String newPassword = dao.getNewPassword(4);
			String sendPassword = newPassword;
			int newPassWordLength = newPassword.length();
			
			try {
				newPassword = dao.encryptSHA256(newPassword);
			} catch (NoSuchAlgorithmException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			int result = dao.setMemberPassword(id, newPassword, newPassWordLength);
			
			
			if(result != 1)
			{
				msg = "발송실패!";
			}
			else
			{
				
				
				String mailSet_Server="smtp.naver.com"; // 보내는 메일 server
				String mailSet_ID="choljt3000";        // 보내는 메일 ID
				String mailSet_PW="Qwe7411122!";        // 보내는 메일 비밀번호
				
				String mailFromName ="JSL인재개발원입니다";            // 보내는 사람 이름
				String mailFromAddress ="choljt3000@naver.com"; // 보내는 메일 주소
				//"sshj0893@naver.com";
				String mailTo    = email;           // 받는  메일 주소
				String mailTitle =" JSL에서 비밀번호를 재발송 합니다.";   // 메일 제목
				String content = 	                             // 메일내용
				" <tr> "+
				" 	<td><img src=\"https://ac-p3.namu.la/20220204sac/ba1787ebe2393ca5a97e693d50098333bca13d0d41bf32f41d7c2f0b466534dd.jpg?expires=1685581200&key=bDRpPW8RlmyacFeq5glo3w\"></td> "+
				" </tr> "+
				
				" <table width='400' height='200' border='0' > "+
				" <tr> "+
				" 	<td colspan='2' height='100' align='center'>고객님 비빌번호 안내</td> "+
				" </tr> "+
				" <tr>"+
				" 	<td width='120' align='center'>비 밀 번 호</td> "+
				" 	<td width='280' align='left'>"+
				"        <font size='5' color='red'>"+sendPassword+"</font> 입니다</td> "+
				" </tr> "+
				" </table> ";
				
				msg=memberName + "님 새 비밀번호를 발송했습니다!!!";
				MailContentSend mail = new MailContentSend();
				mail.setMail(mailSet_Server, mailSet_ID, mailSet_PW);
				try {
					mail.sendMail(mailFromName, mailFromAddress, mailTo, mailTitle, content);
					
				} catch (Exception e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
					msg=memberName + "발송실패!! 관리자에게 문의바랍니다.";
				}
				
				
			}
			
			
		}
		
		request.setAttribute("t_msg", msg);
		request.setAttribute("t_url", "Member");

	}

}
