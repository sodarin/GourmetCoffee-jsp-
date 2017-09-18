package Product;

import java.io.Serializable;

public class Accessory implements Serializable{
	
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	private String code;
	private String description;
	private double price;
	
	private int amount;
	
	
	public String getCode() {
		return code;
	}
	public void setCode(String code) {
		this.code = code;
	}
	public String getDescription() {
		return description;
	}
	public void setDescription(String description) {
		this.description = description;
	}
	public double getPrice() {
		return price;
	}
	public void setPrice(double price) {
		this.price = price;
	}
	public int getAmount() {
		return amount;
	}
	public void setAmount(int amount) {
		this.amount = amount;
	}

	
	public Accessory(String code,String description,double price,int amount){
		this.setCode(code);
		this.setDescription(description);
		this.setPrice(price);
		this.setAmount(amount);
	}
	
}

