package board;

import java.sql.Connection;
import java.sql.DriverManager;

import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;

import vo.Basket;
import vo.User_trade;

public class Basket_cont {
	
	public Basket is(int no) throws Exception {
		Connection conn = null;
		Statement stmt = null;
		
		Basket bk = new Basket();
		
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			conn = (Connection) DriverManager.getConnection("jdbc:mysql://15.165.215.248:3306/boardgame","boardlife","0518");		
		if(conn == null) //conn 에 아무값이 없다면,
			throw new Exception("데이터베이스에 연결할 수 없습니다."); //이렇게 예외처리가 된다.
		stmt = (Statement) conn.createStatement();
		ResultSet rs = stmt.executeQuery("select*from basket where basket_no like '"+no+"';");		
		if(rs.next())
		{
			
			bk.setBasket_no(rs.getInt("basket_no"));
			bk.setUser_id(rs.getString("user_id"));
			bk.setProduct_num(rs.getString("product_num"));
			bk.setBasket_amount(rs.getInt("basket_amount"));
			bk.setBasket_date(rs.getString("basket_date"));			
		}
		}
		catch(Exception ignored) {
			ignored.printStackTrace();
		}
		finally {
			try {
				stmt.close();
			}catch(Exception ignored) {				
			}
			try {
				conn.close();
			}catch(Exception ignored) {				
			}
		} return bk;	
				
	} //데이터 연결, 개별 출력 메서드 is

	public ArrayList<Basket> as(String id) {
		Connection conn = null;
		Statement stmt = null;
		ArrayList<Basket> arr = new ArrayList<Basket>();

		try{
			Class.forName("com.mysql.cj.jdbc.Driver");
			conn = (Connection) DriverManager.getConnection("jdbc:mysql://15.165.215.248:3306/boardgame","boardlife","0518");
			if(conn == null)
				throw new Exception("데이터베이스에 연결할 수 없습니다.");
			stmt = (Statement) conn.createStatement();
			ResultSet rs = stmt.executeQuery("select*from basket where user_id like '"+id +"';");
			while(rs.next())
			{
				Basket bk = new Basket();
				
				bk.setBasket_no(rs.getInt("basket_no"));
				bk.setUser_id(rs.getString("user_id"));
				bk.setProduct_num(rs.getString("product_num"));
				bk.setBasket_amount(rs.getInt("basket_amount"));
				bk.setBasket_date(rs.getString("basket_date"));
								
				arr.add(bk);
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
	} //데이터 연결, 전첼 출력 메서드 as
	
	public ArrayList<Basket> as1(String id) {
		Connection conn = null;
		Statement stmt = null;
		ArrayList<Basket> arr = new ArrayList<Basket>();

		try{
			Class.forName("com.mysql.cj.jdbc.Driver");
			conn = (Connection) DriverManager.getConnection("jdbc:mysql://15.165.215.248:3306/boardgame","boardlife","0518");
			if(conn == null)
				throw new Exception("데이터베이스에 연결할 수 없습니다.");
			stmt = (Statement) conn.createStatement();
			ResultSet rs = stmt.executeQuery("select*from basket where user_id like '"+id +"';");
			while(rs.next())
			{
				Basket bk = new Basket();
				
				bk.setBasket_no(rs.getInt("basket_no"));
				bk.setUser_id(rs.getString("user_id"));
				bk.setProduct_num(rs.getString("product_num"));
				bk.setBasket_amount(rs.getInt("basket_amount"));
				bk.setBasket_date(rs.getString("basket_date"));
								
				arr.add(bk);
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
	} //데이터 연결, 전첼 출력 메서드 as	
	
	
	public void in (Basket ca) throws Exception {
		Connection conn = null;
		Statement stmt = null;
		
		int basket_no = ca.getBasket_no();
		String user_id = ca.getUser_id();
		String product_num = ca.getProduct_num();
		String basket_amount = Integer.toString(ca.getBasket_amount());
		String basket_date = ca.getBasket_date();
		
		try{
			Class.forName("com.mysql.cj.jdbc.Driver"); // 이놈이 생성자로 가야하는거.. 
			conn = (Connection) DriverManager.getConnection("jdbc:mysql://15.165.215.248:3306/boardgame","boardlife","0518");
//			conn = (Connection) DriverManager.getConnection("jdbc:mysql://localhost:3306/boardgame","root","1234");
			if(conn == null)
				throw new Exception("데이터베이스에 연결할 수 없습니다.");
			stmt=(Statement) conn.createStatement();
			
			String input = String.format("insert into basket (user_id,product_num,basket_amount,basket_date) values('%s','%s','%s',now())",user_id,product_num,basket_amount,basket_date);
			System.out.println("dfasf  "+input);
			System.out.println(basket_amount);
			int rowNum = stmt.executeUpdate(input);
			if(rowNum<1)
				throw new Exception("데이터를 DB에 입력할 수 없습니다.");	
			
		}
		catch(Exception ignored) {
			ignored.printStackTrace();
			System.out.println("출력이유 : user_id, product_num 이 null 이라서");
		}
		finally {
			try {
				stmt.close(); // 연결 해제 메소드
			} catch (Exception ignored) {
			}
			try {
				conn.close(); // 연결 해제 메소드
			} catch(Exception ignored) {	
			}	}				
	}
	
	public void del(int a) throws Exception {
		Connection conn = null; //Connection 이라는 연결기능을 conn 이라는 것으로 선언하여, 이 메소드 내에서 사용하겠다.
		Statement stmt = null; //Statement 이라는 기능을 stmt 이라는 것으로 선언하여, 이 메소드 내에서 사용하겠다.
		try{
			Class.forName("com.mysql.cj.jdbc.Driver"); // 이놈이 생성자로 가야하는거.. 
			conn = (Connection) DriverManager.getConnection("jdbc:mysql://15.165.215.248:3306/boardgame","boardlife","0518"); //연결메소드 로 빼는것
			if(conn == null){ //conn 에 연결했을때, 값이 없으면, "데이터베이스에 연결할 수 없습니다." 라고 예외처리를 하겠다.
				throw new Exception("데이터베이스에 연결할 수 없습니다.");
			}
			stmt=(Statement) conn.createStatement(); //문자를 입력할때 쓰는 명령어.
			String command = String.format("delete from basket where basket_no = '"+a+"';"); //a라는 변수안에 id값을 이용하기 위해 그냥 a가 아닌 "+a+" 의 형태로 쓰게 되었다.
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
	
}// 클래스 basket_cont
