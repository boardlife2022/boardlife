package svc;

import static db.JdbcUtil.*;
import java.sql.Connection;
import java.util.ArrayList;

import dao.Info_Function_DAO;
import vo.*;

public class Info_BoardListService {

	public int getListCount() throws Exception{
		int listCount = 0;
		Connection con = getConnection();
		Info_Function_DAO boardDAO = Info_Function_DAO.getInstance();
		boardDAO.setConnection(con);
		listCount = boardDAO.selectListCount();
		close(con);
		return listCount;
		
	}

	public ArrayList<Boardgames2> getArticleList(int page, int limit) throws Exception{
		
		ArrayList<Boardgames2> articleList = null;
		Connection con = getConnection();
		Info_Function_DAO boardDAO = Info_Function_DAO.getInstance();
		boardDAO.setConnection(con);
		articleList = boardDAO.selectArticleList(page,limit);
		close(con);
		return articleList;
		
	}

}
