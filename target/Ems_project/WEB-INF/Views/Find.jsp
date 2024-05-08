<%@page import="com.fdms.bean.Food"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<style type="text/css">
body{
background-image: url("https://t3.ftcdn.net/jpg/03/55/60/70/360_F_355607062_zYMS8jaz4SfoykpWz5oViRVKL32IabTP.jpg");
 background-repeat:no-repeat;

 background-position: right;
background-size:1540px;
}
td, tr{
height: 40px;
padding: 5px;
border: 2px solid purple;	
border-radius: 10px;
border: 0;

}
input,select{
height: 40px;
width: 300px;
border-radius: 10px;
border: 0;
}
.button{
border: none;
background-color: green;
color: white;
font-weight: bold;
}
table{
border: 6px grey;
padding: 40px;
background-color:silver;
border-radius: 25px;
color:purple;
}
.otptbl{
background-color: white;
color: black;
} 
</style>
</head>
<body>

<table widht="80%" align="center" border="2">
<tr><td>Hotel ID</td><td>

<form action="findfood" method="post" modelAttribute="bean">
<select name="HotelID">
<option value="0" selected>Choose</option>
<%
ArrayList<Integer> list=(ArrayList<Integer>) request.getAttribute("key");
for(Integer i : list){
	%>
	<option value="<%=i%>"><%=i%></option>
	<%} %>
<tr><td colspan="2" align="center"><input type="submit" value="Search" name="button"></td></tr>

</select></td></tr>
</table>
</form>
<%Food fdm=(Food)request.getAttribute("bean");
if(fdm!=null){
%>
<table align="center" class="otptbl" border="2">
<tr><th>Hotel ID</th>
<th>Hotel Name</th>
<th>Hotel Address</th>
<th>Hotel PhoneNo</th>
<th>Hotel Email</th>
<th>Hotel Rating</th>
</tr>
<tr><td><%=fdm.getHotelID()%></td>
    <td><%=fdm.getHotelName()%></td>
    <td><%=fdm.getAddress()%></td>
     <td><%=fdm.getPhoneNo()%></td>
      <td><%=fdm.getEmail()%></td>
       <td><%=fdm.getRating()%></td>
    </tr>
<br>
<%}
else{
	String msg=(String)request.getAttribute("msg");
	if(msg!=null){
		out.print("<h1>"+msg+"</h1>");
	}
}
%>
</table>



</body>
</html>