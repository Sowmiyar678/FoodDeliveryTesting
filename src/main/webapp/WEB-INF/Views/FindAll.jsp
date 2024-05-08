<%@page import="com.fdms.bean.Food"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Find All</title>
<style type="text/css">
body{

background-image: url("https://t3.ftcdn.net/jpg/03/55/60/70/360_F_355607062_zYMS8jaz4SfoykpWz5oViRVKL32IabTP.jpg");
background-repeat: no-repeat;
background-size: cover;

margin-left: 400px;
margin-top: 20px;
}
table{
border: 2px solid;
text-align: center;
padding: 20px 20px;
}
tr{
margin: 30px; 
}
td{
padding:20px 0px 0px 20px;
}
</style>
</head>
<body>
<table border="2" align="right">
<tr><th>Hotel ID</th>
    <th>Hotel Name</th>
    <th>Hotel Address</th>
    <th>Hotel PhoneNo</th>
    <th>Hotel Email</th>
    <th>Hotel Rating</th>
    <th>Action</th></tr>
<% ArrayList<Food> list = (ArrayList<Food>)request.getAttribute("list");
	Food fdm1 = (Food)request.getAttribute("bean");
	for(Food fdm : list){
		if(fdm1 != null && fdm1.getHotelID()==fdm.getHotelID()){
			out.print("<form action=\"doEdit\" method=\"post\" modelAttribute=\"bean1\">");
			out.print("<tr>");
			out.print("<td><input type=\"text\" name=\"HotelID\" value=\""+fdm.getHotelID()+"\" readonly></td>");
			out.print("<td><input type=\"text\" name=\"HotelName\" value=\""+fdm.getHotelName()+"\" ></td>");
			out.print("<td><input type=\"text\" name=\"Address\" value=\""+fdm.getAddress()+"\" ></td>");
			out.print("<td><input type=\"text\" name=\"PhoneNo\" value=\""+fdm.getPhoneNo()+"\" ></td>");
			out.print("<td><input type=\"text\" name=\"Email\" value=\""+fdm.getEmail()+"\" ></td>");
			out.print("<td><input type=\"text\" name=\"Rating\" value=\""+fdm.getRating()+"\" ></td>");
			out.print("<td><input type=\"submit\" name=\"save\" value=\"save\"><a href=\"back\"><input type=\"button\" name=\"button\" value=\"back\"></a></td>");
			out.print("</tr></form>");
		}else{
			out.print("<tr>");
			out.print("<td>"+fdm.getHotelID()+"</td>");
			out.print("<td>"+fdm.getHotelName()+"</td>");
			out.print("<td>"+fdm.getAddress()+"</td>");
			out.print("<td>"+fdm.getPhoneNo()+"</td>");
			out.print("<td>"+fdm.getEmail()+"</td>");
			out.print("<td>"+fdm.getRating()+"</td>");
			out.print("<td><a href=\"action?HotelID="+fdm.getHotelID()+"\" ><input type=\"button\" name=\"edit\" value=\"edit\"></a><a href=\"deletenow?HotelID="+fdm.getHotelID()+"\"><input type=\"button\" name=\"button\" value=\"delete\"></a></td>");
			out.print("</tr>");
		}
		
	}

	out.print("<form action=\"doAdd\" method=\"post\" modelAttribute=\"bean1\">");
	out.print("<tr>");
	out.print("<td><input type=\"text\" name=\"HotelID\"></td>");
	out.print("<td><input type=\"text\" name=\"HotelName\"></td>");
	out.print("<td><input type=\"text\" name=\"Address\" ></td>");
	out.print("<td><input type=\"text\" name=\"PhoneNo\" ></td>");
	out.print("<td><input type=\"text\" name=\"Email\" ></td>");
	out.print("<td><input type=\"text\" name=\"Rating\" ></td>");
	out.print("<td><input type=\"submit\" name=\"button\" value=\"add\"></td>");
	out.print("</tr></form>");
%>
</table>
</body>
</html>