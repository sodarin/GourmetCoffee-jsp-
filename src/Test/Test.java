package Test;

import Data.*;
import Product.*;

public class Test {
	public static void main(String[] args){
		CoffeeStore cs=new CoffeeStore();
		
		Coffee c1=new Coffee("C001","Colombia,Whole.1lb",17.99,"Colombia","Medium","Rich and Hearty","Rich","Medium","Full",500);
		Coffee c2=new Coffee("C002","Colombia,Gound,1lb",18.75,"Colombia","Medium","Rich and Hearty","Rich","Medium","Full",483);
		Coffee c3=new Coffee("C003","Guatemala,Whole,1lb",17.99,"Guatemala","Medium","Rich and complex","Spicy","Medium to high","Medium to full",758);
		Coffee c4=new Coffee("C004","Guatemala,Gound,1lb",18.75,"Guatemala","Medium","Rich and complex","Spicy","Medium to high","Medium to full",600);
		Accessory a1=new Accessory("A001","Almond Flavored Syrup",9.00,700);
		Accessory a2=new Accessory("A002","Irish Creme Flavored Syrup",9.00,800);
		Accessory a3=new Accessory("A003","Gourmet Coffee Cookies",12.00,500);
		Accessory a4=new Accessory("A004","Gourmet Coffee Ceramic Mug",8.00,150);
		Accessory a5=new Accessory("A005","Gourmet Coffee 36 Cup Filters",45.00,180);
		CoffeeBrewerMachine b1=new CoffeeBrewerMachine("B001","Home Coffee Brewer",150.00,"Brewer 100","Pourover",6,50);
		CoffeeBrewerMachine b2=new CoffeeBrewerMachine("B002","Coffee Brewer,2 Warmers",200.00,"Brewer 200","Pourover",12,70);
		CoffeeBrewerMachine b3=new CoffeeBrewerMachine("B003","Coffee Brewer,3 Warmers",280.00,"Brewer 210","Pourover",12,85);
		CoffeeBrewerMachine b4=new CoffeeBrewerMachine("B004","Commercial Brewer,20 cups",380.00,"Quick Coffee 100","Automatic",20,150);
		CoffeeBrewerMachine b5=new CoffeeBrewerMachine("B005","Commercial Brewer,40 cups",480.00,"Quick Coffee 200","Automatic",40,285);
		Customer customera=new Customer("Tom","20524872");
		Customer customerb=new Customer("Mary","78489562");
		Customer customerc=new Customer("Jack","20154878");
		Customer customerd=new Customer("John","20155075");
		Customer customere=new Customer("Mike","20784565");
		cs.addCoffee(c1);cs.addCoffee(c2);cs.addCoffee(c3);cs.addCoffee(c4);
		cs.addAccessory(a1);cs.addAccessory(a2);cs.addAccessory(a3);cs.addAccessory(a4);cs.addAccessory(a5);
		cs.addCoffeeMachine(b1);cs.addCoffeeMachine(b2);cs.addCoffeeMachine(b3);cs.addCoffeeMachine(b4);cs.addCoffeeMachine(b5);
		cs.addNewCustomer(customera);
		cs.addNewCustomer(customerb);
		cs.addNewCustomer(customerc);
		CoffeeStoreData.writeCoffeeData(cs.getAllCoffee());
		CoffeeStoreData.writeAccessoryData(cs.getAllAccessory());
		CoffeeStoreData.writeMachineData(cs.getAllCoffee_machine());
		CoffeeStoreData.writeCustomerData(CoffeeStore.getAllCustomers());
		CoffeeStoreData.printCoffeeData();
		CoffeeStoreData.printAccessoryData();
		CoffeeStoreData.printMachineData();
		
		
		
		Order newOrder=new Order();		
		Order newOrderb=new Order();
		newOrder.newCoffeeOrder(c1);newOrder.newMachineOrder(b1);newOrder.newCoffeeOrder(c1);
		newOrderb.newAccessoryOrder(a1);newOrderb.newAccessoryOrder(a2);newOrderb.newAccessoryOrder(a1);newOrderb.newCoffeeOrder(c1);
		customera.addOrder(newOrder);
		customerb.addOrder(newOrderb);
		CoffeeStoreData.writeSingleCustomer(customerd);
		CoffeeStoreData.writeSingleCustomer(customere);
		CoffeeStore.updateCustomer(customera);CoffeeStore.updateCustomer(customerb);
		CoffeeStoreData.writeCustomerData(CoffeeStore.getAllCustomers());
		
		CoffeeStoreData.printCustomerData();
		
		
		System.out.println(CoffeeStoreData.isMatch("Jack", "20154878"));
		System.out.println(CoffeeStoreData.isExistCustomer(customerc));
		
		
		System.out.println("=================================");
		
		CoffeeStoreData.printCustomerData();

	}
	
	}

