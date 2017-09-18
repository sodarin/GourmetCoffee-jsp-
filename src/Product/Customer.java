package Product;

import java.io.Serializable;
import java.util.ArrayList;
import java.util.List;



public class Customer implements Serializable{
	
	/**
	 * 
	 */
	private static final long serialVersionUID = -3886135367202325928L;
	private String name;
	private String code;
	private List<Order> orders;
	
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getCode() {
		return code;
	}
	public void setCode(String code) {
		this.code = code;
	}
	public List<Order> getOrders() {
		return orders;
	}
	public void setOrder(List<Order> order) {
		this.orders = order;
	}
	
	public Customer(String name,String code,List<Order> order){
		this.setCode(code);
		this.setName(name);
		this.setOrder(order);
	}
	
	public Customer(String name,String code){
		this.setCode(code);
		this.setName(name);
		this.setOrder(new ArrayList<>());
	}
	
	
	public void addOrder(Order newOrder){
		orders.add(newOrder);
	}

}
