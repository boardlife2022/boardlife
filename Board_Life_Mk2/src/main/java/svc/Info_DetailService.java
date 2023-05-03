package svc;

import java.sql.Connection;
import dao.Info_Function_DAO;
import vo.Boardgames2;
import static db.JdbcUtil.*;

public class Info_DetailService {
	public Boardgames2 getArticle(int bid) throws Exception{

		Boardgames2 article = null;
		Connection con = getConnection();
		Info_Function_DAO boardDAO = Info_Function_DAO.getInstance();
		boardDAO.setConnection(con);
//		int updateCount = boardDAO.updateReadCount(bid);
		
//		if(updateCount > 0){
//			commit(con);
//		}
//		else{
//			rollback(con);
//		}
		
		article = boardDAO.oneselectArticleList(bid);
		close(con);
		return article;
		
	}
}
