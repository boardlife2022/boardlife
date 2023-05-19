package action;

import javax.servlet.ServletContext;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import svc.ClubReviewService;
import vo.ActionForward;
import vo.ClubReview;

public class ClubReviewAction implements Action {
	
	public ActionForward execute(HttpServletRequest request,HttpServletResponse response) throws Exception{

		ActionForward forward=null;
		ClubReview review = null;

		ServletContext context = request.getServletContext();
		
		request.setCharacterEncoding("utf-8"); 
		
		review = new ClubReview();
		request.setCharacterEncoding("utf-8"); 
		review.setClub_num(Integer.parseInt(request.getParameter("clubNum")));
		review.setClub_review_content(request.getParameter("reviewTxt"));
		review.setClub_review_rating(Integer.parseInt(request.getParameter("rating")));
		review.setUser_id(request.getParameter("user"));
		
		int ClubNum = Integer.parseInt(request.getParameter("clubNum"));
		int page = Integer.parseInt(request.getParameter("page"));
		// System.out.println("클럽번호 : " + ClubNum + ", 페이지 번호 : " + page);
		
		String path = "/ClubDetail.cl?clubNum=" + ClubNum + "&page=" + page;
		
		System.out.println(review.getClub_num());
		System.out.println(review.getClub_review_content());
		System.out.println(review.getClub_review_rating());
		System.out.println(review.getUser_id());
		
		

		
		ClubReviewService ClubReviewWriteProService = new ClubReviewService();
		ClubReviewWriteProService.registClubReview(review);
		
		forward = new ActionForward();
		forward.setRedirect(true);
		forward.setPath(path);
		
		return forward;
	} // execute

} // class
