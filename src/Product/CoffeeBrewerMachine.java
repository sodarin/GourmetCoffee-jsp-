package Product;

import java.io.Serializable;

public class CoffeeBrewerMachine implements Serializable{
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	private String code;
	private String description;
	private double price;
	private String type;
	private String water_supply;
	private int capacity;
	
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
	public String getType() {
		return type;
	}
	public void setType(String type) {
		this.type = type;
	}
	public String getWater_supply() {
		return water_supply;
	}
	public void setWater_supply(String water_supply) {
		this.water_supply = water_supply;
	}
	public int getCapacity() {
		return capacity;
	}
	public void setCapacity(int capacity) {
		this.capacity = capacity;
	}	
	public int getAmount() {
		return amount;
	}
	public void setAmount(int amount) {
		this.amount = amount;
	}
	
	
	public CoffeeBrewerMachine(String code,String description,double price,String type,String water_supply,int capacity,int amount){
		this.setCode(code);
		this.setDescription(description);
		this.setPrice(price);
		this.setType(type);
		this.setWater_supply(water_supply);
		this.setCapacity(capacity);
		this.setAmount(amount);
	}
	
	

}
