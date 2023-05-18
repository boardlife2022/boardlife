package svc;

import java.sql.Connection;

import dao.Info_Function_DAO;
import vo.Boardgames2;

public class Info_InsertService {

	public boolean registArticle(Boardgames2 boardBean) throws Exception{
		
		boolean isWriteSuccess = false;
//		Connection con = getConnection();
		Info_Function_DAO boardDAO = Info_Function_DAO.getInstance();
//		boardDAO.setConnection(con);
//		int insertCount = boardDAO.insertArticle(boardBean);
		
//		if(insertCount > 0){
//			commit(con);
			isWriteSuccess = true;
//		}
//		else{
//			rollback(con);
//		}
		
//		close(con);
		return isWriteSuccess;
		
	}

}
