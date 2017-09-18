package Product;

import java.util.HashMap;

public class CoffeeStore {
	
	private HashMap<String,Coffee> allCoffee;
	private HashMap<String,Accessory> allAccessory;
	private HashMap<String,CoffeeBrewerMachine> allCoffee_machine;
    private static HashMap<String,Customer> allCustomers;
	
	public static HashMap<String, Customer> getAllCustomers() {
		return allCustomers;
	}
	public void setAllCustomers(HashMap<String, Customer> allCustomers) {
		CoffeeStore.allCustomers = allCustomers;
	}
	public HashMap<String, Coffee> getAllCoffee() {
		return allCoffee;
	}
	public void setAllCoffee(HashMap<String, Coffee> allCoffee) {
		this.allCoffee = allCoffee;
	}
	public HashMap<String, Accessory> getAllAccessory() {
		return allAccessory;
	}
	public void setAllAccessory(HashMap<String, Accessory> allAccessory) {
		this.allAccessory = allAccessory;
	}
	public HashMap<String, CoffeeBrewerMachine> getAllCoffee_machine() {
		return allCoffee_machine;
	}
	public void setAllCoffee_machine(HashMap<String, CoffeeBrewerMachine> allCoffee_machine) {
		this.allCoffee_machine = allCoffee_machine;
	}

	
	public CoffeeStore(){
		this.setAllCoffee(new HashMap<>());
		this.setAllCoffee_machine(new HashMap<>());
		this.setAllAccessory(new HashMap<>());
		this.setAllCustomers(new HashMap<>());
	}
	
	
	public void addCoffee(Coffee coffee){
		if(allCoffee.containsKey(coffee.getCode()))
			System.out.println("We have already had this kind of coffee");
		else
			allCoffee.put(coffee.getCode(), coffee);
	}
	
	public void addAccessory(Accessory accessory){
		if(allAccessory.containsKey(accessory.getCode()))
			System.out.println("We have already had this kind of accessory");
		else
			allAccessory.put(accessory.getCode(), accessory);
	}
	
	public void addCoffeeMachine(CoffeeBrewerMachine machine){
		if(allCoffee_machine.containsKey(machine.getCode()))
				System.out.println("We have already had this kind of machine!");
		else
			allCoffee_machine.put(machine.getCode(), machine);
	}
	
	public void addNewCustomer(Customer customer){
			allCustomers.put(customer.getCode(), customer);
	}
	
	public static void updateCustomer(Customer customer){
		CoffeeStore.getAllCustomers().put(customer.getCode(), customer);
	}
	
	
	

}
