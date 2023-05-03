package svc;

import static db.JdbcUtil.*;
import java.sql.Connection;
import java.util.ArrayList;

import dao.Club_Function_DAO;
import vo.Boardgames;
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
	
} // ClubDetailService
