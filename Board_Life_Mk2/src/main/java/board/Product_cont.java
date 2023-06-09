package board;

import java.sql.DriverManager;
import java.sql.ResultSet;
import java.util.ArrayList;

import java.sql.Connection;
import java.sql.Statement;

import vo.Product;

public class Product_cont {
	
//데이터 연결, 전체 출력 메서드(신규)
	public ArrayList<Product> as() {
		Connection conn = null;
		Statement stmt = null;
		ArrayList<Product> arr = new ArrayList<Product>();
		
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			conn = (Connection) DriverManager.getConnection("jdbc:mysql://15.165.215.248:3306/boardgame","boardlife","0518");
			if(conn == null) //conn 에 아무값이 없다면,
				throw new Exception("데이터베이스에 연결할 수 없습니다."); //이렇게 예외처리가 된다.
			stmt = (Statement) conn.createStatement();
			ResultSet rs = stmt.executeQuery("select*from product order by product_date desc;");
			while(rs.next())
			{	
				Product pd = new Product();				
				
				pd.setProduct_num(rs.getString("product_num"));	
				pd.setProduct_pub(rs.getString("product_pub"));
				pd.setProduct_name(rs.getString("product_name"));
				pd.setProduct_summary(rs.getString("product_summary"));
				pd.setProduct_price(rs.getInt("product_price"));
				pd.setProduct_lang(rs.getString("product_lang"));
				pd.setProduct_date(rs.getString("product_date"));
				pd.setP_designer(rs.getString("p_designer"));
				pd.setP_year(rs.getString("p_year"));
				pd.setP_theme(rs.getString("P_theme"));
				pd.setP_proceed(rs.getString("P_proceed"));
				pd.setProduct_img(rs.getString("product_img"));
				pd.setP_num(rs.getString("p_num"));
				pd.setP_age(rs.getString("p_age"));
				pd.setP_runtime(rs.getString("p_runtime"));
				pd.setP_level(rs.getString("p_level"));
				pd.setProduct_detail(rs.getString("product_detail"));

				arr.add(pd);
			}			
		}
		catch(Exception ignored) {
			
			ignored.printStackTrace();
			
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

//데이터 연결,	전체 출력 메서드(베스트)
	public ArrayList<Product> ass() {
		Connection conn = null;
		Statement stmt = null;
		ArrayList<Product> arr = new ArrayList<Product>();
		
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			conn = (Connection) DriverManager.getConnection("jdbc:mysql://15.165.215.248:3306/boardgame","boardlife","0518");
			if(conn == null) //conn 에 아무값이 없다면,
				throw new Exception("데이터베이스에 연결할 수 없습니다."); //이렇게 예외처리가 된다.
			stmt = (Statement) conn.createStatement();
			ResultSet rs = stmt.executeQuery("select * from product order by product_num asc;");
			while(rs.next())
			{	
				Product pd = new Product();				
				
				pd.setProduct_num(rs.getString("product_num"));	
				pd.setProduct_pub(rs.getString("product_pub"));
				pd.setProduct_name(rs.getString("product_name"));
				pd.setProduct_summary(rs.getString("product_summary"));
				pd.setProduct_price(rs.getInt("product_price"));
				pd.setProduct_lang(rs.getString("product_lang"));
				pd.setProduct_date(rs.getString("product_date"));
				pd.setP_designer(rs.getString("p_designer"));
				pd.setP_year(rs.getString("p_year"));
				pd.setP_theme(rs.getString("P_theme"));
				pd.setP_proceed(rs.getString("P_proceed"));
				pd.setProduct_img(rs.getString("product_img"));
				pd.setP_num(rs.getString("p_num"));
				pd.setP_age(rs.getString("p_age"));
				pd.setP_runtime(rs.getString("p_runtime"));
				pd.setP_level(rs.getString("p_level"));
				pd.setProduct_detail(rs.getString("product_detail"));

				arr.add(pd);
			}			
		}
		catch(Exception ignored) {
			ignored.printStackTrace();
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

	
	
	public Product as1(String a) { //개별출력을 위한 메서드 , product_num 이라는 변수를  a로 받겠다.
		Connection conn = null;
		Statement stmt = null;
		
		Product pd = new Product();
		
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			conn = (Connection) DriverManager.getConnection("jdbc:mysql://15.165.215.248:3306/boardgame","boardlife","0518");
			if(conn == null) //conn 에 아무값이 없다면,
				throw new Exception("데이터베이스에 연결할 수 없습니다."); //이렇게 예외처리가 된다.
			stmt = (Statement) conn.createStatement();
			ResultSet rs = stmt.executeQuery("select*from product where product_num="+a+";");

			if(rs.next()) {

				pd.setProduct_num(rs.getString("product_num"));	
				pd.setProduct_pub(rs.getString("product_pub"));
				pd.setProduct_name(rs.getString("product_name"));
				pd.setProduct_summary(rs.getString("product_summary"));
				pd.setProduct_price(rs.getInt("product_price"));
				pd.setProduct_lang(rs.getString("product_lang"));
				pd.setProduct_date(rs.getString("product_date"));
				pd.setP_designer(rs.getString("p_designer"));
				pd.setP_year(rs.getString("p_year"));
				pd.setP_theme(rs.getString("P_theme"));
				pd.setP_proceed(rs.getString("P_proceed"));
				pd.setProduct_img(rs.getString("product_img"));
				pd.setP_num(rs.getString("p_num"));
				pd.setP_age(rs.getString("p_age"));
				pd.setP_runtime(rs.getString("p_runtime"));
				pd.setP_level(rs.getString("p_level"));
				pd.setProduct_detail(rs.getString("product_detail"));	
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
		} return pd;	
	}
	
	public ArrayList<Product> search(String search_product,String search_pubname,String search_pdesigner) { // 검색기능
		Connection conn = null;
		Statement stmt = null;
		ArrayList<Product> arr = new ArrayList<Product>();
		
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			conn = (Connection) DriverManager.getConnection("jdbc:mysql://15.165.215.248:3306/boardgame","boardlife","0518");
			if(conn == null) //conn 에 아무값이 없다면,
				throw new Exception("데이터베이스에 연결할 수 없습니다."); //이렇게 예외처리가 된다.
			stmt = (Statement) conn.createStatement();
			ResultSet rs = stmt.executeQuery("select * from product where product_name like'%"+search_product+"%' or product_pub like'%"+search_pubname+"%' or p_designer like'%"+search_pdesigner+"%';"); //문자열에서 글자가 하나라도 일치할 경우
			while(rs.next())
			{	
				Product pd = new Product();	
				
				pd.setProduct_num(rs.getString("product_num"));	
				pd.setProduct_pub(rs.getString("product_pub"));
				pd.setProduct_name(rs.getString("product_name"));
				pd.setProduct_summary(rs.getString("product_summary"));
				pd.setProduct_price(rs.getInt("product_price"));
				pd.setProduct_lang(rs.getString("product_lang"));
				pd.setProduct_date(rs.getString("product_date"));
				pd.setP_designer(rs.getString("p_designer"));
				pd.setP_year(rs.getString("p_year"));
				pd.setP_theme(rs.getString("p_theme"));
				pd.setP_proceed(rs.getString("p_proceed"));
				pd.setProduct_img(rs.getString("product_img"));
				pd.setP_num(rs.getString("p_num"));
				pd.setP_age(rs.getString("p_age"));
				pd.setP_runtime(rs.getString("p_runtime"));
				pd.setP_level(rs.getString("p_level"));
				pd.setProduct_detail(rs.getString("product_detail"));

				arr.add(pd);
			}			
		}
		catch(Exception ignored) {
			ignored.printStackTrace();
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
		} return arr; //보냈다
	}
	
	public void in(Product pr) throws Exception {
		Connection conn = null; 
		Statement stmt = null;
		
		String product_num = pr.getProduct_num();
		String product_pub = pr.getProduct_pub();
		String product_name = pr.getProduct_name();
		String product_summary = pr.getProduct_summary();
		int product_price = pr.getProduct_price();
		String product_lang = pr.getProduct_lang();
		String product_date = pr.getProduct_date();
		String p_designer = pr.getP_designer();
		String p_year = pr.getP_year();
		String p_theme= pr.getP_theme();
		String p_proceed = pr.getP_proceed();
		String product_img = pr.getProduct_img();
		String p_num = pr.getP_num();
		String p_age = pr.getP_age();
		String p_runtime = pr.getP_runtime();
		String p_level = pr.getP_level();
		String product_detail = pr.getProduct_detail();		
		
		try{
			Class.forName("com.mysql.cj.jdbc.Driver");
			conn = (Connection) DriverManager.getConnection("jdbc:mysql://15.165.215.248:3306/boardgame","boardlife","0518");
			if(conn == null)
				throw new Exception("데이터베이스에 연결할 수 없습니다.");
			stmt=(Statement) conn.createStatement();
			String input = String.format("insert into product values ('%s','%s','%s','%s',%d,'%s',now(),'ggg','%s','%s','%s','%s','%s','%s','%s','%s','%s')",product_num,product_pub,product_name,product_summary,product_price,product_lang,product_date,p_designer,p_year,p_theme,p_proceed,product_img,p_num,p_age,p_runtime,p_level,product_detail);

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
	
}
