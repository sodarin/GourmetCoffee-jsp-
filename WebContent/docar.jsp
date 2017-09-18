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
<%
String action=request.getParameter("action");
ArrayList coffees=(ArrayList)session.getAttribute("coffees");
ArrayList accessorys=(ArrayList)session.getAttribute("accessorys");
ArrayList machines=(ArrayList)session.getAttribute("machines");
if(action.equals("clear")){
	coffees.clear();
	accessorys.clear();
	machines.clear();
	response.sendRedirect("showcar.jsp");
}else if(action.equals("delete")){
	int i=Integer.parseInt(request.getParameter("id"));
	if(i<coffees.size())
	    coffees.remove(i);
	else if(i>=coffees.size()&&i<coffees.size()+accessorys.size())
		accessorys.remove(i-coffees.size());
	else if(i>=coffees.size()+accessorys.size()&&i<coffees.size()+accessorys.size()+machines.size())
		machines.remove(i-coffees.size()-accessorys.size());
	response.sendRedirect("showcar.jsp");
}
%>
</body>
</html>