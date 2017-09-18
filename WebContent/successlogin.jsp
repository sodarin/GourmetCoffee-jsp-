<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@ page import="Data.*,Product.*,java.util.*" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<style type="text/css">
#main{
     width:1320px;
     height:320px;
     MARGIN-RIGHT:auto;
     MARGIN-LEFT:auto;
     border-bottom: 1px black solid;
     
}
#multiple{
     width:620px;
     height:320px;
     float:left;  
     position:relative;
}
#reveal{
     border:silver 1px solid;
     top:150px;
     left:0;
     font-style:italic;
     font-size:20px;
     font-family:"Microsoft Yahei";
     position:absolute;
}
#logo{
     position:absolute;
     top:0;
     left:0;
}
#clock{
     position:absolute;
     top:200px;
     left:0;
     font-family:"Microsoft Yahei";
}
#picture{
     position:absolute;
     top:200px;
     left:200px;
     border:1px pink solid;
}
.operation:hover{
     color:white;
     background-color:#C60;
}
.operation{
     text-decoration:none;
     background-color:#e4393c;
     line-height:50px;
     display:block;
     height:102px;
     width:100px;
     margin-bottom:1px;
     text-indent:20px;
     color:white;
}
.order_operation{
     position:absolute;
     top:200px;
     left:300px;   
}
.shop_operation{
     position:absolute;
     top:200px;
     left:400px;
}
.delete_operation{
     position:absolute;
     top:200px;
     left:500px;
}
#image{
     overflow:hidden;
     float:right;
     height:320px;
     weight:700px;
     position:relative;
}
ul{
     list-style:none;
}
.topmenu{
     display:block;
     width:220px;
     height:900px;
     border:2px solid #e4393c;
     margin:0;
     padding:0;
     float:left;
}
.toptitle{
     height:40px;
     line-height:40px;
     text-align:left;
     font-size:11pt;
     font-weight:bold;
     color:white;
     background:#e4393c;
     padding-left:20px;
}
.topmenu li{
     height:30px;
     line-height:30px;
     font-size:11pt;
     list-style-type:none;
     text-align:left;
     padding-left:8px;
     z-index:3;
     background-image:url(http://img.mukewang.com/5411027300014f0200220030.jpg);
     background-repeat:no-repeat;
     background-position:right;
}
.topmenu li a{
     text-decoration:none;
     color:#313131;
}
.topmenu li a:hover{
     text-decoration:underline;
     font-weight:bold;
     color:#e4393c;
}
.topmenu li:hover{
     border:1px solid #DDD;
     border-right:0;
     box-shadow:0 0 8px #DDD;
     -moz-box-shadow:0 0 8px #DDD;
     -webkit-box-shadow:0 0 8px #DDD;
     background-image:none;
}
.submenu{
     display:none;
     width:300px;
     left:220px;
     position:absolute;
     top:320px;
     border:1px solid #DDD;
     z-index:4;
     background:white;
     box-shadow:0 0 8px #DDD;
     -moz-box-shadow:0 0 8px #DDD;
     -webkit-box-shadow:0 0 8px #DDD;
}
.leftdiv{
     float:left;
     width:200px;
     margin:5px;
}
.topmenu li:hover .submenu{
     display:block;
}
.topmenu li:hover span{
     background:white;
     display:inline-block;
     z-index:20;
     width:20px;
     height:30px;
     float:right;
     position:relative;
}
.leftdiv dl{
     display:block;
     border-bottom:1px solid #EEE;
     padding-bottom:6px;
     overflow:hidden;
}
.leftdiv dl dt{
     display:block;
     float:left;
     width:40px;
     text-align:right;
     height:200px;
     line-height:22px;
     padding-right:6px;
}
.leftdiv dl dt a{
     font-weight:bold;
     font-size:10pt;
}
#product{
     position:relative;
     left:220px;
     display:block;
}
#coffee{
     display:block;
}
#accessory{
     display:none;
}
#machine{
     display:none;
}
#C001 img{
     position:absolute;
     left:100px;
}
#C001 span{
     position:absolute;
     display:inline-block;
     top:200px;
     left:100px;
     border:1px #e4393c solid;
     text-align:center;
     height:50px;
     width:170px;
     line-height:50px;
}
#C001 input{
     position:absolute;
     top:200px;
     left:267px;
     display:inline-block;
     text-decoration:none;
     background-color:#e4393c;
     height:52px;
     width:135px;
     color:white;
     line-height:50px;
     text-align:center;
}
#C001 c:hover{
     text-decoration:none;
     cursor:hand;
}
#C001description{
     display:none;
     cursor:hand;
     text-align:center;
     color:#FFF;
     line-height:36px;    
     font-weight:bold;
}
#C001 c:hover d{
     width:300px;
     background:#000;
     display:block;
     position:absolute;
     top:0px;
     left:100px;
     color:#FFF;
     filter:alpha(opacity=60);
     -moz-opacity:0.6;
     opacity:0.6;
     align:center;
}
#C002 img{
     position:absolute;
     left:500px;
     top:0px;
}
#C002 span{
     position:absolute;
     display:inline-block;
     top:200px;
     left:500px;
     border:1px #e4393c solid;
     text-align:center;
     height:50px;
     width:170px;
     line-height:50px;
}
#C002 input{
     position:absolute;
     top:200px;
     left:667px;
     display:inline-block;
     text-decoration:none;
     background-color:#e4393c;
     height:52px;
     width:135px;
     color:white;
     line-height:50px;
     text-align:center;
}
#C002 c:hover{
     text-decoration:none;
     cursor:hand;
}
#C002description{
     display:none;
     cursor:hand;
     text-align:center;
     color:#FFF;
     line-height:36px;    
     font-weight:bold;
}
#C002 c:hover d{
     width:300px;
     background:#000;
     display:block;
     position:absolute;
     top:0px;
     left:500px;
     color:#FFF;
     filter:alpha(opacity=60);
     -moz-opacity:0.6;
     opacity:0.6;
     align:center;
}
#C003 img{
     position:absolute;
     left:100px;
     top:300px;
}
#C003 span{
     position:absolute;
     display:inline-block;
     top:500px;
     left:100px;
     border:1px #e4393c solid;
     text-align:center;
     height:50px;
     width:170px;
     line-height:50px;
}
#C003 input{
     position:absolute;
     top:500px;
     left:267px;
     display:inline-block;
     text-decoration:none;
     background-color:#e4393c;
     height:52px;
     width:135px;
     color:white;
     line-height:50px;
     text-align:center;
}
#C003 c:hover{
     text-decoration:none;
     cursor:hand;
}
#C003description{
     display:none;
     cursor:hand;
     text-align:center;
     color:#FFF;
     line-height:36px;    
     font-weight:bold;
}
#C003 c:hover d{
     width:300px;
     background:#000;
     display:block;
     position:absolute;
     top:300px;
     left:100px;
     color:#FFF;
     filter:alpha(opacity=60);
     -moz-opacity:0.6;
     opacity:0.6;
     align:center;
}
#C004 img{
     position:absolute;
     top:300px;
     left:500px;
}
#C004 span{
     position:absolute;
     display:inline-block;
     top:500px;
     left:500px;
     border:1px #e4393c solid;
     text-align:center;
     height:50px;
     width:170px;
     line-height:50px;
}
#C004 input{
     position:absolute;
     top:500px;
     left:667px;
     display:inline-block;
     text-decoration:none;
     background-color:#e4393c;
     height:52px;
     width:135px;
     color:white;
     line-height:50px;
     text-align:center;
}
#C004 c:hover{
     text-decoration:none;
     cursor:hand;
}
#C004description{
     display:none;
     cursor:hand;
     text-align:center;
     color:#FFF;
     line-height:36px;    
     font-weight:bold;
}
#C004 c:hover d{
     width:300px;
     background:#000;
     display:block;
     position:absolute;
     top:300px;
     left:500px;
     color:#FFF;
     filter:alpha(opacity=60);
     -moz-opacity:0.6;
     opacity:0.6;
     align:center;
}
.submit{
     position:absolute;
     top:800px;
     left:340px;
     width:300px;
     height:100px;
     background:#e4393c;
     color:white;
     border:1px #e4393c solid;
}
#A001 img{
     position:absolute;
     top:0px;
     left:100px;
}
#A001 span{
     position:absolute;
     display:inline-block;
     top:300px;
     left:100px;
     border:1px #e4393c solid;
     text-align:center;
     height:50px;
     width:120px;
     line-height:50px;
}
#A001 input{
     position:absolute;
     top:300px;
     left:217px;
     display:inline-block;
     text-decoration:none;
     background-color:#e4393c;
     height:52px;
     width:82px;
     color:white;
     line-height:50px;
     text-align:center;
}
#A001 c:hover{
     text-decoration:none;
     cursor:hand;
}
#A001description{
     display:none;
     cursor:hand;
     text-align:center;
     color:#FFF;
     line-height:36px;    
     font-weight:bold;
}
#A001 c:hover d{
     width:200px;
     height:100px;
     background:#000;
     display:block;
     position:absolute;
     top:100px;
     left:100px;
     color:#FFF;
     filter:alpha(opacity=60);
     -moz-opacity:0.6;
     opacity:0.6;
     align:center;
}
#A002 img{
     position:absolute;
     top:0px;
     left:400px;
}
#A002 span{
     position:absolute;
     display:inline-block;
     top:300px;
     left:400px;
     border:1px #e4393c solid;
     text-align:center;
     height:50px;
     width:120px;
     line-height:50px;
}
#A002 input{
     position:absolute;
     top:300px;
     left:517px;
     display:inline-block;
     text-decoration:none;
     background-color:#e4393c;
     height:52px;
     width:82px;
     color:white;
     line-height:50px;
     text-align:center;
}
#A002 c:hover{
     text-decoration:none;
     cursor:hand;
}
#A002description{
     display:none;
     cursor:hand;
     text-align:center;
     color:#FFF;
     line-height:36px;    
     font-weight:bold;
}
#A002 c:hover d{
     width:200px;
     height:100px;
     background:#000;
     display:block;
     position:absolute;
     top:100px;
     left:400px;
     color:#FFF;
     filter:alpha(opacity=60);
     -moz-opacity:0.6;
     opacity:0.6;
     align:center;
}
#A003 img{
     position:absolute;
     top:0px;
     left:700px;
}
#A003 span{
     position:absolute;
     display:inline-block;
     top:300px;
     left:700px;
     border:1px #e4393c solid;
     text-align:center;
     height:50px;
     width:120px;
     line-height:50px;
}
#A003 input{
     position:absolute;
     top:300px;
     left:817px;
     display:inline-block;
     text-decoration:none;
     background-color:#e4393c;
     height:52px;
     width:82px;
     color:white;
     line-height:50px;
     text-align:center;
}
#A003 c:hover{
     text-decoration:none;
     cursor:hand;
}
#A003description{
     display:none;
     cursor:hand;
     text-align:center;
     color:#FFF;
     line-height:36px;    
     font-weight:bold;
}
#A003 c:hover d{
     width:200px;
     height:100px;
     background:#000;
     display:block;
     position:absolute;
     top:100px;
     left:700px;
     color:#FFF;
     filter:alpha(opacity=60);
     -moz-opacity:0.6;
     opacity:0.6;
     align:center;
}
#A004 img{
     position:absolute;
     top:500px;
     left:100px;
}
#A004 span{
     position:absolute;
     display:inline-block;
     top:700px;
     left:100px;
     border:1px #e4393c solid;
     text-align:center;
     height:50px;
     width:120px;
     line-height:50px;
}
#A004 input{
     position:absolute;
     top:700px;
     left:217px;
     display:inline-block;
     text-decoration:none;
     background-color:#e4393c;
     height:52px;
     width:82px;
     color:white;
     line-height:50px;
     text-align:center;
}
#A004 c:hover{
     text-decoration:none;
     cursor:hand;
}
#A004description{
     display:none;
     cursor:hand;
     text-align:center;
     color:#FFF;
     line-height:36px;    
     font-weight:bold;
}
#A004 c:hover d{
     width:200px;
     height:100px;
     background:#000;
     display:block;
     position:absolute;
     top:600px;
     left:100px;
     color:#FFF;
     filter:alpha(opacity=60);
     -moz-opacity:0.6;
     opacity:0.6;
     align:center;
}
#A005 img{
     position:absolute;
     top:500px;
     left:400px;
}
#A005 span{
     position:absolute;
     display:inline-block;
     top:700px;
     left:400px;
     border:1px #e4393c solid;
     text-align:center;
     height:50px;
     width:120px;
     line-height:50px;
}
#A005 input{
     position:absolute;
     top:700px;
     left:517px;
     display:inline-block;
     text-decoration:none;
     background-color:#e4393c;
     height:52px;
     width:82px;
     color:white;
     line-height:50px;
     text-align:center;
}
#A005 c:hover{
     text-decoration:none;
     cursor:hand;
}
#A005description{
     display:none;
     cursor:hand;
     text-align:center;
     color:#FFF;
     line-height:36px;    
     font-weight:bold;
}
#A005 c:hover d{
     width:200px;
     height:100px;
     background:#000;
     display:block;
     position:absolute;
     top:600px;
     left:400px;
     color:#FFF;
     filter:alpha(opacity=60);
     -moz-opacity:0.6;
     opacity:0.6;
     align:center;
}
#B001 img{
     position:absolute;
     top:0px;
     left:100px;
}
#B001 span{
     position:absolute;
     display:inline-block;
     top:200px;
     left:100px;
     border:1px #e4393c solid;
     text-align:center;
     height:50px;
     width:120px;
     line-height:50px;
}
#B001 input{
     position:absolute;
     top:200px;
     left:217px;
     display:inline-block;
     text-decoration:none;
     background-color:#e4393c;
     height:52px;
     width:82px;
     color:white;
     line-height:50px;
     text-align:center;
}
#B001 c:hover{
     text-decoration:none;
     cursor:hand;
}
#B001description{
     display:none;
     cursor:hand;
     text-align:center;
     color:#FFF;
     line-height:36px;    
     font-weight:bold;
}
#B001 c:hover d{
     width:200px;
     height:200px;
     background:#000;
     display:block;
     position:absolute;
     top:0px;
     left:100px;
     color:#FFF;
     filter:alpha(opacity=60);
     -moz-opacity:0.6;
     opacity:0.6;
     align:center;
}
#B002 img{
     position:absolute;
     top:0px;
     left:400px;
}
#B002 span{
     position:absolute;
     display:inline-block;
     top:200px;
     left:400px;
     border:1px #e4393c solid;
     text-align:center;
     height:50px;
     width:120px;
     line-height:50px;
}
#B002 input{
     position:absolute;
     top:200px;
     left:517px;
     display:inline-block;
     text-decoration:none;
     background-color:#e4393c;
     height:52px;
     width:82px;
     color:white;
     line-height:50px;
     text-align:center;
}
#B002 c:hover{
     text-decoration:none;
     cursor:hand;
}
#B002description{
     display:none;
     cursor:hand;
     text-align:center;
     color:#FFF;
     line-height:36px;    
     font-weight:bold;
}
#B002 c:hover d{
     width:200px;
     height:200px;
     background:#000;
     display:block;
     position:absolute;
     top:0px;
     left:400px;
     color:#FFF;
     filter:alpha(opacity=60);
     -moz-opacity:0.6;
     opacity:0.6;
     align:center;
}
#B003 img{
     position:absolute;
     top:0px;
     left:700px;
}
#B003 span{
     position:absolute;
     display:inline-block;
     top:200px;
     left:700px;
     border:1px #e4393c solid;
     text-align:center;
     height:50px;
     width:120px;
     line-height:50px;
}
#B003 input{
     position:absolute;
     top:200px;
     left:817px;
     display:inline-block;
     text-decoration:none;
     background-color:#e4393c;
     height:52px;
     width:82px;
     color:white;
     line-height:50px;
     text-align:center;
}
#B003 c:hover{
     text-decoration:none;
     cursor:hand;
}
#B003description{
     display:none;
     cursor:hand;
     text-align:center;
     color:#FFF;
     line-height:36px;    
     font-weight:bold;
}
#B003 c:hover d{
     width:200px;
     height:200px;
     background:#000;
     display:block;
     position:absolute;
     top:0px;
     left:700px;
     color:#FFF;
     filter:alpha(opacity=60);
     -moz-opacity:0.6;
     opacity:0.6;
     align:center;
}
#B004 img{
     position:absolute;
     top:300px;
     left:100px;
}
#B004 span{
     position:absolute;
     display:inline-block;
     top:500px;
     left:100px;
     border:1px #e4393c solid;
     text-align:center;
     height:50px;
     width:120px;
     line-height:50px;
}
#B004 input{
     position:absolute;
     top:500px;
     left:217px;
     display:inline-block;
     text-decoration:none;
     background-color:#e4393c;
     height:52px;
     width:82px;
     color:white;
     line-height:50px;
     text-align:center;
}
#B004 c:hover{
     text-decoration:none;
     cursor:hand;
}
#B004description{
     display:none;
     cursor:hand;
     text-align:center;
     color:#FFF;
     line-height:36px;    
     font-weight:bold;
}
#B004 c:hover d{
     width:200px;
     height:200px;
     background:#000;
     display:block;
     position:absolute;
     top:300px;
     left:100px;
     color:#FFF;
     filter:alpha(opacity=60);
     -moz-opacity:0.6;
     opacity:0.6;
     align:center;
}
#B005 img{
     position:absolute;
     top:300px;
     left:400px;
}
#B005 span{
     position:absolute;
     display:inline-block;
     top:500px;
     left:400px;
     border:1px #e4393c solid;
     text-align:center;
     height:50px;
     width:120px;
     line-height:50px;
}
#B005 input{
     position:absolute;
     top:500px;
     left:517px;
     display:inline-block;
     text-decoration:none;
     background-color:#e4393c;
     height:52px;
     width:82px;
     color:white;
     line-height:50px;
     text-align:center;
}
#B005 c:hover{
     text-decoration:none;
     cursor:hand;
}
#B005description{
     display:none;
     cursor:hand;
     text-align:center;
     color:#FFF;
     line-height:36px;    
     font-weight:bold;
}
#B005 c:hover d{
     width:200px;
     height:200px;
     background:#000;
     display:block;
     position:absolute;
     top:300px;
     left:400px;
     color:#FFF;
     filter:alpha(opacity=60);
     -moz-opacity:0.6;
     opacity:0.6;
     align:center;
}
#order{
     display:none;
     position:absolute;
     left:225px;
}
.coffeeimg{
     position:relative;
}
.coffeedescription{
     position:relative;
     float:right;
     font-size:20px;
     font-family:"Microsoft Yahei";
     
}
.accessoryimg{
    position:relative;
}
.accessorydescription{
    position:relative;
    float:right;
    font-size:20px;
    font-family:"Microsoft Yahei";
}
.machineimg{
    position:relative;
}
.machinedescription{
    position:relative;
    float:right;
    font-size:20px;
    font-family:"Microsoft Yahei";
}
#cart{
    display:none;
}
*{
     margin:0px;
     padding:0px;
}

</style>
<title>Gourmet Coffee</title>
</head>
<body>

<%
     Object name=session.getAttribute("name"); 
     Object id=session.getAttribute("id");
     Object message = session.getAttribute("success");
     Customer customer=CoffeeStoreData.returnCustomer(name.toString(),id.toString());   
 %>
<div id="main">

<div id="multiple">
    <div id="logo" >
        <img src="D:\JavaWebDesign\GourmetCoffee\WebContent\loginphoto.jpg" class="logo" width="100" height="100">
    </div>
    
    <div id="reveal"></div>
    
    <div id="clock" onmouseover="warmtips()" onmouseout="disappear()">
        <span id="dspan"></span>
        <br>
        <span id="hspan"></span>:<span id="mspan"></span>:<span id="sspan"></span>
        <br><br><br>
        <label id="welcomefont"><%=customer.getName() %>,欢迎您光临本小店</label>
    </div>
    
    <div id="customerinfo">
        <img src="D:\JavaWebDesign\GourmetCoffee\WebContent\headimage.jpg" width="100" height="100" id="picture" title="欢迎您，<%=customer.getName()%>">
        

        <ul id="customeroperation">
            <li class="order_operation"><a href="#" class="operation" onclick="showOrder()">历史订单</a></li>
            <li class="shop_operation"><a href="showcar.jsp" target="_blank" class="operation">购物车</a></li>
            <li class="delete_operation"><a href="head.jsp" class="operation">注销登录</a></li>
        </ul>
    </div>
    
</div>

<div id="image">
    <ul id="con1">
         <li><img class="coffeephoto" src="D:\JavaWebDesign\GourmetCoffee\WebContent\photo1.jpg" width="700px" height="320px" title="Welcome to Gourmet Coffee"/></li>
         <li><img class="coffeephoto" src="D:\JavaWebDesign\GourmetCoffee\WebContent\photo2.jpg" width="700px" height="320px" title="Welcome to Gourmet Coffee"/></li>
    </ul>

    <ul id="con2"></ul>

</div>

</div>

<div id="scanfield">

   <ul class="topmenu">
        <div class="toptitle">
             全部商品分类
        </div>
        <li><a href="#" id="oCoffee" onclick="showCoffee()">Coffee</a><span></span>
             <div class="submenu">
                   <div class="leftdiv">
                         <dl>
                              <dt><a id="C001">C0001</a></dt>
                              <dt><a id="C002">C0002</a></dt>
                              <dt><a id="C003">C0003</a></dt>
                              <dt><a id="C004">C0004</a></dt>
                         </dl>
                   </div>
             </div></li>
        <li><a href="#" id="oMachine" onclick="showMachine()">Coffee Brewer Machine</a><span></span>
             <div class="submenu">
                   <div class="leftdiv">
                         <dl>
                              <dt><a id="B0001">B001</a></dt>
                              <dt><a id="B0002">B002</a></dt>
                              <dt><a id="B0003">B003</a></dt>
                              <dt><a id="B0004">B004</a></dt>
                         </dl>
                   </div>
             </div></li>
         <li><a href="#" id="oAccessory" onclick="showAccessory()">Accessory</a><span></span>
              <div class="submenu">
                    <div class="leftdiv">
                          <dl>
                               <dt><a id="A0001">A001</a></dt>
                               <dt><a id="A0002">A002</a></dt>
                               <dt><a id="A0003">A003</a></dt>
                               <dt><a id="A0004">A004</a></dt>
                          </dl>
                    </div>
              </div>
       
   </ul>
   <div id="product">
   <form method="post" action="sendcar.jsp" name="myform">
   <div id="coffee">
     <div id="C001">
        <%
             Coffee coffee=CoffeeStoreData.returnCoffee("C001");
        %>
        <c><img src="D:\JavaWebDesign\GourmetCoffee\WebContent\C001.jpg" width="300" height="200"><d id="C001description">Origin:<%=coffee.getOrigin() %>,
        <%=coffee.getDescription() %>,<br>Acidity:<%=coffee.getAcidity() %>,<br>Roast:<%=coffee.getRoast() %>,Flavor:<%=coffee.getFlavor() %>,
        <br>Aroma:<%=coffee.getAroma() %>,Body:<%=coffee.getBody() %></d></c>
        <span><%=coffee.getCode() %>&nbsp;&nbsp;&nbsp;<%=coffee.getPrice() %>元</span>
        <input type="checkbox" value="C001" name="coffee">
      </div>
      
      <div id="C002">
        <%
             Coffee coffee2=CoffeeStoreData.returnCoffee("C002");
        %>
        <c><img src="D:\JavaWebDesign\GourmetCoffee\WebContent\C002.jpg" width="300" height="200"><d id="C002description">Origin:<%=coffee2.getOrigin() %>,
        <%=coffee2.getDescription() %>,<br>Acidity:<%=coffee2.getAcidity() %>,<br>Roast:<%=coffee2.getRoast() %>,Flavor:<%=coffee2.getFlavor() %>,
        <br>Aroma:<%=coffee2.getAroma() %>,Body:<%=coffee2.getBody() %></d></c>
        <span><%=coffee2.getCode() %>&nbsp;&nbsp;&nbsp;<%=coffee2.getPrice() %>元</span>
        <input type="checkbox" value="C002" name="coffee">
      </div>
      
      <div id="C003">
        <%
             Coffee coffee3=CoffeeStoreData.returnCoffee("C003");
        %>
        <c><img src="D:\JavaWebDesign\GourmetCoffee\WebContent\C003.jpg" width="300" height="200"><d id="C003description">Origin:<%=coffee3.getOrigin() %>,
        <%=coffee3.getDescription() %>,<br>Acidity:<%=coffee3.getAcidity() %>,<br>Roast:<%=coffee3.getRoast() %>,Flavor:<%=coffee3.getFlavor() %>,
        <br>Aroma:<%=coffee3.getAroma() %>,Body:<%=coffee3.getBody() %></d></c>
        <span><%=coffee3.getCode() %>&nbsp;&nbsp;&nbsp;<%=coffee3.getPrice() %>元</span>
        <input type="checkbox" value="C003" name="coffee">
      </div>
      
      <div id="C004">
        <%
             Coffee coffee4=CoffeeStoreData.returnCoffee("C004");
        %>
        <c><img src="D:\JavaWebDesign\GourmetCoffee\WebContent\C004.jpg" width="300" height="200"><d id="C004description">Origin:<%=coffee4.getOrigin() %>,
        <%=coffee4.getDescription() %>,<br>Acidity:<%=coffee4.getAcidity() %>,<br>Roast:<%=coffee4.getRoast() %>,Flavor:<%=coffee4.getFlavor() %>,
        <br>Aroma:<%=coffee4.getAroma() %>,Body:<%=coffee4.getBody() %></d></c>
        <span><%=coffee4.getCode() %>&nbsp;&nbsp;&nbsp;<%=coffee4.getPrice() %>元</span>
        <input type="checkbox" value="C004" name="coffee">
      </div> 
      <input type="submit" value="加入购物车" name="submit" class="submit">  
   </div>
   
   <div id="accessory">
       <div id="A001">
          <%
               Accessory accessory1=CoffeeStoreData.returnAccessory("A001");
           %>
           <c><img src="D:\JavaWebDesign\GourmetCoffee\WebContent\A001.jpg" width="200" height="300">
           <d id="A001description"><%=accessory1.getDescription() %></d></c>
           <span><%=accessory1.getCode() %>&nbsp;&nbsp;&nbsp;<%=accessory1.getPrice() %>元</span>
           <input type="checkbox" value="A001" name="accessory">
       </div>
       
       <div id="A002">
          <%
              Accessory accessory2=CoffeeStoreData.returnAccessory("A002");
          %>
          <c><img src="D:\JavaWebDesign\GourmetCoffee\WebContent\A002.jpg" width="200" height="300">
          <d id="A002description"><%=accessory2.getDescription() %></d></c>
          <span><%=accessory2.getCode() %>&nbsp;&nbsp;&nbsp;<%=accessory2.getPrice() %>元</span>
          <input type="checkbox" value="A002" name="accessory">
       </div>
       
       <div id="A003">
          <%
             Accessory accessory3=CoffeeStoreData.returnAccessory("A003");
          %>
          <c><img src="D:\JavaWebDesign\GourmetCoffee\WebContent\A003.jpg" width="200" height="300">
          <d id="A003description"><%=accessory3.getDescription() %></d></c>
          <span><%=accessory3.getCode() %>&nbsp;&nbsp;&nbsp;<%=accessory3.getPrice() %>元</span>
          <input type="checkbox" value="A003" name="accessory">
       </div>
       
       <div id="A004">
          <%
             Accessory accessory4=CoffeeStoreData.returnAccessory("A004");
          %>
          <c><img src="D:\JavaWebDesign\GourmetCoffee\WebContent\A004.jpg" width="200" height="200">
          <d id="A004description"><%=accessory4.getDescription() %></d></c>
          <span><%=accessory4.getCode() %>&nbsp;&nbsp;&nbsp;<%=accessory4.getPrice() %>元</span>
          <input type="checkbox" value="A004" name="accessory">
       </div>
       
       <div id="A005">
          <%
             Accessory accessory5=CoffeeStoreData.returnAccessory("A005");
          %>
          <c><img src="D:\JavaWebDesign\GourmetCoffee\WebContent\A005.jpg" width="200" height="200">
          <d id="A005description"><%=accessory5.getDescription() %></d></c>
          <span><%=accessory5.getCode() %>&nbsp;&nbsp;&nbsp;<%=accessory5.getPrice() %>元</span>
          <input type="checkbox" value="A005" name="accessory">
       </div>
       <input type="submit" value="加入购物车" name="submit" class="submit">
   
   </div>
   
   <div id="machine">
   
      <div id="B001">
         <%
            CoffeeBrewerMachine machine1=CoffeeStoreData.returnMachine("B001");
         %>
         <c><img src="D:\JavaWebDesign\GourmetCoffee\WebContent\B001.jpg" width="200" height="200">
         <d id="B001description"><%=machine1.getDescription() %>,<br>Type:<%=machine1.getType() %>
         ,<br>Water Supply:<%=machine1.getWater_supply() %>,<br>Number of Cups:<%=machine1.getCapacity() %> cups</d></c>
         <span><%=machine1.getCode() %>&nbsp;&nbsp;&nbsp;<%=machine1.getPrice() %>元</span>
         <input type="checkbox" value="B001" name="machine">
      </div>
      
      <div id="B002">
         <%
            CoffeeBrewerMachine machine2=CoffeeStoreData.returnMachine("B002");
         %>
         <c><img src="D:\JavaWebDesign\GourmetCoffee\WebContent\B002.jpg" width="200" height="200">
         <d id="B002description"><%=machine2.getDescription() %>,<br>Type:<%=machine2.getType() %>
         ,<br>Water Supply:<%=machine2.getWater_supply() %>,<br>Number of Cups:<%=machine2.getCapacity() %> cups</d></c>
         <span><%=machine2.getCode() %>&nbsp;&nbsp;&nbsp;<%=machine2.getPrice() %>元</span>
         <input type="checkbox" value="B002" name="machine">
      </div>
      
      <div id="B003">
         <%
            CoffeeBrewerMachine machine3=CoffeeStoreData.returnMachine("B003");
         %>
         <c><img src="D:\JavaWebDesign\GourmetCoffee\WebContent\B003.jpg" width="200" height="200">
         <d id="B003description"><%=machine3.getDescription() %>,<br>Type:<%=machine3.getType() %>
         ,<br>Water Supply:<%=machine3.getWater_supply() %>,<br>Number of Cups:<%=machine3.getCapacity() %> cups</d></c>
         <span><%=machine3.getCode() %>&nbsp;&nbsp;&nbsp;<%=machine3.getPrice() %>元</span>
         <input type="checkbox" value="B003" name="machine">
      </div>
      
      <div id="B004">
         <%
            CoffeeBrewerMachine machine4=CoffeeStoreData.returnMachine("B004");
         %>
         <c><img src="D:\JavaWebDesign\GourmetCoffee\WebContent\B004.jpg" width="200" height="200">
         <d id="B004description"><%=machine4.getDescription() %>,<br>Type:<%=machine4.getType() %>
         ,<br>Water Supply:<%=machine4.getWater_supply() %>,<br>Number of Cups:<%=machine4.getCapacity() %> cups</d></c>
         <span><%=machine4.getCode() %>&nbsp;&nbsp;&nbsp;<%=machine4.getPrice() %>元</span>
         <input type="checkbox" value="B004" name="machine">
      </div>
      
      <div id="B005">
         <%
            CoffeeBrewerMachine machine5=CoffeeStoreData.returnMachine("B005");
         %>
         <c><img src="D:\JavaWebDesign\GourmetCoffee\WebContent\B005.jpg" width="200" height="200">
         <d id="B005description"><%=machine5.getDescription() %>,<br>Type:<%=machine5.getType() %>
         ,<br>Water Supply:<%=machine5.getWater_supply() %>,<br>Number of Cups:<%=machine5.getCapacity() %> cups</d></c>
         <span><%=machine5.getCode() %>&nbsp;&nbsp;&nbsp;<%=machine5.getPrice() %>元</span>
         <input type="checkbox" value="B005" name="machine">
      </div>
      <input type="submit" value="加入购物车" name="submit" class="submit">
   
   </div>
   </form>
   </div>
   
   
   <div id="order" >
          <%
              Iterator<Order> it=customer.getOrders().iterator();
              while(it.hasNext()){
            	  Order orders=it.next();
            	  for(Map.Entry<Coffee,Integer>entry:orders.getOrder_coffee().entrySet()){
          %>
          <div>
          <img class="coffeeimg" src="D:\JavaWebDesign\GourmetCoffee\WebContent\<%=entry.getKey().getCode() %>.jpg" width="300" height="200">
          <span class="coffeedescription"><%=entry.getKey().getDescription() %><br>
              单价:<%=entry.getKey().getPrice() %>元<br>
              购买数量:<%=entry.getValue() %>件</span>
          </div><br>
          <%} %>
          <%
                 for(Map.Entry<CoffeeBrewerMachine,Integer>entry:orders.getOrder_machine().entrySet()){
          %>
          <div>
          <img class="machineimg" src="D:\JavaWebDesign\GourmetCoffee\WebContent\<%=entry.getKey().getCode() %>.jpg" width="300" height="300">
          <span class="machinedescription"><%=entry.getKey().getDescription() %><br>
              单价:<%=entry.getKey().getPrice() %>元<br>
              购买数量:<%=entry.getValue() %>件</span>
          </div><br>
          <%} %>
          <%
                 for(Map.Entry<Accessory,Integer>entry:orders.getOrder_accessory().entrySet()){
          %>
          <div>
          <img class="accessoryimg" src="D:\JavaWebDesign\GourmetCoffee\WebContent\<%=entry.getKey().getCode() %>.jpg" width="200" height="300">
          <span class="accessorydescription"><%=entry.getKey().getDescription() %><br>
              单价:<%=entry.getKey().getPrice() %>元<br>
              购买数量:<%=entry.getValue() %>件</span>
          </div><br>
          
          <%} } %>
          
   </div>
   
  



<script>
//roll
var area=document.getElementById('image');
var con1=document.getElementById('con1');
var con2=document.getElementById('con2');
var speed=50;
area.scrollTop=0;
con2.innerHTML=con1.innerHTML;
function scrollUp(){
	if(area.scrollTop>=con1.scrollHeight){
		area.scrollTop=0;
	}else{
		area.scrollTop++;
	}
}
var myScroll=setInterval("scrollUp()",speed);
area.onmouseover=function(){
	clearInterval(myScroll);
}
area.onmouseout=function(){
	myScroll=setInterval("scrollUp()",speed);
}

//clock
window.onload=function(){
	showTime();
}
function checkTime(i){  //补位处理
    if(i<10){
        i="0"+i;
    }  
    return i;
}
function showTime(){
    var now=new Date();
    var year=now.getFullYear();
    var month=now.getMonth()+1;
    var day=now.getDate();
    var h=now.getHours();
    var m=now.getMinutes();
    var s=now.getSeconds();
    m=checkTime(m)
    s=checkTime(s)
    var d=now.getDay();
    var weekday=new Array(7)
    weekday[0]="星期日"
    weekday[1]="星期一"
    weekday[2]="星期二"
    weekday[3]="星期三"
    weekday[4]="星期四"
    weekday[5]="星期五"
    weekday[6]="星期六"

    document.getElementById("dspan").innerHTML=year+"年"+month+"月"+day+"日 "+weekday[d];
    document.getElementById("hspan").innerHTML=h;
    document.getElementById("mspan").innerHTML=m;
    document.getElementById("sspan").innerHTML=s;
    t=setTimeout('showTime()',500)
  }

//warm tips
function warmtips(){
	var htime=document.getElementById("hspan").innerHTML;
	if(htime>6&&htime<=9){
		document.getElementById("reveal").innerHTML="一天的清晨Gourmet Coffee给你无穷的动力";
	}else if(htime>9&&htime<12){
		document.getElementById("reveal").innerHTML="一天的中午Gourmet Coffee让你如沐初阳";
	}else if(htime>=12&&htime<18){
		document.getElementById("reveal").innerHTML="一天的下午Gourmet Coffee为你续航";
	}else if(htime>=18&&htime<24){
		document.getElementById("reveal").innerHTML="一天的晚上Gourmet Coffee让你保持精神";
	}else if(htime>=0&&htime<=6){
		document.getElementById("reveal").innerHTML="深夜了，Gourmet Coffee陪伴你度过漫长的凌晨";
	}
}

function disappear(){
	document.getElementById("reveal").innerHTML="";
}

//show and hide
 function showCoffee(){
	var coffee=document.getElementById("coffee");
	var accessory=document.getElementById("accessory");
	var machine=document.getElementById("machine");
	var order=document.getElementById("order");
	var product=document.getElementById("product");
	product.style.display="block";
	order.style.display="none";
	coffee.style.display="block";
	accessory.style.display="none";
	machine.style.display="none";
}
function showAccessory(){
	var coffee=document.getElementById("coffee");
	var accessory=document.getElementById("accessory");
	var machine=document.getElementById("machine");
	var order=document.getElementById("order");
	var product=document.getElementById("product");
	product.style.display="block";
	order.style.display="none";
	coffee.style.display="none";
	accessory.style.display="block";
	machine.style.display="none";
}
function showMachine(){
	var order=document.getElementById("order");
	var product=document.getElementById("product");
	var coffee=document.getElementById("coffee");
	var accessory=document.getElementById("accessory");
	var machine=document.getElementById("machine");
	product.style.display="block";
	order.style.display="none";
	coffee.style.display="none";
	accessory.style.display="none";
	machine.style.display="block";
}
function showOrder(){
	var order=document.getElementById("order");
	var product=document.getElementById("product");
	order.style.display="block";
	product.style.display="none";
}

function purchase(self){
	alert("购买成功！");
	
}
</script>


</body>
</html>