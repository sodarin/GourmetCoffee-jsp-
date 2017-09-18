<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@ page import="java.util.*,Product.*,Data.*" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>购物车</title>
</head>
<body>
<table width="450" cellspacing="0" cellpadding="0" border="1" rules="none" align="center">

<tbody>

   <tr height="50" bgcolor="#e4393c">

        <td align="center">序号</td>
        <td align="center">商品名称</td>
        <td align="center">商品描述</td>
        <td align="center">单价</td>       
        <td align="center">删除</td>

   </tr>
<%! int i=0; %>
<%
    double totalprice=0;
    ArrayList<String> coffees=(ArrayList)session.getAttribute("coffees");
    ArrayList<String> accessorys=(ArrayList)session.getAttribute("accessorys");
    ArrayList<String> machines=(ArrayList)session.getAttribute("machines");
    if((coffees==null||coffees.size()==0)&&(accessorys==null||accessorys.size()==0)&&(machines==null||machines.size()==0)){
    	%>	
    <tr height="100">
    <td colspan="5" align="center">没有商品显示</td>
    </tr>
<%
    }else{
    	int n=1;
    	if(coffees!=null){
    	for(int i=0;i<coffees.size();i++){    		
    		 String single=(String)coffees.get(i);
    		 %>
    		<tr height="50">
    		   <td align="center">
    		       <%= n %>
    		   </td>
    		   <td align="center">
    		       <%= single %>
    		   </td>
    		   <td align="center">
    		       <%= CoffeeStoreData.returnCoffee(single).getDescription() %>
    		   </td>
    		   <td align="center">
    		       <%= CoffeeStoreData.returnCoffee(single).getPrice() %>
    		       <% totalprice+=CoffeeStoreData.returnCoffee(single).getPrice(); %>
    		   </td>
    		    <td align="center">
    		       <a href="docar.jsp?action=delete&id=<%=n-1 %>">删除</a>
    		       <%
    		        session.setAttribute("coffees", coffees);
    		       %>
                </td>
             </tr>
             <% n++; }}
    	if(accessorys!=null){
    	for(int i=0;i<accessorys.size();i++){
    		String single=(String)accessorys.get(i);
    		%>
    		<tr height="50">
    		   <td align="center">
    		       <%= n %>
    		   </td>
    		   <td align="center">
    		       <%= single %>
    		   </td>
    		   <td align="center">
    		       <%= CoffeeStoreData.returnAccessory(single).getDescription() %>
    		   </td>
    		   <td align="center">
    		       <%= CoffeeStoreData.returnAccessory(single).getPrice() %>
    		       <% totalprice+=CoffeeStoreData.returnAccessory(single).getPrice(); %>
    		   </td>
    		    <td align="center">
    		       <a href="docar.jsp?action=delete&id=<%=n-1 %>">删除</a>
    		       <%
    		        session.setAttribute("accessorys", accessorys);
    		       %>
                </td>
             </tr>
    <% n++; }}
    	if(machines!=null){
    	for(int i=0;i<machines.size();i++){
    		String single=(String)machines.get(i);
    		%>
    		<tr height="50">
    		   <td align="center">
    		       <%= n %>
    		   </td>
    		   <td align="center">
    		       <%= single %>
    		   </td>
    		   <td align="center">
    		       <%= CoffeeStoreData.returnMachine(single).getDescription() %>
    		   </td>
    		   <td align="center">
    		       <%= CoffeeStoreData.returnMachine(single).getPrice() %>
    		       <% totalprice+=CoffeeStoreData.returnMachine(single).getPrice(); %>
    		   </td>
    		    <td align="center">
    		       <a href="docar.jsp?action=delete&id=<%=n-1 %>">删除</a>
    		       <%
    		        session.setAttribute("machines", machines);
    		       %>
                </td>
             </tr>
    <% n++; }}}%>
             <tr height="70">
             <td colspan="1" align="center">
             <a href="docar.jsp?action=clear">清空购物车</a>
             </td>
             <td colspan="3" align="center">
                  总价：<%=totalprice %>
             </td>
             <td colspan="1" align="center">
             <form>
             <a href="confirmorder.jsp">确认订单</a>
             </form>
             </td>
             </tr>


</tbody>

</table>
</body>
</html>