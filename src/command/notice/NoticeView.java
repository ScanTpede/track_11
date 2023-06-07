package command.notice;

import javax.servlet.http.HttpServletRequest;

import common.CommonExecute;
import dao.NoticeDao;
import dto.NoticeDto;

public class NoticeView implements CommonExecute {

	@Override
	public void execute(HttpServletRequest request) {
		// TODO Auto-generated method stub
		NoticeDao dao = new NoticeDao();
		String no = request.getParameter("t_no");
		dao.setHitCount(no);
		NoticeDto dto = dao.getNoticeView(no);
		
		//2전글, 다음글 정보
		NoticeDto preDto = dao.getPreNotice(no);
		NoticeDto nextDto = dao.getNextNotice(no);
		
		request.setAttribute("t_dto", dto);
		request.setAttribute("t_preDto", preDto);
		request.setAttribute("t_nextDto", nextDto);
	}

}
