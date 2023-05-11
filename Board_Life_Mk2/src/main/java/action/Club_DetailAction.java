package action;

import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import svc.ClubDetailService;
import vo.ActionForward;
import vo.Boardgames;
import vo.ClubReview;
import vo.Offerclub;
import vo.ClubQnA;

public class Club_DetailAction implements Action {
	
	public ActionForward execute(HttpServletRequest request,HttpServletResponse response) throws Exception{ 

		int Club_num=Integer.parseInt(request.getParameter("clubNum"));
		String page = request.getParameter("page");
		
		ClubDetailService ClubDetailService = new ClubDetailService();
		// ClubService 클래스 객체 생성하여 Service 안에 있는 실행문을 불러올 예정
		
		// club 정보 가져오기
		Offerclub club = ClubDetailService.getClub(Club_num);
		
		// club내에 있는 보드게임 정보(최대 3개) 가져오기
		ArrayList<Boardgames> boardgame = ClubDetailService.getBoardgames(Club_num);
		
		// club에 관한 리뷰정보 불러오기
		ArrayList<ClubReview> clubReviews = ClubDetailService.getClubReviews(Club_num);
		
		// club 최근 리류정보 불러오기 
		ArrayList<ClubReview> clubRecentlyReviews = ClubDetailService.getClubRecentlyReviews();
		
		// club에 관한 Q&A 정보 불러오기
		ArrayList<ClubQnA> clubQNAs = ClubDetailService.getClubQNA(Club_num);
		
		// club과 관련된 추천 클럽정보 불러오기
		ArrayList<Offerclub> Rclub = ClubDetailService.getRClub(Club_num);
		
		// 보드게임 정보 반환하기
		for(int k = 0; k < boardgame.size(); k++) {
		System.out.println(boardgame.get(k).getB_title());
		}
		
		System.out.println("클럽 넘버 : " + Club_num + " boardgame index 값 : " + boardgame.size());
		
		// ActionForward 객체 생성
		ActionForward forward = new ActionForward();
		
		// key-value로 정보 집어넣기
		request.setAttribute("ClubQNAs", clubQNAs);
		request.setAttribute("ClubReviews", clubReviews);
		request.setAttribute("page", page);
		request.setAttribute("ClubBgames", boardgame);
		request.setAttribute("club", club);
		request.setAttribute("RecentlyReviews", clubRecentlyReviews);
		request.setAttribute("Rclub", Rclub);
		
		
		// 마크업 && CSS 해놓은 jsp 페이지 불러오기
		forward.setPath("/boardgame_club_view.jsp");
		
		return forward;
	} // excute
} // class Club_DetailAction
