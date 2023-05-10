package dao;

import static db.JdbcUtil.*;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import javax.sql.DataSource;
import vo.*;

public class Info_Function_DAO {

	DataSource ds;
	Connection con;
	private static Info_Function_DAO boardDAO;

	private Info_Function_DAO() {
	}

	public static Info_Function_DAO getInstance(){
		if(boardDAO == null){
			boardDAO = new Info_Function_DAO();
		}
		return boardDAO;
	}

	public void setConnection(Connection con){
		this.con = con;
	}

	public int selectListCount() {

		int listCount= 0;
		PreparedStatement pstmt = null;
		ResultSet rs = null;

		try{
			pstmt=con.prepareStatement("select count(*) from board_game2");
			rs = pstmt.executeQuery();
			if(rs.next()){
				listCount=rs.getInt(1);
			}
		}catch(Exception ex){

		}finally{
			close(rs);
			close(pstmt);
		}

		return listCount;

	}
	
	public ArrayList<Boardgames2> selectArticleList(int page,int limit){
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		Boardgames2 board = null;
		String board_list_sql="select *,"
		+" substring_index(substring_index(proceed,',',1),',',-1) as first_proceed,"
		+" substring_index(substring_index(proceed,',',2),',',-1) as second_proceed,"
		+" substring_index(substring_index(proceed,',',3),',',-1) as third_proceed,"
		+" substring_index(substring_index(proceed,',',4),',',-1) as fourth_proceed"
		+" from board_game2 order by b_id desc limit ?,50;";
		
		ArrayList<Boardgames2> articleList = new ArrayList<Boardgames2>();
		
		int startrow=(page-1)*10; 
		
		try{
			pstmt = con.prepareStatement(board_list_sql);
			pstmt.setInt(1, startrow);
			rs = pstmt.executeQuery();

			while(rs.next()){
				board = new Boardgames2();

        		board.setB_id(rs.getString("b_id"));
        		board.setB_img(rs.getString("b_img"));
        		board.setB_title_kor(rs.getString("b_title_kor"));
        		board.setB_title_eng(rs.getString("b_title_eng"));
        		board.setYearof(rs.getString("yearof"));
        		board.setPnum(rs.getString("pnum"));
        		board.setRunning_time(rs.getString("running_time"));
        		board.setAge(rs.getString("age"));
        		board.setGame_level(rs.getInt("game_level"));
        		board.setSub_lang(rs.getString("sub_lang"));
        		board.setB_detail(rs.getString("b_detail"));
        		board.setPublisher(rs.getString("publisher"));
        		board.setGeeklink(rs.getString("geeklink"));
        		board.setDesigner(rs.getString("designer"));
        		board.setB_theme(rs.getString("b_theme"));
        		board.setProceed(rs.getString("proceed"));
        		board.setFirst_proceed(rs.getString("first_proceed"));
        		if(!rs.getString("first_proceed").equals(rs.getString("second_proceed"))) {
        		board.setSecond_proceed(rs.getString("second_proceed"));
        		}else if(!rs.getString("second_proceed").equals(rs.getString("third_proceed"))) {
        		board.setThird_proceed(rs.getString("third_proceed"));
        		}else if(!rs.getString("third_proceed").equals(rs.getString("fourth_proceed"))) {
        		board.setFourth_proceed(rs.getString("fourth_proceed"));
        		}
				articleList.add(board);
			}

		}catch(Exception ex){
			
		}finally{
			close(rs);
			close(pstmt);
		}

		return articleList;

	}
	
	public Boardgames2 oneselectArticleList(int bid) {
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		Boardgames2 board = null;
		
		try{
			pstmt = con.prepareStatement(
					"select * from board_game2 where b_id = ?");
			pstmt.setInt(1, bid);
			rs= pstmt.executeQuery();
			
			if(rs.next()){
				board = new Boardgames2();
				
				board.setB_id(rs.getString("b_id"));
        		board.setB_img(rs.getString("b_img"));
        		board.setB_title_kor(rs.getString("b_title_kor"));
        		board.setB_title_eng(rs.getString("b_title_eng"));
        		board.setYearof(rs.getString("yearof"));
        		board.setPnum(rs.getString("pnum"));
        		board.setRunning_time(rs.getString("running_time"));
        		board.setAge(rs.getString("age"));
        		board.setGame_level(rs.getInt("game_level"));
        		board.setSub_lang(rs.getString("sub_lang"));
        		board.setB_detail(rs.getString("b_detail"));
        		board.setPublisher(rs.getString("publisher"));
        		board.setGeeklink(rs.getString("geeklink"));
        		board.setDesigner(rs.getString("designer"));
        		board.setB_theme(rs.getString("b_theme"));
        		board.setProceed(rs.getString("proceed"));
        		
			}
		}catch(Exception ex){
			System.out.println(ex);
		}finally{
			close(rs);
			close(pstmt);
		}
		
		return board;
	}
	public ArrayList<Boardgames2> proceedselect(){
		ArrayList<Boardgames2> articleList = new ArrayList<Boardgames2>();
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		Boardgames2 board = null;
		String board_list_sql="";
	try {
		pstmt = con.prepareStatement(board_list_sql);
		rs = pstmt.executeQuery();
		
		while(rs.next()){
			board = new Boardgames2();
			
			articleList.add(board);
		}
		
	} catch (Exception e) {
		
	}finally{
		close(rs);
		close(pstmt);
	}
		return articleList;
	}
}
