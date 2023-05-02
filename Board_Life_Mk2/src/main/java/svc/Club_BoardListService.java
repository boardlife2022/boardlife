package svc;

import static db.JdbcUtil.*;
import java.sql.Connection;
import java.util.ArrayList;
import dao.Club_Function_DAO;
import vo.Offerclub;

public class Club_BoardListService {

	public int getListCount() throws Exception{
		int listCount = 0;
		Connection con = getConnection();
		Club_Function_DAO boardDAO = Club_Function_DAO.getInstance();
		boardDAO.setConnection(con);
		listCount = boardDAO.club_selectListCount();
		close(con);
		return listCount;
		
	}

	public ArrayList<Offerclub> getclubList(int page, int limit) throws Exception{
		
		ArrayList<Offerclub> clubList = null;
		Connection con = getConnection();
		Club_Function_DAO boardDAO = Club_Function_DAO.getInstance();
		// Club_Fuction_DAO의 싱글톤 패턴 코드
		boardDAO.setConnection(con);
		clubList = boardDAO.selectClubList(page,limit);
		close(con);
		
		return clubList;
	}
	
	public ArrayList<Offerclub> slideClubList() throws Exception{
		
		ArrayList<Offerclub> slideClubList = null;
		Connection con = getConnection();
		Club_Function_DAO boardDAO = Club_Function_DAO.getInstance();
		// Club_Fuction_DAO의 싱글톤 패턴 코드
		boardDAO.setConnection(con);
		slideClubList = boardDAO.slideClubList();
		close(con);
		
		return slideClubList;
	}
	
	public ArrayList<Offerclub> searchclubList(int page, int limit, String key) throws Exception{
		
		ArrayList<Offerclub> clubList = null;
		Connection con = getConnection();
		Club_Function_DAO boardDAO = Club_Function_DAO.getInstance();
		// Club_Fuction_DAO의 싱글톤 패턴 코드
		boardDAO.setConnection(con);
		clubList = boardDAO.searchClubList(page,limit,key);
		close(con);
		//System.out.println(page + "," + limit + "," + key);
		
		return clubList;
	}
	
	public ArrayList<Offerclub> onOffClubList(int page, int limit, String index) throws Exception{
		
		ArrayList<Offerclub> clubList = null;
		Connection con = getConnection();
		Club_Function_DAO boardDAO = Club_Function_DAO.getInstance();
		// Club_Fuction_DAO의 싱글톤 패턴 코드
		boardDAO.setConnection(con);
		clubList = boardDAO.onOffClubList(page,limit,index);
		close(con);
		//System.out.println(page + "," + limit + "," + key);
		
		return clubList;
	}

}
