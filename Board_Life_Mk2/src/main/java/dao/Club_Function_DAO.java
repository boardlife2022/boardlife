package dao;

import static db.JdbcUtil.*;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import javax.sql.DataSource;

import vo.Boardgames;
import vo.Boardgames2;
import vo.ClubQnA;
import vo.ClubReview;
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
		"SELECT oc.club_num, oc.club_title, oc.user_id, oc.club_place,"
		+ " oc.club_day, oc.club_time, oc.club_intro, oc.start_date,"
		+ " oc.finish_date, oc.club_reps, oc.capacity, oc.membership_fee," 
		+ " bg.b_img, bg.b_theme, bg.proceed"
		+ " FROM offer_club oc, board_game bg"
		+ " WHERE SUBSTRING_INDEX(oc.b_id,',', 1) = bg.b_id"
		+ " ORDER BY club_num DESC"
		+ " limit ?, 12;";
		
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
		+ " ORDER BY club_num DESC;";
		
		ArrayList<Offerclub> clubList = new ArrayList<Offerclub>();

		Offerclub Club = null;
		
		System.out.println(club_list_sql);

		
		try {
			pstmt = con.prepareStatement(club_list_sql);
			System.out.println("실행");
			rs = pstmt.executeQuery();
			System.out.println(rs);
		
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
		"SELECT oc.club_num, oc.club_title, oc.user_id, oc.club_place,"
		+ " oc.club_day, oc.club_time, oc.club_intro, oc.start_date,"
		+ " oc.finish_date, oc.club_reps, oc.capacity, oc.membership_fee," 
		+ " bg.b_img, bg.b_theme, bg.proceed"
		+ " FROM offer_club oc, board_game bg"
		+ " WHERE SUBSTRING_INDEX(oc.b_id,',', 1) = bg.b_id AND oc.club_place " + index
		+ " ORDER BY club_num DESC;";
		
		ArrayList<Offerclub> clubList = new ArrayList<Offerclub>();

		Offerclub Club = null;
		
		//System.out.println(club_list_sql);

		
		try {
			pstmt = con.prepareStatement(club_list_sql);
			//System.out.println("실행");
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
				"SELECT oc.club_num, oc.club_title, oc.user_id, oc.club_place, oc.club_day, "
				+ " oc.club_detail, oc.club_time, oc.club_intro, oc.start_date, "
				+ " oc.finish_date, oc.club_reps, oc.capacity, oc.membership_fee," 
				+ " bg.b_img, bg.b_theme, bg.proceed"
				+ " FROM offer_club oc, board_game bg"
				+ " WHERE SUBSTRING_INDEX(oc.b_id,',', 1) = bg.b_id"
				+ " AND oc.club_num =" + ClubNum + ";";
		
		//System.out.println(club_list_sql);
		
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
				Club.setClub_detail(rs.getString("club_detail"));
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
	
	
	public ArrayList<Boardgames> selectClubBoardgames(int clubNum){
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		
		String club_list_sql=
				"SELECT bg.*"
				+ " FROM board_game bg" 
				+ " JOIN ("
				+ " SELECT"
				+ " SUBSTRING_INDEX(SUBSTRING_INDEX(oc.b_id, ',', 1), ',', -1) as first_id,"
				+ " SUBSTRING_INDEX(SUBSTRING_INDEX(oc.b_id, ',', 2), ',', -1) as second_id,"
				+ " SUBSTRING_INDEX(SUBSTRING_INDEX(oc.b_id, ',', 3), ',', -1) as third_id"
				+ " FROM offer_club oc"
				+ " WHERE oc.club_num = " + clubNum
				+ " ) AS extracted_ids"
				+ " ON bg.b_id = extracted_ids.first_id OR bg.b_id = extracted_ids.second_id OR bg.b_id ="
				+ " extracted_ids.third_id;";
				
		ArrayList<Boardgames> ClubBoardgame = new ArrayList<Boardgames>();
		
		try {
			pstmt = con.prepareStatement(club_list_sql);
			//System.out.println("실행");
			rs = pstmt.executeQuery();
			
			// System.out.println(rs);
			
			while(rs.next()) {
				Boardgames Bgame = new Boardgames();
				Bgame.setB_id(rs.getString("b_id"));
				Bgame.setB_title(rs.getString("b_title"));
				Bgame.setYearof(rs.getString("yearof"));
				Bgame.setPrice(rs.getInt("price"));
				Bgame.setPnum(rs.getString("pnum"));
				Bgame.setRunning_time(rs.getString("running_time"));
				Bgame.setAge(rs.getString("age"));
				Bgame.setB_img(rs.getString("b_img"));
				Bgame.setGame_level(rs.getInt("game_level"));
				Bgame.setDesigner(rs.getString("designer"));
				Bgame.setSub_lang(rs.getString("sub_lang"));
				Bgame.setB_theme(rs.getString("b_theme"));
				Bgame.setProceed(rs.getString("proceed"));
				Bgame.setB_detail(rs.getString("b_detail"));
				Bgame.setPublisher(rs.getString("publisher"));
				ClubBoardgame.add(Bgame);
			}
			
		} catch(Exception ex) {
			
			System.out.println("problem");
			ex.printStackTrace();
			
		} finally {
			close(rs);
			close(pstmt);
		}
		
		return ClubBoardgame;
	} // selectClubBoardgames
	
	
	public ArrayList<ClubReview> clubReviews(int clubNum){
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		
		String club_list_sql= 
				"SELECT cr.*, oc.club_title," 
				+ " DATE_FORMAT(cr.club_review_date, '%Y-%m-%d') AS formatted_date"
				+ " FROM club_review AS cr"
				+ " INNER JOIN offer_club AS oc ON cr.club_num = oc.club_num"
				+ " WHERE cr.club_num = ? "
				+ " ORDER BY cr.club_review_date DESC;";

		ArrayList<ClubReview> clubReviews = new ArrayList<ClubReview>();
		
		try {
			pstmt = con.prepareStatement(club_list_sql);
			//System.out.println("실행");
			pstmt.setInt(1, clubNum);
			rs = pstmt.executeQuery();
			
			// System.out.println(rs);
			
			while(rs.next()) {
				ClubReview review = new ClubReview();
				review.setClub_review_num(rs.getInt("club_review_num"));
				review.setClub_num(rs.getInt("club_num"));
				review.setUser_id(rs.getString("user_id"));
				review.setClub_review_title(rs.getString("club_title"));
				review.setClub_review_content(rs.getString("club_review_content"));
				review.setClub_review_rating(rs.getInt("club_review_rating"));
				review.setClub_review_date(rs.getString("formatted_date"));
				clubReviews.add(review);
			}
			
		} catch(Exception ex) {
			
			System.out.println("problem");
			ex.printStackTrace();
			
		} finally {
			close(rs);
			close(pstmt);
		}
		
		return clubReviews;
	} // clubReviews
	
	public ArrayList<ClubQnA> clubQNA(int clubNum){
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		
		String club_list_sql= 
				"SELECT *, DATE_FORMAT(club_qna_date, '%Y-%m-%d') AS formatted_date" 
				+ " FROM club_qna"
				+ " WHERE qna = 'q' AND club_num = ?"
				+ " ORDER BY club_qna_date DESC;";

		ArrayList<ClubQnA> clubQNA = new ArrayList<ClubQnA>();
		
		try {
			pstmt = con.prepareStatement(club_list_sql);
			pstmt.setInt(1, clubNum);
			rs = pstmt.executeQuery();
										
			while(rs.next()) {
				ClubQnA qna = new ClubQnA();
				qna.setClub_qna_num(rs.getInt("club_qna_num"));
				qna.setClub_num(rs.getInt("club_num"));
				qna.setUser_id(rs.getString("user_id"));
				qna.setClub_qna_title(rs.getString("club_qna_title"));
				qna.setClub_qna_date(rs.getString("formatted_date"));
				qna.setQnum(rs.getInt("qnum"));
				qna.setQna(rs.getString("qna"));
				clubQNA.add(qna);
			}
			
		} catch(Exception ex) {
			
			System.out.println("problem");
			ex.printStackTrace();
			
		} finally {
			close(rs);
			close(pstmt);
		}
		
		return clubQNA;
	} // clubQNA()
	
	public ArrayList<ClubReview> clubRecentlyReviews(){
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		
		String club_list_sql= 
				"SELECT * , oc.club_title," 
				+ " DATE_FORMAT(cr.club_review_date, '%Y-%m-%d') AS formatted_date"
				+ " FROM club_review AS cr"
				+ " INNER JOIN offer_club AS oc ON cr.club_num = oc.club_num"
				+ " ORDER BY cr.club_review_date DESC limit 5;";

		ArrayList<ClubReview> RecentlyReviews = new ArrayList<ClubReview>();
		
		try {
			pstmt = con.prepareStatement(club_list_sql);
			//System.out.println("실행");
			rs = pstmt.executeQuery();
			// System.out.println(rs);
			
			while(rs.next()) {
				ClubReview review = new ClubReview();
				review.setClub_review_num(rs.getInt("club_review_num"));
				review.setClub_num(rs.getInt("club_num"));
				review.setUser_id(rs.getString("user_id"));
				review.setClub_review_title(rs.getString("club_title"));
				review.setClub_review_content(rs.getString("club_review_content"));
				review.setClub_review_rating(rs.getInt("club_review_rating"));
				review.setClub_review_date(rs.getString("formatted_date"));
				RecentlyReviews.add(review);
			}
			
		} catch(Exception ex) {
			
			System.out.println("problem");
			ex.printStackTrace();
			
		} finally {
			close(rs);
			close(pstmt);
		}
		
		return RecentlyReviews;
	} // clubRecentlyReview
	
	public ArrayList<Offerclub> RecommendClubList(int ClubNum){
		// 전체 클럽 목록을 출력하는 메서드
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		
		// String club_list_sql="select * from offer_club order by club_num desc limit 1, 12;";
		
		String club_list_sql=
		"SELECT DISTINCT oc.*, "
		+ " bg.b_theme, bg.b_id, bg.proceed, bg.b_img"
		+ " FROM offer_club oc"
		+ " JOIN board_game bg"
		+ " ON SUBSTRING_INDEX(oc.b_id, ',', 1) = bg.b_id"
		+ " WHERE bg.b_theme = ("
		+ "     SELECT b_theme"
		+ "     FROM offer_club oc"
		+ "     JOIN board_game bg"
		+ "     ON SUBSTRING_INDEX(oc.b_id, ',', 1) = bg.b_id"
		+ "     WHERE club_num = ?"
		+ " ) OR bg.proceed = ("
		+ "     SELECT proceed"
		+ "     FROM offer_club oc"
		+ "     JOIN board_game bg"
		+ "     ON SUBSTRING_INDEX(oc.b_id, ',', 1) = bg.b_id"
		+ "     WHERE club_num = ?)"
		+ " ORDER BY oc.club_num DESC LIMIT 3;";
		
		ArrayList<Offerclub> RclubList = new ArrayList<Offerclub>();
		Offerclub Club = null;
		
		try {
			pstmt = con.prepareStatement(club_list_sql);
			
			pstmt.setInt(1, ClubNum);
			pstmt.setInt(2, ClubNum);
			
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
				RclubList.add(Club);
			}
			
		} catch(Exception ex) {
			
			System.out.println("problem");
			ex.printStackTrace();
			
		} finally {
			close(rs);
			close(pstmt);
		}
		
		return RclubList;
	} // selectClubList();
	
	public void insertClubReview(ClubReview review){
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		String sql="";
		
		try{
			sql= "INSERT INTO club_review"
			+	" (`club_num`, `user_id`, `club_review_content`, `club_review_rating`)"
			+   " VALUES (?, ?, ?, ?);";

			pstmt = con.prepareStatement(sql);
			pstmt.setInt(1, review.getClub_num());
			pstmt.setString(2, review.getUser_id());
			pstmt.setString(3, review.getClub_review_content());
			pstmt.setInt(4, review.getClub_review_rating());
			pstmt.executeUpdate();
			con.commit();
			System.out.println("헤치웠나?");
			System.out.println("sql문 : " + pstmt);

		}catch(Exception ex){
			System.out.println("문제발생");
			ex.printStackTrace();
			
		}finally{
			close(rs);
			close(pstmt);
		}

	} // insertClubReview
	

} // Function_DAO.class
