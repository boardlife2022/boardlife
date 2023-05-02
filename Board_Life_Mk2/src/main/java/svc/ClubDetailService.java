package svc;

import static db.JdbcUtil.*;
import java.sql.Connection;
import dao.Club_Function_DAO;
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
	
} // ClubDetailService
