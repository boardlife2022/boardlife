package vo;

import java.sql.Date;

public class Basket {
	int basket_no;
	String user_id;
	String product_num;
	int basket_amount;
	String basket_date;
	
	public int getBasket_no() {
		return basket_no;
	}
	public void setBasket_no(int basket_no) {
		this.basket_no = basket_no;
	}
	public String getUser_id() {
		return user_id;
	}
	public void setUser_id(String user_id) {
		this.user_id = user_id;
	}
	public String getProduct_num() {
		return product_num;
	}
	public void setProduct_num(String product_num) {
		this.product_num = product_num;
	}
	public int getBasket_amount() {
		return basket_amount;
	}
	public void setBasket_amount(int basket_amount) {
		this.basket_amount = basket_amount;
	}
	public String getBasket_date() {
		return basket_date;
	}
	public void setBasket_date(String basket_date) {
		this.basket_date = basket_date;
	}
}
