package board;

import java.sql.Statement;
import java.util.ArrayList;
import vo.Community;
import vo.Boardgames;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;

public class Freeboard_cont {
	Connection conn = null;
    Statement stmt = null;
    
	void con1() throws SQLException, ClassNotFoundException {
		
	}
	void diconn() throws SQLException {
		stmt.close();
		conn.close();
	}
	
	public ArrayList<Community> selec(){
		
	    ArrayList<Community> arr = new ArrayList<Community>();
	    try{
	    	Class.forName("com.mysql.jdbc.Driver");
			conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/boardgame","root","rhkddml");
	    	stmt = conn.createStatement();
	        if(conn == null)
	            throw new Exception("데이터베이스에 연결할 수 없습니다.");
	        	ResultSet rs = stmt.executeQuery("select * from community;");
	        	
	        	while(rs.next()){
	        		Community st = new Community();
	        		
	        		st.setPost_id(rs.getInt("post_id"));
	        		st.setB_id(rs.getString("b_id"));
	        		st.setPost_title(rs.getString("post_title"));
	        		st.setPost_content(rs.getString("post_content"));
	        		st.setUser_id(rs.getString("user_id"));
	        		st.setPost_date(rs.getString("post_date"));
	        		st.setPost_category(rs.getString("post_category"));
	        		
	        		arr.add(st);
	        	}
	    	} catch(Exception e){
	    	} finally{
	    		try{
	    			stmt.close();
	    		}catch (Exception ignored){
	    		}
	    		try{
	    			conn.close();
	    		} catch(Exception ignored){
	    		}
	    	}
	    	return arr;
		}
	
	public void delete(String g) {
		try {
			Class.forName("com.mysql.jdbc.Driver");
			conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/boardgame","root","rhkddml");
			String s = "delete from community where post_id = '"+ g +"';";
			stmt =  conn.createStatement();															
			stmt.executeUpdate(s);
		}catch(Exception e) {
			
		}finally {
			try {
				stmt.close();
				conn.close();
			}catch(Exception e) {
			}
		}
	}
	public void insert1(Community data) {
		try {
		Class.forName("com.mysql.jdbc.Driver");
		conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/boardgame?useUnicode=true&characterEncoding=utf8","root","rhkddml");
		String ins = String.format("insert into community(post_title,post_content,post_category,user_id,post_img,b_id) values('%s','%s','%s','%s','%s','%s');",data.getPost_title(),data.getPost_content(),data.getPost_category(),data.getUser_id(),data.getBoardgame_img(),data.getB_id());
		stmt = conn.createStatement();
		stmt.executeUpdate(ins);
		}catch(Exception e) {
			System.out.println("안됨");
		}finally {
			try {
				stmt.close();
				conn.close();
			}catch(Exception e) {
			}
		}
	}
	
	public void insertbg(Boardgames bg) {
		try {
		Class.forName("com.mysql.jdbc.Driver");
		conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/boardgame?useUnicode=true&characterEncoding=utf8","root","rhkddml");
		String ins = String.format("insert into board_game values('%s','%s','%s','%s','%s','%s','%s','%s','%s','%s','%s','%s','%s','%s','%s');",bg.getB_id(),bg.getB_title(),bg.getYearof(),bg.getPrice(),bg.getPnum(),bg.getRunning_time(),bg.getAge(),bg.getB_img(),bg.getGame_level(),bg.getDesigner(),bg.getSub_lang(),bg.getB_theme(),bg.getProceed(),bg.getB_detail(),bg.getPublisher());
		stmt = conn.createStatement();
		stmt.executeUpdate(ins);
		}catch(Exception e) {
			System.out.println("보드게임 insert 안됐음");
		}finally {
			try {
				stmt.close();
				conn.close();
			}catch(Exception e) {
			}
		}
	}
	
public ArrayList<Boardgames> bgselect(){
		
	    ArrayList<Boardgames> arr1 = new ArrayList<Boardgames>();
	    try{
	    	Class.forName("com.mysql.jdbc.Driver");
			conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/boardgame","root","rhkddml");
	    	stmt = conn.createStatement();
	        if(conn == null)
	            throw new Exception("데이터베이스에 연결할 수 없습니다.");
	        	ResultSet rs = stmt.executeQuery("select * from board_game;");
	        	
	        	while(rs.next()){
	        		Boardgames bg = new Boardgames();
	        		
	        		bg.setB_id(rs.getString("b_id"));
	        		bg.setB_title(rs.getString("b_title"));
	        		bg.setYearof(rs.getString("yearof"));
	        		bg.setPrice(rs.getInt("price"));
	        		bg.setPnum(rs.getString("pnum"));
	        		bg.setRunning_time(rs.getString("running_time"));
	        		bg.setAge(rs.getString("age"));
	        		bg.setB_img(rs.getString("b_img"));
	        		bg.setGame_level(rs.getInt("game_level"));
	        		bg.setDesigner(rs.getString("designer"));
	        		bg.setSub_lang(rs.getString("sub_lang"));
	        		bg.setB_theme(rs.getNString("b_theme"));
	        		bg.setProceed(rs.getString("proceed"));
	        		bg.setB_detail(rs.getString("b_detail"));
	        		bg.setPublisher(rs.getString("publisher"));
	        		
	        		arr1.add(bg);
	        	}
	    	} catch(Exception e){
	    		System.out.println("보드게임 전체출력 안됨");
	    	} finally{
	    		try{
	    			stmt.close();
	    		}catch (Exception ignored){
	    		}
	    		try{
	    			conn.close();
	    		} catch(Exception ignored){
	    		}
	    	}
	    	return arr1;
		}

public Boardgames bgselectone(int g){
	
    ArrayList<Boardgames> arrbg = new ArrayList<Boardgames>();
    Boardgames bg = new Boardgames();
    try{
    	Class.forName("com.mysql.jdbc.Driver");
		conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/boardgame","root","rhkddml");
    	stmt = conn.createStatement();
        if(conn == null)
            throw new Exception("데이터베이스에 연결할 수 없습니다.");
        ResultSet rs = stmt.executeQuery("select * from board_game where b_id = '"+ g +"';");
        	int cnt;
        	while(rs.next()){
        		
        		bg.setB_id(rs.getString("b_id"));
        		bg.setB_title(rs.getString("b_title"));
        		bg.setYearof(rs.getString("yearof"));
        		bg.setPrice(rs.getInt("price"));
        		bg.setPnum(rs.getString("pnum"));
        		bg.setRunning_time(rs.getString("running_time"));
        		bg.setAge(rs.getString("age"));
        		bg.setB_img(rs.getString("b_img"));
        		bg.setGame_level(rs.getInt("game_level"));
        		bg.setDesigner(rs.getString("designer"));
        		bg.setSub_lang(rs.getString("sub_lang"));
        		bg.setB_theme(rs.getNString("b_theme"));
        		bg.setProceed(rs.getString("proceed"));
        		bg.setB_detail(rs.getString("b_detail"));
        		bg.setPublisher(rs.getString("publisher"));
        		cnt = rs.getInt("b_cnt");
        		cnt ++;
        		bg.setB_cnt(cnt);
        		
        		arrbg.add(bg);
        	}
    	} catch(Exception e){
    	} finally{
    		try{
    			stmt.close();
    		}catch (Exception ignored){
    		}
    		try{
    			conn.close();
    		} catch(Exception ignored){
    		}
    	}
    	return bg;
	}
	
	public void update(Community u) {
		
		try {
			Class.forName("com.mysql.jdbc.Driver");
			conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/boardgame?useUnicode=true&characterEncoding=utf8","root","rhkddml");
			String s = "update community set post_title ='"+u.getPost_title()+"', post_content = '"+u.getPost_content()+"', post_category = '"+u.getPost_category()+"',b_id = '"+u.getB_id()+"' where post_id = "+u.getPost_id()+";";
			stmt =  conn.createStatement();
			stmt.executeUpdate(s);
		}catch(Exception e) {
			System.out.println("안됨1");
		}finally {
			try {
				stmt.close();
				conn.close();
			}catch(Exception e) {
			}
		}
	}
	
	public ArrayList<Community> idpwck(String idd,String pwd) {
		ArrayList<Community> arr = new ArrayList<Community>();
		try {
			Class.forName("com.mysql.jdbc.Driver");
			conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/boardgame","root","rhkddml");
			stmt = conn.createStatement();
			ResultSet rs = stmt.executeQuery("select * from member_info where user_id = '"+ idd +"' && password = '"+ pwd+ "';");
			while(rs.next()){
        		Community st = new Community();
        		
        		st.setUser_id(rs.getString("user_id"));
        		st.setPasswd(rs.getString("password"));
        		
        		arr.add(st);
        	}
    	} catch(Exception e){
    		System.out.println("안됨");
    	} finally{
    		try{
    			stmt.close();
    		}catch (Exception ignored){
    		}
    		try{
    			conn.close();
    		} catch(Exception ignored){
    		}
    	}
    	return arr;
	}
	
	public ArrayList<Community> selectone(int g){
		
	    ArrayList<Community> arr1 = new ArrayList<Community>();
	    try{
	    	Class.forName("com.mysql.jdbc.Driver");
			conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/boardgame","root","rhkddml");
	    	stmt = conn.createStatement();
	        if(conn == null)
	            throw new Exception("데이터베이스에 연결할 수 없습니다.");
	        ResultSet rs = stmt.executeQuery("select * from community where post_id = '"+ g +"';");
	        	int cnt;
	        	while(rs.next()){
	        		Community st = new Community();
	        		
	        		st.setPost_id(rs.getInt("post_id"));
	        		st.setB_id(rs.getString("b_id"));
	        		st.setPost_title(rs.getString("post_title"));
	        		st.setPost_content(rs.getString("post_content"));
	        		st.setUser_id(rs.getString("user_id"));
	        		st.setPost_date(rs.getString("post_date"));
	        		st.setPost_category(rs.getString("post_category"));
	        		cnt = rs.getInt("post_cnt");
	        		cnt ++;
	        		st.setPost_cnt(cnt);
	        		
	        		arr1.add(st);
	        	}
	    	} catch(Exception e){
	    	} finally{
	    		try{
	    			stmt.close();
	    		}catch (Exception ignored){
	    		}
	    		try{
	    			conn.close();
	    		} catch(Exception ignored){
	    		}
	    	}
	    	return arr1;
		}
	
	public Community select_prevpost(int i) {
		
		Connection connect = null;
		Statement save = null;
		ResultSet rs = null;
		
		Community ob = new Community();
		
		try{
			Class.forName("com.mysql.jdbc.Driver");
			connect = DriverManager.getConnection("jdbc:mysql://localhost:3306/boardgame?useUnicode=true&characterEncoding=utf8", "root", "rhkddml");
			save = connect.createStatement();
			System.out.println("-----------Databases1(select_post) 클래스 실행-----------");
			String data = "select * from community where post_id <" + i + " ORDER BY post_id DESC LIMIT 1;"; 
			rs = save.executeQuery(data);
			
			if(rs.next()) {
				
				ob.setPost_id(rs.getInt("post_id"));
				ob.setUser_id(rs.getString("user_id"));
				ob.setPost_title(rs.getString("post_title"));
				ob.setPost_content(rs.getString("post_content"));
				ob.setPost_date(rs.getString("post_date"));
			}
			
		}catch(Exception e) {
			System.out.println(e);

		}finally {
			try {
				save.close();
				connect.close();
			}catch(Exception e){
			}
		}
		
		return ob;
	}

	public Community select_nxtpost(int i) {
		
		Connection connect = null;
		Statement save = null;
		ResultSet rs = null;
		
		Community ob = new Community();
		
		try{
			Class.forName("com.mysql.jdbc.Driver");
			connect = DriverManager.getConnection("jdbc	`:mysql://localhost:3306/boardgame?useUnicode=true&characterEncoding=utf8", "root", "rhkddml");
			save = connect.createStatement();
			System.out.println("-----------Databases1(select_post) 클래스 실행-----------");
			String data = "select * from community where post_id >" + i + " ORDER BY post_id ASC LIMIT 1;"; 
			rs = save.executeQuery(data);
			
			
			if(rs.next()) {
				
				ob.setPost_id(rs.getInt("post_id"));
				ob.setUser_id(rs.getString("user_id"));
				ob.setPost_title(rs.getString("post_title"));
				ob.setPost_content(rs.getString("post_content"));
				ob.setPost_date(rs.getString("post_date"));
			}
			
		}catch(Exception e) {
			System.out.println(e);

		}finally {
			try {
				save.close();
				connect.close();
			}catch(Exception e){
			}
		}
		
		return ob;
	}
}