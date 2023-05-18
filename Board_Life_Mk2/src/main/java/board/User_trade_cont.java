package board;


import java.sql.DriverManager;
import java.sql.ResultSet;
import java.util.ArrayList;

import com.mysql.jdbc.Connection;
import com.mysql.jdbc.Statement;

import vo.User_trade;

public class User_trade_cont {
	
	public ArrayList<User_trade> us() { //user select 의의미로 이렇게 해놓.. 전체출력
		Connection conn = null;
		Statement stmt = null;
//		User_trade ut = new User_trade();
		ArrayList<User_trade> arr = new ArrayList<User_trade>();
		
		try{
			Class.forName("com.mysql.cj.jdbc.Driver");
			conn = (Connection) DriverManager.getConnection("jdbc:mysql://15.165.215.248:3306/boardgame","boardlife","0518");
			if(conn == null)
				throw new Exception("데이터베이스에 연결할 수 없습니다.");
			stmt = (Statement) conn.createStatement();
			ResultSet rs = stmt.executeQuery("select*from user_trade order by trpost_num desc;");
			while(rs.next())
			{
				User_trade ut = new User_trade();
				
				ut.setTrpost_num(rs.getInt("trpost_num"));
				ut.setUser_id(rs.getString("user_id"));
				ut.setTr_title(rs.getString("tr_title"));
				ut.setTr_category(rs.getString("tr_category"));
				ut.setTr_date(rs.getDate("tr_date"));
				ut.setTr_price(rs.getInt("tr_price"));
				ut.setTr_content(rs.getString("tr_content"));
				
				arr.add(ut);
			}					
		}
		catch(Exception ignored) {
		}
		finally{
			try{
				stmt.close(); //실행 해제 메서드
			} catch(Exception ignored) {
			}
			try {
				conn.close(); //연결 해제 메서드
			} catch (Exception ignored) {
			}
		} return arr;
	}
	
	public void del (int a) throws Exception  {
		Connection conn = null; //Connection 이라는 연결기능을 conn 이라는 것으로 선언하여, 이 메소드 내에서 사용하겠다.
		Statement stmt = null; //Statement 이라는 기능을 stmt 이라는 것으로 선언하여, 이 메소드 내에서 사용하겠다.
		try{
			Class.forName("com.mysql.cj.jdbc.Driver"); // 이놈이 생성자로 가야하는거.. 
			conn = (Connection) DriverManager.getConnection("jdbc:mysql://15.165.215.248:3306/boardgame","boardlife","0518"); //연결메소드 로 빼는것
			if(conn == null){ //conn 에 연결했을때, 값이 없으면, "데이터베이스에 연결할 수 없습니다." 라고 예외처리를 하겠다.
				throw new Exception("데이터베이스에 연결할 수 없습니다.");
			}
			stmt=(Statement) conn.createStatement(); //문자를 입력할때 쓰는 명령어.
			String command = String.format("delete from user_trade where trpost_num = '"+a+"';"); //a라는 변수안에 id값을 이용하기 위해 그냥 a가 아닌 "+a+" 의 형태로 쓰게 되었다.
			int rowNum = stmt.executeUpdate(command);
			if(rowNum<1){
				throw new Exception("데이터를 DB에 입력할 수 없습니다.");
			}
		} finally {
			try {
				stmt.close(); // 연결 해제 메소드
			} catch (Exception ignored) {
			}
			try {
				conn.close(); // 연결 해제 메소드
			} catch(Exception ignored) {	
			}	}
	}
	
	public void in (User_trade ur) throws Exception {
		Connection conn = null; 
		Statement stmt = null;
	
		int trpost_num = ur.getTrpost_num();
		String user_id = ur.getUser_id();
		String tr_title = ur.getTr_title();
		String tr_category = ur.getTr_category();
//		Date tr_date = ur.getTr_date();
		int tr_price = ur.getTr_price();
		String tr_content = ur.getTr_content();
		
		try{
			Class.forName("com.mysql.cj.jdbc.Driver"); // 이놈이 생성자로 가야하는거.. 
			conn = (Connection) DriverManager.getConnection("jdbc:mysql://15.165.215.248:3306/boardgame","boardlife","0518");
			if(conn == null)
				throw new Exception("데이터베이스에 연결할 수 없습니다.");
			stmt=(Statement) conn.createStatement();
			String input = String.format("insert into user_trade values (%d,'%s','%s','%s',now(),%s,'%s')",trpost_num,user_id,tr_title,tr_category,tr_price,tr_content);

			int rowNum = stmt.executeUpdate(input);
			if(rowNum<1)
				throw new Exception("데이터를 DB에 입력할 수 없습니다.");			
		} finally {
			try {
				stmt.close(); // 연결 해제 메소드
			} catch (Exception ignored) {
			}
			try {
				conn.close(); // 연결 해제 메소드
			} catch(Exception ignored) {	
			}	}

	}
	
	public void up (User_trade utp) throws Exception { //select where 게시글 번호! 수정
		Connection conn = null;
		Statement stmt = null;
		
		int trpost_num = utp.getTrpost_num();
		String user_id = utp.getUser_id();
		String tr_title = utp.getTr_title();
		String tr_category = utp.getTr_category();
		int tr_price = utp.getTr_price();
		String tr_content = utp.getTr_content();
		
		//System.out.println(trpost_num+user_id+tr_title+tr_category+tr_price+tr_content); // 이 거 안나오면 값 넘기는거부터 다시해야한다.
		
		try{
			Class.forName("com.mysql.cj.jdbc.Driver");
			conn = (Connection) DriverManager.getConnection("jdbc:mysql://15.165.215.248:3306/boardgame","boardlife","0518");
			if(conn == null)
				throw new Exception("데이터베이스에 연결할 수 없습니다.");
			stmt = (Statement) conn.createStatement();
			String command = String.format("update user_trade set tr_title ='"+tr_title+"',tr_category='"+tr_category+"', tr_price = "+tr_price+",tr_content = '"+tr_content+"' where trpost_num = "+trpost_num+";");
			int rowNum = stmt.executeUpdate(command);
			if (rowNum < 1)
				throw new Exception("데이터를 DB에 입력할 수 없습니다.");
		}catch(Exception e) {
			System.out.println(e);
		} finally {
			try {
				stmt.close(); // 연결 해제 메소드
			} catch (Exception ignored) {
			}
			try {
				conn.close(); //연결 해제 메소드
			} catch(Exception ignored) {	
			}	}
	}
	
	public User_trade us1(String t) { //개별출력 메소드
		Connection conn = null;
		Statement stmt = null;
//		ArrayList<User_trade> arr = new ArrayList<User_trade>();
		User_trade ut = new User_trade(); //ut라는 객체를 생성.. 
		
		try{
			Class.forName("com.mysql.cj.jdbc.Driver");
			conn = (Connection) DriverManager.getConnection("jdbc:mysql://15.165.215.248:3306/boardgame","boardlife","0518");
			if(conn == null)
				throw new Exception("데이터베이스에 연결할 수 없습니다.");
			stmt = (Statement) conn.createStatement();
			ResultSet rs = stmt.executeQuery("select*from user_trade where trpost_num="+t+";"); //sql 에서 trpost_num 이라는 필드안의 "+t+" 출력한다.
			// "+t+" = String t -> + + 해주는 이유는 이 안의 값을 가져와야 하기 때문이다. 이 출력값을 rs에 담는다.
			if(rs.next()) {
			ut.setUser_id(rs.getString("user_id")); //rs에 담겨져있는 sql상의 출력된 user_id를 호출(가져오는것)해서 ut.setUser_id에 담는다. 즉 setUser_id로 저장되는것
			ut.setTr_title(rs.getString("tr_title"));
			ut.setTr_category(rs.getString("tr_category"));
			ut.setTr_price(Integer.parseInt(rs.getString("tr_price")));
			ut.setTr_content(rs.getString("tr_content"));	
			}
		}
		catch(Exception ignored) {
		}
		finally{
			try{
				stmt.close();
			} catch(Exception ignored) {
			}
			try {
				conn.close();
			} catch (Exception ignored) {
			}
		} return ut;
	}
}