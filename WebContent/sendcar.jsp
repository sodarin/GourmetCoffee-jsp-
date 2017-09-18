<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
    <%@ page import="java.util.*" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>购物车</title>
</head>
<body>

<% String coffees[]=request.getParameterValues("coffee");
   String accessorys[]=request.getParameterValues("accessory");
   String machines[]=request.getParameterValues("machine");
   %>
<%
   if(coffees!=null){
	   ArrayList buycoffees=new ArrayList();
	   for(int i=0;i<coffees.length;i++){
		   buycoffees.add(coffees[i]);
	   }
	   session.setAttribute("coffees", buycoffees);
	   response.sendRedirect("successlogin.jsp");
   }
   
   if(accessorys!=null){
	   ArrayList buyaccessorys=new ArrayList();
	   for(int i=0;i<accessorys.length;i++){
		   buyaccessorys.add(accessorys[i]);
	   }
	   session.setAttribute("accessorys", buyaccessorys);
	   response.sendRedirect("successlogin.jsp");
   }
   
   if(machines!=null){
	   ArrayList buymachines=new ArrayList();
	   for(int i=0;i<machines.length;i++){
		   buymachines.add(machines[i]);
	   }
	   session.setAttribute("machines", buymachines);
	   response.sendRedirect("successlogin.jsp");
   }
%>
<div align="center"><a href="successlogin.jsp">请选择商品</a></div>

</body>
</html>