package Product;

import java.io.Serializable;
import java.util.HashMap;

import java.util.Map;

public class Order implements Serializable{
	
//	private List<Integer> coffee_amount;
//	private List<Coffee> order_coffee;
//	private List<Integer> machine_amount;
	
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	private HashMap<Coffee,Integer> order_coffee;
	private HashMap<CoffeeBrewerMachine,Integer> order_machine;
	private HashMap<Accessory,Integer> order_accessory;
	
	public HashMap<Coffee, Integer> getOrder_coffee() {
		return order_coffee;
	}
	public void setOrder_coffee(HashMap<Coffee, Integer> order_coffee) {
		this.order_coffee = order_coffee;
	}
	public HashMap<CoffeeBrewerMachine, Integer> getOrder_machine() {
		return order_machine;
	}
	public void setOrder_machine(HashMap<CoffeeBrewerMachine, Integer> order_machine) {
		this.order_machine = order_machine;
	}
	public HashMap<Accessory, Integer> getOrder_accessory() {
		return order_accessory;
	}
	public void setOrder_accessory(HashMap<Accessory, Integer> order_accessory) {
		this.order_accessory = order_accessory;
	}
	
	public Order(){
		this.setOrder_coffee(new HashMap<>());
		this.setOrder_accessory(new HashMap<>());
		this.setOrder_machine(new HashMap<>());
	}
	
	public void newCoffeeOrder(Coffee selectCoffee){
		boolean flag=false;
		for(Map.Entry<Coffee, Integer>entry:order_coffee.entrySet()){
			if(entry.getKey().getCode().matches(selectCoffee.getCode())){
				int a=entry.getValue();
				a++;
				order_coffee.put(selectCoffee, a);
				flag=true;
			}				
		}
		if(!flag){
			order_coffee.put(selectCoffee, 1);
		}
	}
	
	public void newMachineOrder(CoffeeBrewerMachine selectMachine){
		boolean flag=false;
		for(Map.Entry<CoffeeBrewerMachine, Integer>entry:order_machine.entrySet()){
			if(entry.getKey().getCode().matches(selectMachine.getCode())){
				int a=entry.getValue();
				a++;
				order_machine.put(selectMachine, a);
				flag=true;
			}
		}
		if(!flag){
			order_machine.put(selectMachine, 1);
		}
	}
	
	public void newAccessoryOrder(Accessory selectAccessory){
		boolean flag=false;
		for(Map.Entry<Accessory, Integer>entry:order_accessory.entrySet()){
			if(entry.getKey().getCode().matches(selectAccessory.getCode())){
				int a=entry.getValue();
				a++;
				order_accessory.put(selectAccessory, a);
				flag=true;
			}
		}
		if(!flag){
			order_accessory.put(selectAccessory, 1);
		}
	}
	


}
