package dao;

import static db.JdbcUtil.*;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import javax.sql.DataSource;

import vo.Boardgames2;
import vo.Offerclub;

public class Club_Function_DAO {
	// 쿼리문 실행을 담당하는 클래스

	DataSource ds;
	Connection con;
	private static Club_Function_DAO boardDAO;

	private Club_Function_DAO() {
	}

	public static Club_Function_DAO getInstance(){
		if(boardDAO == null){
			boardDAO = new Club_Function_DAO();
		}
		return boardDAO;
	}

	public void setConnection(Connection con){
		this.con = con;
	}
	
	
	public int club_selectListCount() {
		
		int listCount = 0;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		
		try {
			pstmt = con.prepareStatement("select count(*) from offer_club;");
			// offer_club table에 있는 자료들의 숫자를 세어보는 쿼리문
			
			//System.out.println("select count(*) from offer_club");
			
			rs = pstmt.executeQuery();
			
			if(rs.next()) {
				listCount = rs.getInt(1);
			}
			
		} catch(Exception ex) {
			
		} finally {
			close(rs);
			close(pstmt);
		}
		
		return listCount;
		
	} // club_selectListCount()
	
	public ArrayList<Offerclub> slideClubList(){
		// 전체 클럽 목록을 출력하는 메서드
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		
		// String club_list_sql="select * from offer_club order by club_num desc limit 1, 12;";
		
		String club_list_sql=
		"SELECT oc.club_num, oc.club_title, oc.user_id, oc.club_place, oc.club_day, oc.club_time, oc.club_intro, oc.start_date, oc.finish_date, oc.club_reps, oc.capacity, oc.membership_fee," 
		+ " bg.b_img, bg.b_theme, bg.proceed"
		+ " FROM offer_club oc, board_game bg"
		+ " WHERE SUBSTRING_INDEX(oc.b_id,',', 1) = bg.b_id"
		+ " ORDER BY club_num DESC;";
		
		ArrayList<Offerclub> slideClubList = new ArrayList<Offerclub>();
		Offerclub Club = null;
		
		try {
			pstmt = con.prepareStatement(club_list_sql);
			
			rs = pstmt.executeQuery();
			
			while(rs.next()) {
				Club = new Offerclub();
				Club.setClub_num(rs.getInt("club_num"));
				Club.setClub_title(rs.getString("club_title"));
				Club.setClub_intro(rs.getString("club_intro"));
				Club.setUser_id(rs.getString("user_id"));
				Club.setClub_day(rs.getString("club_day"));
				Club.setClub_place(rs.getString("club_place"));
				Club.setClub_time(rs.getString("club_time"));
				Club.setClub_reps(rs.getInt("club_reps"));
				Club.setStart_date(rs.getString("start_date"));
				Club.setFinish_date(rs.getString("finish_date"));
				Club.setMembership_fee(rs.getInt("Membership_fee"));
				Club.setCapacity(rs.getInt("capacity"));
				Club.setB_img(rs.getString("b_img"));
				Club.setB_theme(rs.getString("b_theme"));
				Club.setProceed(rs.getString("proceed"));
				slideClubList.add(Club);
			}
			
		} catch(Exception ex) {
			
			System.out.println("problem");
			ex.printStackTrace();
			
		} finally {
			close(rs);
			close(pstmt);
		}
		
		return slideClubList;
	} // slideClubList();
	
	public ArrayList<Offerclub> selectClubList(int page, int limit){
		// 전체 클럽 목록을 출력하는 메서드
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		int startrow = (page-1)*12;
		
		// String club_list_sql="select * from offer_club order by club_num desc limit 1, 12;";
		
		String club_list_sql=
		"SELECT oc.club_num, oc.club_title, oc.user_id, oc.club_place, oc.club_day, oc.club_time, oc.club_intro, oc.start_date, oc.finish_date, oc.club_reps, oc.capacity, oc.membership_fee," 
		+ " bg.b_img, bg.b_theme, bg.proceed"
		+ " FROM offer_club oc, board_game bg"
		+ " WHERE SUBSTRING_INDEX(oc.b_id,',', 1) = bg.b_id"
		+ " ORDER BY club_num DESC"
		+ " limit ?, 12";
		
		ArrayList<Offerclub> clubList = new ArrayList<Offerclub>();
		// System.out.println(club_list_sql);
		Offerclub Club = null;
		//int startrow = (page-1)*12;
		
		try {
			pstmt = con.prepareStatement(club_list_sql);
			//System.out.println(club_list_sql);
			//System.out.println("prepareStatement");
			//System.out.println("startrow" + startrow);
			
			pstmt.setInt(1, startrow);
			
			//System.out.println("pstmt.setInt(1, startrow)");
			
			rs = pstmt.executeQuery();
			//System.out.println(rs);
			//System.out.println("executeQuery");
			
			while(rs.next()) {
				Club = new Offerclub();
				Club.setClub_num(rs.getInt("club_num"));
				Club.setClub_title(rs.getString("club_title"));
				Club.setClub_intro(rs.getString("club_intro"));
				Club.setUser_id(rs.getString("user_id"));
				Club.setClub_day(rs.getString("club_day"));
				Club.setClub_place(rs.getString("club_place"));
				Club.setClub_time(rs.getString("club_time"));
				Club.setClub_reps(rs.getInt("club_reps"));
				Club.setStart_date(rs.getString("start_date"));
				Club.setFinish_date(rs.getString("finish_date"));
				Club.setMembership_fee(rs.getInt("Membership_fee"));
				Club.setCapacity(rs.getInt("capacity"));
				Club.setB_img(rs.getString("b_img"));
				Club.setB_theme(rs.getString("b_theme"));
				Club.setProceed(rs.getString("proceed"));
				clubList.add(Club);
			}
			
		} catch(Exception ex) {
			
			System.out.println("problem");
			ex.printStackTrace();
			
		} finally {
			close(rs);
			close(pstmt);
		}
		
		return clubList;
	} // selectClubList();
	
	
	
	public ArrayList<Offerclub> searchClubList(int page, int limit, String key){
		// 전체 클럽 목록을 출력하는 메서드
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		int startrow = (page-1)*12;
		
		// String club_list_sql="select * from offer_club order by club_num desc limit 1, 12;";
		
		String club_list_sql=
		"SELECT oc.club_num, oc.club_title, oc.user_id, oc.club_place, oc.club_day, oc.club_time, oc.club_intro, oc.start_date, oc.finish_date, oc.club_reps, oc.capacity, oc.membership_fee," 
		+ " bg.b_img, bg.b_theme, bg.proceed"
		+ " FROM offer_club oc, board_game bg"
		+ " WHERE SUBSTRING_INDEX(oc.b_id,',', 1) = bg.b_id AND oc.club_title like '%" + key +"%'"
		+ " ORDER BY club_num DESC"
		+ " limit ?, 12";
		
		ArrayList<Offerclub> clubList = new ArrayList<Offerclub>();

		Offerclub Club = null;
		
		//System.out.println(club_list_sql);

		
		try {
			pstmt = con.prepareStatement(club_list_sql);
			//System.out.println("실행");
			pstmt.setInt(1, startrow);
			rs = pstmt.executeQuery();
			//System.out.println(rs);
		
			while(rs.next()) {
				Club = new Offerclub();
				Club.setClub_num(rs.getInt("club_num"));
				Club.setClub_title(rs.getString("club_title"));
				Club.setClub_intro(rs.getString("club_intro"));
				Club.setUser_id(rs.getString("user_id"));
				Club.setClub_day(rs.getString("club_day"));
				Club.setClub_place(rs.getString("club_place"));
				Club.setClub_time(rs.getString("club_time"));
				Club.setClub_reps(rs.getInt("club_reps"));
				Club.setStart_date(rs.getString("start_date"));
				Club.setFinish_date(rs.getString("finish_date"));
				Club.setMembership_fee(rs.getInt("membership_fee"));
				Club.setCapacity(rs.getInt("capacity"));
				Club.setB_img(rs.getString("b_img"));
				Club.setB_theme(rs.getString("b_theme"));
				Club.setProceed(rs.getString("proceed"));
				clubList.add(Club);
			}
			
		} catch(Exception ex) {
			
			System.out.println("problem");
			ex.printStackTrace();
			
		} finally {
			close(rs);
			close(pstmt);
		}
		
		return clubList;
	} // searchClubList();
	
	public ArrayList<Offerclub> onOffClubList(int page, int limit, String index){
		// 전체 클럽 목록을 출력하는 메서드
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		int startrow = (page-1)*12;
		
		// String club_list_sql="select * from offer_club order by club_num desc limit 1, 12;";
		
		if(index.equals("online")) {
			index = "like '%online%'";
		} else {
			index =  "not like '%online%'";
		}
		
		
		String club_list_sql=
		"SELECT oc.club_num, oc.club_title, oc.user_id, oc.club_place, oc.club_day, oc.club_time, oc.club_intro, oc.start_date, oc.finish_date, oc.club_reps, oc.capacity, oc.membership_fee," 
		+		" bg.b_img, bg.b_theme, bg.proceed"
		+ " FROM offer_club oc, board_game bg"
		+ " WHERE SUBSTRING_INDEX(oc.b_id,',', 1) = bg.b_id AND oc.club_place " + index
		+ " ORDER BY club_num DESC"
		+ " limit ?, 12";
		
		ArrayList<Offerclub> clubList = new ArrayList<Offerclub>();

		Offerclub Club = null;
		
		//System.out.println(club_list_sql);

		
		try {
			pstmt = con.prepareStatement(club_list_sql);
			//System.out.println("실행");
			pstmt.setInt(1, startrow);
			rs = pstmt.executeQuery();
			
			while(rs.next()) {
				Club = new Offerclub();
				Club.setClub_num(rs.getInt("club_num"));
				Club.setClub_title(rs.getString("club_title"));
				Club.setClub_intro(rs.getString("club_intro"));
				Club.setUser_id(rs.getString("user_id"));
				Club.setClub_day(rs.getString("club_day"));
				Club.setClub_place(rs.getString("club_place"));
				Club.setClub_time(rs.getString("club_time"));
				Club.setClub_reps(rs.getInt("club_reps"));
				Club.setStart_date(rs.getString("start_date"));
				Club.setFinish_date(rs.getString("finish_date"));
				Club.setMembership_fee(rs.getInt("membership_fee"));
				Club.setCapacity(rs.getInt("capacity"));
				Club.setB_img(rs.getString("b_img"));
				Club.setB_theme(rs.getString("b_theme"));
				Club.setProceed(rs.getString("proceed"));
				clubList.add(Club);
			}
			
		} catch(Exception ex) {
			
			System.out.println("problem");
			ex.printStackTrace();
			
		} finally {
			close(rs);
			close(pstmt);
		}
		
		return clubList;
	} // searchClubList();
	
	public Offerclub selectClub(int ClubNum) {
		
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		Offerclub Club = null;
		
		String club_list_sql=
				"SELECT oc.club_num, oc.club_title, oc.user_id, oc.club_place, oc.club_day, oc.club_time, oc.club_intro, oc.start_date, oc.finish_date, oc.club_reps, oc.capacity, oc.membership_fee," 
				+"bg.b_img, bg.b_theme, bg.proceed"
				+ " FROM offer_club oc, board_game bg"
				+ " WHERE SUBSTRING_INDEX(oc.b_id,',', 1) = bg.b_id"
				+ " AND oc.club_num =" + ClubNum + ";";
		
		System.out.println(club_list_sql);
		
		try {
			pstmt = con.prepareStatement(club_list_sql);
			//System.out.println("실행");
			rs = pstmt.executeQuery();
			
			// System.out.println(rs);
			
			if(rs.next()) {
				Club = new Offerclub();
				Club.setClub_num(rs.getInt("club_num"));
				Club.setClub_title(rs.getString("club_title"));
				Club.setClub_intro(rs.getString("club_intro"));
				Club.setUser_id(rs.getString("user_id"));
				Club.setClub_day(rs.getString("club_day"));
				Club.setClub_place(rs.getString("club_place"));
				Club.setClub_time(rs.getString("club_time"));
				Club.setClub_reps(rs.getInt("club_reps"));
				Club.setStart_date(rs.getString("start_date"));
				Club.setFinish_date(rs.getString("finish_date"));
				Club.setMembership_fee(rs.getInt("membership_fee"));
				Club.setCapacity(rs.getInt("capacity"));
				Club.setB_img(rs.getString("b_img"));
				Club.setB_theme(rs.getString("b_theme"));
				Club.setProceed(rs.getString("proceed"));
			}
			
		} catch(Exception ex) {
			
			System.out.println("problem");
			ex.printStackTrace();
			
		} finally {
			close(rs);
			close(pstmt);
		}
		
		
		return Club;
	} // selectClub
	

} // Function_DAO.class
