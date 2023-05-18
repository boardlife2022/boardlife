package board;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;

import vo.Notice;

public class Notice_cont {
	
	Connection connect = null;
	Statement save = null;
	ResultSet rs = null;

	public void insert(Notice ob) {
		// 입력 메서드
		Connection connect = null;
		Statement save = null;
		
		try{
			Class.forName("com.mysql.cj.jdbc.Driver");
			connect = DriverManager.getConnection("jdbc:mysql://15.165.215.248:3306/boardgame?useUnicode=true&characterEncoding=utf8", "boardlife", "0518");
			// 하나의 커넥트당 작업은 하나씩 해야한다.
			save = connect.createStatement();
			System.out.println("-----------Database : notice_input (입력) 클래스 실행-----------");
			String data = "insert into notice(post_title, post_content, user_id) values('" + ob.getPost_title() + "','" + 
			ob.getPost_content() + "','" + ob.getUser_id() + "');"; 
			
			save.executeUpdate(data);

		}catch(Exception e) {
			System.out.println(e+"오류입니다.");
		}finally {
			try {
				save.close();
				connect.close();
			}catch(Exception e){
			}
		}
		
	}  // method insert
	


public ArrayList<Notice> select() {
	
	Connection connect = null;
	Statement save = null;
	ResultSet rs = null;
	// select한 정보를 ResultSet 안에다가 담는다
	
	ArrayList<Notice> notice_list = new ArrayList<Notice>();
	// 하나의 정보만 담기에는 모자라니, 객체 배열을 만든다 Obj[] ob = new Obj[100];
	// 그러나 정해져 있는 사이즈까지만 만들 수 있기 때문에 배열은 자주쓰지 않는다.
	// 그래서 대신, collection을 많이 쓴다. 이것은 따로 사이즈를 주지 않아도 상관이 없다.
	
	try{
		Class.forName("com.mysql.cj.jdbc.Driver");
		connect = DriverManager.getConnection("jdbc:mysql://15.165.215.248:3306/boardgame?useUnicode=true&characterEncoding=utf8", "boardlife", "0518");
		save = connect.createStatement();
		System.out.println("-----------Databases1(select) 클래스 실행-----------");
		String data = "select * from notice order by post_id desc;"; 
		rs = save.executeQuery(data);
		// 쿼리는 데이터를 끌고 오는것.
		
		while(rs.next()) {
			// 객체의 정보 하나만 넣을거면 if 계속해서 할거면 while
			Notice ob = new Notice();
			ob.setPost_id(rs.getInt("post_id"));
			ob.setUser_id(rs.getString("user_id"));
			ob.setPost_title(rs.getString("post_title"));
			ob.setPost_content(rs.getString("post_title"));
			ob.setPost_date(rs.getString("post_date"));
			
			// 데이터베이스에서 가져온 데이터를 객체(Obj)에 집어넣는다.
			notice_list.add(ob);
		}

		
	}catch(Exception e) {
		System.out.println(e+"오류입니다.");
	}finally {
		try {
			save.close();
			connect.close();
		}catch(Exception e){
		}
	}
	
	return notice_list;
} // method select

public ArrayList<Notice> search(String key) {
	
	Connection connect = null;
	Statement save = null;
	ResultSet rs = null;
	// select한 정보를 ResultSet 안에다가 담는다
	
	ArrayList<Notice> notice_list = new ArrayList<Notice>();
	// 하나의 정보만 담기에는 모자라니, 객체 배열을 만든다 Obj[] ob = new Obj[100];
	// 그러나 정해져 있는 사이즈까지만 만들 수 있기 때문에 배열은 자주쓰지 않는다.
	// 그래서 대신, collection을 많이 쓴다. 이것은 따로 사이즈를 주지 않아도 상관이 없다.
	
	try{
		Class.forName("com.mysql.cj.jdbc.Driver");
		connect = DriverManager.getConnection("jdbc:mysql://15.165.215.248:3306/boardgame?useUnicode=true&characterEncoding=utf8", "boardlife", "0518");
		save = connect.createStatement();
		System.out.println("-----------Databases1(select) 클래스 실행-----------");
		String data = "SELECT * from notice where post_title like '%" + key + "%' order by post_id desc;";
		rs = save.executeQuery(data);
		// 쿼리는 데이터를 끌고 오는것.
		
		while(rs.next()) {
			// 객체의 정보 하나만 넣을거면 if 계속해서 할거면 while
			Notice ob = new Notice();
			ob.setPost_id(rs.getInt("post_id"));
			ob.setUser_id(rs.getString("user_id"));
			ob.setPost_title(rs.getString("post_title"));
			ob.setPost_content(rs.getString("post_title"));
			ob.setPost_date(rs.getString("post_date"));
			
			// 데이터베이스에서 가져온 데이터를 객체(Obj)에 집어넣는다.
			notice_list.add(ob);
		}

		
	}catch(Exception e) {
		System.out.println(e+"오류입니다.");
	}finally {
		try {
			save.close();
			connect.close();
		}catch(Exception e){
		}
	}
	
	return notice_list;
} // method select

public Notice select_post(int i) {
	// 공지사항 글 한개를 반환하는 메서드(view파일에 적용)
	
	Connection connect = null;
	Statement save = null;
	ResultSet rs = null;
	// select한 정보를 ResultSet 안에다가 담는다
	
	Notice ob = new Notice();
	
	try{
		Class.forName("com.mysql.cj.jdbc.Driver");
		connect = DriverManager.getConnection("jdbc:mysql://15.165.215.248:3306/boardgame?useUnicode=true&characterEncoding=utf8", "boardlife", "0518");
		save = connect.createStatement();
		System.out.println("-----------Databases1(select_post) 클래스 실행-----------");
		String data = "select * from notice where post_id =" + i + ";"; 
		rs = save.executeQuery(data);
		// 쿼리는 데이터를 끌고 오는것.
		
		if(rs.next()) {
			// 객체의 정보 하나만 넣을거면 if 계속해서 할거면 while
			
			ob.setPost_id(rs.getInt("post_id"));
			ob.setUser_id(rs.getString("user_id"));
			ob.setPost_title(rs.getString("post_title"));
			ob.setPost_content(rs.getString("post_content"));
			ob.setPost_date(rs.getString("post_date"));

			// 데이터베이스에서 가져온 데이터를 객체(Obj)에 집어넣는다.
		}
		
	}catch(Exception e) {
		System.out.println(e+"오류입니다.");

	}finally {
		try {
			save.close();
			connect.close();
		}catch(Exception e){
		}
	}
	
	return ob;
} // method select_post


public Notice select_prevpost(int i) {
	// 공지사항 글 한개를 반환하는 메서드(view파일에 적용)
	
	Connection connect = null;
	Statement save = null;
	ResultSet rs = null;
	// select한 정보를 ResultSet 안에다가 담는다
	
	Notice ob = new Notice();
	
	try{
		Class.forName("com.mysql.cj.jdbc.Driver");
		connect = DriverManager.getConnection("jdbc:mysql://15.165.215.248:3306/boardgame?useUnicode=true&characterEncoding=utf8", "boardlife", "0518");
		save = connect.createStatement();
		System.out.println("-----------Databases1(select_post) 클래스 실행-----------");
		String data = "select * from notice where post_id <" + i + " ORDER BY post_id DESC LIMIT 1;"; 
		rs = save.executeQuery(data);
		// 쿼리는 데이터를 끌고 오는것.
		
		if(rs.next()) {
			// 객체의 정보 하나만 넣을거면 if 계속해서 할거면 while
			
			ob.setPost_id(rs.getInt("post_id"));
			ob.setUser_id(rs.getString("user_id"));
			ob.setPost_title(rs.getString("post_title"));
			ob.setPost_content(rs.getString("post_content"));
			ob.setPost_date(rs.getString("post_date"));

			// 데이터베이스에서 가져온 데이터를 객체(Obj)에 집어넣는다.
		}
		
	}catch(Exception e) {
		System.out.println(e+"오류입니다.");

	}finally {
		try {
			save.close();
			connect.close();
		}catch(Exception e){
		}
	}
	
	return ob;
} // method select_post

public Notice select_nxtpost(int i) {
	// 공지사항 글 한개를 반환하는 메서드(view파일에 적용)
	
	Connection connect = null;
	Statement save = null;
	ResultSet rs = null;
	// select한 정보를 ResultSet 안에다가 담는다
	
	Notice ob = new Notice();
	
	try{
		Class.forName("com.mysql.cj.jdbc.Driver");
		connect = DriverManager.getConnection("jdbc:mysql://15.165.215.248:3306/boardgame?useUnicode=true&characterEncoding=utf8", "boardlife", "0518");
		save = connect.createStatement();
		System.out.println("-----------Databases1(select_post) 클래스 실행-----------");
		String data = "select * from notice where post_id >" + i + " ORDER BY post_id ASC LIMIT 1;"; 
		rs = save.executeQuery(data);
		// 쿼리는 데이터를 끌고 오는것.
		
		if(rs.next()) {
			// 객체의 정보 하나만 넣을거면 if 계속해서 할거면 while
			
			ob.setPost_id(rs.getInt("post_id"));
			ob.setUser_id(rs.getString("user_id"));
			ob.setPost_title(rs.getString("post_title"));
			ob.setPost_content(rs.getString("post_content"));
			ob.setPost_date(rs.getString("post_date"));

			// 데이터베이스에서 가져온 데이터를 객체(Obj)에 집어넣는다.
		}
		
	}catch(Exception e) {
		System.out.println(e+"오류입니다.");

	}finally {
		try {
			save.close();
			connect.close();
		}catch(Exception e){
		}
	} 
	
	return ob;
} // method select_post

public Notice delete_post(int i) {
	// 공지사항 글 한개를 반환하는 메서드(view파일에 적용)
	
	Connection connect = null;
	Statement save = null;

	// select한 정보를 ResultSet 안에다가 담는다
	
	Notice ob = new Notice();
	
	try{
		Class.forName("com.mysql.cj.jdbc.Driver");
		connect = DriverManager.getConnection("jdbc:mysql://15.165.215.248:3306/boardgame?useUnicode=true&characterEncoding=utf8", "boardlife", "0518");
		save = connect.createStatement();
		System.out.println("-----------Databases1(delete_post) 클래스 실행-----------");
		String data = "delete from notice where post_id =" + i + ";"; 
		save.executeUpdate(data);
		 
		// 쿼리는 데이터를 끌고 오는것.
		
	}catch(Exception e) {
		System.out.println(e+"오류입니다.");

	}finally {
		try {
			save.close();
			connect.close();
		}catch(Exception e){
		}
	}
	
	return ob;
} // method delete_post

public void update_post(Notice ob, int post_num) {
	// 공지사항 글 한개를 반환하는 메서드(view파일에 적용)
	
	Connection connect = null;
	Statement save = null;

	// select한 정보를 ResultSet 안에다가 담는다
	
	try{
		Class.forName("com.mysql.cj.jdbc.Driver");
		connect = DriverManager.getConnection("jdbc:mysql://15.165.215.248:3306/boardgame?useUnicode=true&characterEncoding=utf8", "boardlife", "0518");
		save = connect.createStatement();
		System.out.println("-----------Databases1(update_post) 클래스 실행-----------");
		String data = "update notice set post_title='" + ob.getPost_title() +"', post_content='" + ob.getPost_content() + "' where post_id =" + post_num + ";"; 
		save.executeUpdate(data);
		 
		// 쿼리는 데이터를 끌고 오는것.
		
	}catch(Exception e) {
		System.out.println(e+"오류입니다.");

	}finally {
		try {
			save.close();
			connect.close();
		}catch(Exception e){
		}
	}

} // method update_post

} // class Data_operation