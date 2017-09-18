package Data;

import java.io.*;
import java.nio.file.Files;
import java.nio.file.Paths;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;

import Product.*;

public class CoffeeStoreData {
	
	public static ObjectInputStream input;
	public static ObjectOutputStream output;
	
	public static void writeCoffeeData(HashMap<String,Coffee> coffee){
		try {
			output=new ObjectOutputStream(Files.newOutputStream(Paths.get("Coffee.txt")));
			for(Map.Entry<String, Coffee> entry:coffee.entrySet()){
				Coffee value=entry.getValue();
				output.writeObject(value);
			}
				output.close();
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
	
	public static void writeAccessoryData(HashMap<String,Accessory> accessory){
		try{
			output=new ObjectOutputStream(Files.newOutputStream(Paths.get("Accessory.txt")));
			for(Map.Entry<String, Accessory> entry:accessory.entrySet()){
				Accessory value=entry.getValue();
				output.writeObject(value);
			}
			output.close();
		}catch(IOException e){
			e.printStackTrace();
		}
	}
	
	public static void writeMachineData(HashMap<String,CoffeeBrewerMachine> machine){
		try{
			output=new ObjectOutputStream(Files.newOutputStream(Paths.get("Brewer Machine.txt")));
			for(Map.Entry<String, CoffeeBrewerMachine> entry:machine.entrySet()){
				CoffeeBrewerMachine value=entry.getValue();
				output.writeObject(value);
			}
			output.close();
		}catch(IOException e){
			e.printStackTrace();
		}
	}
	
	public static void writeCustomerData(HashMap<String,Customer> customer){
		try{
			output=new ObjectOutputStream(Files.newOutputStream(Paths.get("D:\\JavaWebDesign\\GourmetCoffee\\Customer.txt")));
			for(Map.Entry<String, Customer>entry:customer.entrySet()){
				Customer value=entry.getValue();
				output.writeObject(value);
			}
			output.close();
		}catch(IOException e){
			e.printStackTrace();
		}
	}
	
	public static void writeSingleCustomer(Customer c){
		CoffeeStore cs=new CoffeeStore();
		try{
			input=new ObjectInputStream(Files.newInputStream(Paths.get("D:\\JavaWebDesign\\GourmetCoffee\\Customer.txt")));
			try{
				while(true){
					Customer customer=(Customer)input.readObject();
					cs.addNewCustomer(customer);
				}				
			}catch(ClassNotFoundException|EOFException e){
				
			}
		}catch(IOException e){
			e.printStackTrace();
		}
		try {
			input.close();
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		cs.addNewCustomer(c);
		CoffeeStoreData.writeCustomerData(CoffeeStore.getAllCustomers());
		
	}
	
	public static void printCoffeeData(){
		try{
			input=new ObjectInputStream(Files.newInputStream(Paths.get("Coffee.txt")));
			try{
				while(true){
					Coffee coffee=(Coffee)input.readObject();
					System.out.println("ID: "+coffee.getCode()+" Description: "+coffee.getDescription()+" Price: "+coffee.getPrice()+" Origin: "+coffee.getOrigin()+" Roast: "+coffee.getRoast()+" Flavor: "+coffee.getFlavor()+" Aroma: "+coffee.getAroma()+" Acidity: "+coffee.getAcidity()+" Body: "+coffee.getBody());				
				}	
			}catch(ClassNotFoundException e){
				e.printStackTrace();
			}catch(EOFException e){
				System.out.println("End");
			}
		}catch(IOException e){
			e.printStackTrace();
		}
		
		try {
			input.close();
		} catch (IOException e) {
			e.printStackTrace();
		}
	}
	
	public static void printAccessoryData(){
		try{
			input=new ObjectInputStream(Files.newInputStream(Paths.get("Accessory.txt")));
			try{
				while(true){
					Accessory accessory=(Accessory)input.readObject();
					System.out.println("ID: "+accessory.getCode()+" Description: "+accessory.getDescription()+" Price: "+accessory.getPrice());
				}
			}catch(ClassNotFoundException e){
				e.printStackTrace();
			}catch(EOFException e){
				System.out.println("End");
			}
		}catch(IOException e){
			e.printStackTrace();
		}
		try {
			input.close();
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
	
	public static void printMachineData(){
		try{
			input=new ObjectInputStream(Files.newInputStream(Paths.get("Brewer Machine.txt")));
			try{
				while(true){
					CoffeeBrewerMachine machine=(CoffeeBrewerMachine)input.readObject();
					System.out.println("ID: "+machine.getCode()+" Description: "+machine.getDescription()+" Price: "+machine.getPrice()+" Model: "+machine.getType()+" Water Supply: "+machine.getWater_supply()+" Number of Cups: "+machine.getCapacity());
				}
			}catch(ClassNotFoundException e){
				e.printStackTrace();
			}catch(EOFException e){
				System.out.println("End");
			}
		}catch(IOException e){
			e.printStackTrace();
		}
		try {
			input.close();
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
	
	public static void printCustomerData(){
		try{
			input=new ObjectInputStream(Files.newInputStream(Paths.get("Customer.txt")));
			try{
				while(true){
					Customer customer=(Customer)input.readObject();
					System.out.println("ID: "+customer.getCode()+" Name: "+customer.getName());
					Iterator<Order> it=customer.getOrders().iterator();
					while(it.hasNext()){
						Order order=it.next();
						for(Map.Entry<Coffee, Integer>entry:order.getOrder_coffee().entrySet())
						    System.out.println("Product: "+entry.getKey().getDescription()+" Amount: "+entry.getValue());
						for(Map.Entry<CoffeeBrewerMachine, Integer>entry:order.getOrder_machine().entrySet())
							System.out.println("Product: "+entry.getKey().getDescription()+" Amount: "+entry.getValue());
						for(Map.Entry<Accessory, Integer>entry:order.getOrder_accessory().entrySet())
							System.out.println("Product: "+entry.getKey().getDescription()+" Amount: "+entry.getValue());
					}
				}				
			}catch(ClassNotFoundException e){
				e.printStackTrace();
			}catch(EOFException e){
				System.out.println("End");
			}
			
		}catch(IOException e){
			e.printStackTrace();
		}
		try {
			input.close();
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
	
	/**
	 * To check whether the id has already been registered.
	 * @param c
	 * @return
	 */
	@SuppressWarnings("finally")
	public static boolean isExistCustomer(Customer c){
		boolean flag=false;
		try{
			input=new ObjectInputStream(Files.newInputStream(Paths.get("D:\\JavaWebDesign\\GourmetCoffee\\Customer.txt")));
			try{
				while(true){
					Customer customer=(Customer)input.readObject();
					if(customer.getCode().matches(c.getCode())){
						flag=true;
					}
				}
			}catch(ClassNotFoundException e){
				e.printStackTrace();
			}catch(EOFException e){
				
			}
		}catch(IOException e){
			e.printStackTrace();
		}finally{
			try {
				input.close();
			} catch (IOException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			return flag;
		}
		
	}
	
	/**
	 * To check name and id is matched or not.
	 * @param name
	 * @param id
	 * @return
	 */
	@SuppressWarnings("finally")
	public static boolean isMatch(String name,String id){
		boolean flag=false;
	 	try{
	 		input=new ObjectInputStream(Files.newInputStream(Paths.get("D:\\JavaWebDesign\\GourmetCoffee\\Customer.txt")));
	 		try{
	 			while(true){
	 				Customer customer=(Customer)input.readObject();
	 				if(name.matches(customer.getName())&&id.matches(customer.getCode())){
	 					flag=true;	 					
	 					break;
	 				}
	 			}
	 		}catch(ClassNotFoundException e){
	 			e.printStackTrace();
	 		}catch(EOFException e){
	 			
	 		}
	 	}catch(IOException e){
	 		e.printStackTrace();
	 	}finally{
	 		try {
				input.close();
			} catch (IOException e) {
				e.printStackTrace();
			}
	 		return flag;
	 	}
	}
	
	
	public static Customer returnCustomer(String name,String id){
		Customer customer = null;
		try{
			input=new ObjectInputStream(Files.newInputStream(Paths.get("D:\\JavaWebDesign\\GourmetCoffee\\Customer.txt")));
			try{
				while(true){
					customer=(Customer)input.readObject();
					if(customer.getCode().matches(id)&&customer.getName().matches(name)){
						break;
					}
				}
			}catch(ClassNotFoundException e){
				e.printStackTrace();
			}catch(EOFException e){
				
			}
		}catch(IOException e){
			e.printStackTrace();
		}
		return customer;
		
	}
	
	public static Coffee returnCoffee(String id){
		Coffee coffee=null;
		try{
			input=new ObjectInputStream(Files.newInputStream(Paths.get("D:\\JavaWebDesign\\GourmetCoffee\\Coffee.txt")));
			try{
				while(true){
					coffee=(Coffee)input.readObject();
					if(coffee.getCode().matches(id)){
						break;
					}
				}
			}catch(ClassNotFoundException e){
				e.printStackTrace();
			}catch(EOFException e){
				
			}
		}catch(IOException e){
			e.printStackTrace();
		}
		return coffee;
	}
	
	public static Accessory returnAccessory(String id){
		Accessory accessory=null;
		try{
			input=new ObjectInputStream(Files.newInputStream(Paths.get("D:\\JavaWebDesign\\GourmetCoffee\\Accessory.txt")));
			try{
				while(true){
					accessory=(Accessory)input.readObject();
					if(accessory.getCode().matches(id)){
						break;
					}
				}
			}catch(ClassNotFoundException e){
				e.printStackTrace();
			}catch(EOFException e){
				
			}
		}catch(IOException e){
			e.printStackTrace();
		}
		return accessory;
	}
	
	public static CoffeeBrewerMachine returnMachine(String id){
		CoffeeBrewerMachine machine=null;
		try{
			input=new ObjectInputStream(Files.newInputStream(Paths.get("D:\\JavaWebDesign\\GourmetCoffee\\Brewer Machine.txt")));
			try{
				while(true){
					machine=(CoffeeBrewerMachine)input.readObject();
					if(machine.getCode().matches(id)){
						break;
					}
				}
			}catch(ClassNotFoundException e){
				e.printStackTrace();
			}catch(EOFException e){
				
			}
		}catch(IOException e){
			e.printStackTrace();
		}
		return machine;
	}
	

}
