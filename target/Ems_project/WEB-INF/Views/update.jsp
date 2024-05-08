<%@page import="com.fdms.bean.Food"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Update page</title>
<style type="text/css">
body{
background-image: url("https://t3.ftcdn.net/jpg/03/55/60/70/360_F_355607062_zYMS8jaz4SfoykpWz5oViRVKL32IabTP.jpg");
background-repeat: no-repeat;
background-size: cover;
}
td, tr{
border: 2px solid purple;	
border-radius: 10px;
font-weight:bold;
border: 0;

}
input{
height: 30px;
width: 300px;
border-radius: 5px;
border: 0;
}

table{
border: 6px grey;
background-color:silver;
border-radius: 5px;
color:navy;

}
.btn{
background-color: grey;
color:black;
font-size: x-large;

}
h1{
color:green;
}
 

</style>
</head>
<body>
<table  widht="80%" align="center" border="">
<tr><td><h2>Select Hotel ID</h2> </td><td>
<form action="Fetch" method="post" modelAttribute="bean">
<select name="HotelID" class="select">
<% ArrayList<Integer> list = (ArrayList<Integer>)request.getAttribute("key");
for(Integer i : list){
	 %>
	 <option value="<%=i%>"><%=i%></option>
	 <%}%>
</select><input type="submit" value="Fetch" name="button"/>
</form></td></tr>
<form action="updatefood" method="post" modelAttribute="bean">
<% Food fdm = (Food)request.getAttribute("bean");
if(fdm != null){
%>
<tr><td>Enter Hotel ID </td><td><input type="text" name="HotelID" value="<%=fdm.getHotelID() %>"  readonly/></td></tr>	
<tr><td>Enter Hotel Name </td><td><input type="text" name="HotelName" value="<%=fdm.getHotelName() %>" /></td></tr>
<tr><td>Enter Hotel Address </td><td><input type="text" name="Address" value="<%=fdm.getAddress() %>" /></td></tr>
<tr><td>Enter Hotel phonenumber </td><td><input type="text" name="PhoneNo" value="<%=fdm.getPhoneNo() %>" /></td></tr>
<tr><td>Enter Hotel Email</td><td><input type="text" name="Email" value="<%=fdm.getEmail() %>" /></td></tr>
<tr><td>Enter Hotel Rating </td><td><input type="text" name="Rating" value="<%=fdm.getRating() %>" /></td></tr>
<tr><td colspan="2" align"center"><input type="submit" class="button" value="Update" name="button" /></td></tr>
<%}else{ %>
<tr><td>Enter Hotel Name</td><td><input type="text" name="HotelName" /></td></tr>
<tr><td>Enter Hotel Address </td><td><input type="text" name="Address" /></td></tr>
<tr><td>Enter Hotel email </td><td><input type="text" name="PhoneNo" /></td></tr>
<tr><td>Enter Hotel phonenumber </td><td><input type="text" name="Email" /></td></tr>
<tr><td>Enter Hotel Rating</td><td><input type="text" name="Rating" /></td></tr>

<tr><td colspan="2" align="center"><input type="submit" class="btn" value="Update" name="button" /></td></tr>
<%} %>
</form>
</table>
<% String msg = (String)request.getAttribute("msg");
if(msg != null ){
	out.print("<h1 align=center>"+msg+"</h1>");
}
%>
</body>
</html>