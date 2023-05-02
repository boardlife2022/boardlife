package action;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import svc.ClubDetailService;
import vo.ActionForward;
import vo.Offerclub;

public class Club_DetailAction implements Action {
	
	public ActionForward execute(HttpServletRequest request,HttpServletResponse response) throws Exception{ 

		int Club_num=Integer.parseInt(request.getParameter("clubNum"));
		String page = request.getParameter("page");
		ClubDetailService ClubDetailService = new ClubDetailService();
		// ClubService 클래스 객체 생성하여 Service 안에 있는 실행문을 불러올 예정
		Offerclub club = ClubDetailService.getClub(Club_num);
		ActionForward forward = new ActionForward();
		request.setAttribute("page", page);
		request.setAttribute("club", club);
		forward.setPath("/boardgame_club_view.jsp");
		return forward;
	} // excute
} // class Club_DetailAction
