package vo;

import java.sql.Date;



public class User_trade {
	int trpost_num;
	String user_id;
	String tr_title;
	String tr_category;
	Date tr_date;
	int tr_price;
	String tr_content;
	
	public int getTrpost_num() {
		return trpost_num;
	}
	public void setTrpost_num(int trpost_num) {
		this.trpost_num = trpost_num;
	}
	public String getUser_id() {
		return user_id;
	}
	public void setUser_id(String user_id) {
		this.user_id = user_id;
	}
	public String getTr_title() {
		return tr_title;
	}
	public void setTr_title(String tr_title) {
		this.tr_title = tr_title;
	}
	public String getTr_category() {
		return tr_category;
	}
	public void setTr_category(String tr_category) {
		this.tr_category = tr_category;
	}
	public Date getTr_date() {
		return tr_date;
	}
	public void setTr_date(Date tr_date) {
		this.tr_date = tr_date;
	}
	public int getTr_price() {
		return tr_price;
	}
	public void setTr_price(int tr_price) {
		this.tr_price = tr_price;
	}
	public String getTr_content() {
		return tr_content;
	}
	public void setTr_content(String tr_content) {
		this.tr_content = tr_content;
	}
}
