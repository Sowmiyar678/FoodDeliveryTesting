<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page isELIgnored="false" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
<title>Insert title here</title>
<style type="text/css">
body{
background-image: url("https://t3.ftcdn.net/jpg/03/55/60/70/360_F_355607062_zYMS8jaz4SfoykpWz5oViRVKL32IabTP.jpg");
background-repeat: no-repeat;
background-size: cover;
}
td, tr{
height: 40px;
padding: 5px;
border: 2px solid purple;	
border: 0;
}
input,select{
height: 40px;
width: 300px;
border-radius: 10px;
border: 0;
}

table{
border: 6px grey;
padding-top: 20px;
background-color:silver;
border-radius: 20px;
color:navy;

}
.btn{
background-color: grey;
color:black;
font-size: x-large;
border-radius: 15px;
}
h1{
color:green;
}
 
</style>
</head>
<body>
<br><br><br><br><center> 
<div id="id" style="width:70%">

<form action="deletefood" method="post" modelAttribute="bean">

<font size="5px" color="black">
<table border="4" align="center" class="Table">
<tr>
<td>Hotel ID</td>

<td><select type="text" required="required" name="HotelID" >
	<%
							ArrayList<Integer> list=(ArrayList<Integer>) request.getAttribute("key");
							for(Integer i:list){
								%>
								<option value="<%=i %>"><%=i %></option>
							<% }%>
								</select>
								</td>						
</tr>
<tr><td colspan="2" align="center"><input type="submit" value="Delete" class="btn" name="button"/></td></tr>
</div>
</table>

</font>

</form>

<% String msg=(String)request.getAttribute("msg");
 if(msg!=null){
	 out.print("<h1 align=center>"+msg+"</h1>");
 }
%>
</center>
</body>
</html>