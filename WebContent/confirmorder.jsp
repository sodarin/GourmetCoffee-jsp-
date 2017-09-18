<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@ page import="java.util.*,Product.*,Data.*" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>确认订单</title>
</head>
<body>
<%
    Object name=session.getAttribute("name");
    Object id=session.getAttribute("id");
    Customer customer=CoffeeStoreData.returnCustomer(name.toString(), id.toString());
    Coffee c1=CoffeeStoreData.returnCoffee("C001");
    Coffee c2=CoffeeStoreData.returnCoffee("C002");
    Coffee c3=CoffeeStoreData.returnCoffee("C003");
    Coffee c4=CoffeeStoreData.returnCoffee("C004");
    Accessory a1=CoffeeStoreData.returnAccessory("A001");
    Accessory a2=CoffeeStoreData.returnAccessory("A002");
    Accessory a3=CoffeeStoreData.returnAccessory("A003");
    Accessory a4=CoffeeStoreData.returnAccessory("A004");
    Accessory a5=CoffeeStoreData.returnAccessory("A005");
    CoffeeBrewerMachine b1=CoffeeStoreData.returnMachine("B001");
    CoffeeBrewerMachine b2=CoffeeStoreData.returnMachine("B002");
    CoffeeBrewerMachine b3=CoffeeStoreData.returnMachine("B003");
    CoffeeBrewerMachine b4=CoffeeStoreData.returnMachine("B004");
    CoffeeBrewerMachine b5=CoffeeStoreData.returnMachine("B005");
    Order order=new Order();
    ArrayList coffees=(ArrayList)session.getAttribute("coffees");
    ArrayList accessorys=(ArrayList)session.getAttribute("accessorys");
    ArrayList machines=(ArrayList)session.getAttribute("machines");
    if(coffees!=null){
    for(int i=0;i<coffees.size();i++){
    	String type=(String)coffees.get(i);
    	if(type.equals("C001")){
    		order.newCoffeeOrder(c1);
    	}else if(type.equals("C002")){
    		order.newCoffeeOrder(c2);
    	}else if(type.equals("C003")){
    		order.newCoffeeOrder(c3);
    	}else if(type.equals("C004")){
    		order.newCoffeeOrder(c4);
    	}
    }
 }
    if(accessorys!=null){
    	for(int i=0;i<accessorys.size();i++){
    		String type=(String)accessorys.get(i);
    		if(type.equals("A001")){
    			order.newAccessoryOrder(a1);
    		}else if(type.equals("A002")){
    			order.newAccessoryOrder(a2);
    		}else if(type.equals("A003")){
    			order.newAccessoryOrder(a3);
    		}else if(type.equals("A004")){
    			order.newAccessoryOrder(a4);
    		}else if(type.equals("A005")){
    			order.newAccessoryOrder(a5);
    		}
    	}
    }
    if(machines!=null){
    	for(int i=0;i<machines.size();i++){
    		String type=(String)machines.get(i);
    		if(type.equals("B001")){
    			order.newMachineOrder(b1);
    		}else if(type.equals("B002")){
    			order.newMachineOrder(b2);
    		}else if(type.equals("B003")){
    			order.newMachineOrder(b3);
    		}else if(type.equals("B004")){
    			order.newMachineOrder(b4);
    		}else if(type.equals("B005")){
    			order.newMachineOrder(b5);
    		}
    	}
    }
    customer.addOrder(order);

    CoffeeStoreData.writeSingleCustomer(customer);
    
%>
</body>
</html>
</html>