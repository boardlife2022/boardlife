package svc;

import static db.JdbcUtil.close;
import static db.JdbcUtil.getConnection;

import java.sql.Connection;
import dao.Club_Function_DAO;
import vo.ClubReview;

public class ClubReviewService {

	public void registClubReview(ClubReview review) throws Exception{
		
		Connection con = getConnection();
		Club_Function_DAO boardDAO = Club_Function_DAO.getInstance();
		boardDAO.setConnection(con);
		boardDAO.insertClubReview(review);
		
		
		close(con);		
	}
	
} // class
