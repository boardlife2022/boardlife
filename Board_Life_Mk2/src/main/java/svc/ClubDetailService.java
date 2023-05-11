package svc;

import static db.JdbcUtil.*;
import java.sql.Connection;
import java.util.ArrayList;

import dao.Club_Function_DAO;
import vo.Boardgames;
import vo.ClubQnA;
import vo.ClubReview;
import vo.Offerclub;

public class ClubDetailService {

	public Offerclub getClub(int clubNum) throws Exception{

		Offerclub club = null;
		Connection con = getConnection();
		Club_Function_DAO clubDAO = Club_Function_DAO.getInstance();
		clubDAO.setConnection(con);
		
		club = clubDAO.selectClub(clubNum);
		close(con);
		return club;
	} // getClub
	
	public ArrayList<Offerclub> getRClub(int clubNum) throws Exception{

		ArrayList<Offerclub> Rclub = null;
		Connection con = getConnection();
		Club_Function_DAO clubDAO = Club_Function_DAO.getInstance();
		clubDAO.setConnection(con);
		
		Rclub = clubDAO.RecommendClubList(clubNum);
		close(con);
		return Rclub;
	}
	
	public ArrayList<Boardgames> getBoardgames(int clubNum) throws Exception{
		
		ArrayList<Boardgames> ClubBoardgame = null;
		Connection con = getConnection();
		Club_Function_DAO boardDAO = Club_Function_DAO.getInstance();
		
		boardDAO.setConnection(con);
		ClubBoardgame = boardDAO.selectClubBoardgames(clubNum);
		close(con);
		
		return ClubBoardgame;
	}
	
	public ArrayList<ClubReview> getClubReviews(int clubNum) throws Exception {
		
		ArrayList<ClubReview> clubReviews = null;
		Connection con = getConnection();
		Club_Function_DAO boardDAO = Club_Function_DAO.getInstance();
		
		boardDAO.setConnection(con);
		clubReviews = boardDAO.clubReviews(clubNum);
		close(con);
	
		return clubReviews;
	} // getClubReviews
	
	public ArrayList<ClubQnA> getClubQNA(int clubNum) throws Exception {
		
		ArrayList<ClubQnA> clubQNAs = null;
		Connection con = getConnection();
		Club_Function_DAO boardDAO = Club_Function_DAO.getInstance();
		
		boardDAO.setConnection(con);
		clubQNAs = boardDAO.clubQNA(clubNum);
		close(con);
		
		return clubQNAs;
	} // getClubQNA
	
	public ArrayList<ClubReview> getClubRecentlyReviews() throws Exception {
		
		ArrayList<ClubReview> ClubRecentlyReviews = null;
		Connection con = getConnection();
		Club_Function_DAO boardDAO = Club_Function_DAO.getInstance();
		
		boardDAO.setConnection(con);
		ClubRecentlyReviews = boardDAO.clubRecentlyReviews();
		close(con);
	
		return ClubRecentlyReviews;
	} // getClubRecentlyReviews
	
} // ClubDetailService
