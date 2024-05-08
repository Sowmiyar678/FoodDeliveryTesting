<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page isELIgnored="false" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
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
height: 40px;
width: 300px;
border-radius: 5px;
border: 0;
}

table{
border: 6px grey;
padding-top: 20px;
background-color:silver;
border-radius: 15px;
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
  
<script type="text/javascript">
	function Validation() {
		var HotelID = document.getElementById("HotelID").value;
		var HotelName = document.getElementById("HotelName").value;
		var Address = document.getElementById("Address").value;
		
 
		if (HotelID == "") {
			alert("HotelID cannot be empty");
		} else if (HotelName == "") {
			alert("HotelName cannot be empty");
		} else if (Address == "") {
			alert("Address cannot be empty");
 
	}
	}
</script>
 

</head>
<body>
<form action="insertfood" method="post" modelAttribute="bean">
<table widht="80%" align="center" border="" >

<tr>
<td>Hotel ID</td><td><input type="text" name="HotelID"/></td></tr>
<tr><td>Hotel Name</td><td><input type="text" name="HotelName"/></td></tr>
<tr><td>Hotel Address</td><td><input type="text" name="Address"/></td></tr>
<tr><td>Hotel Phonenumber</td><td><input type="text" name="PhoneNo"/></td></tr>
<tr><td>Hotel Email</td><td><input type="text" name="Email"/></td></tr>
<tr><td>Hotel Rating</td><td><input type="text" name="Rating"/></td></tr>
<tr><td colspan="2" align="center"><input type="submit" onclick="Validation()" value="Insert" class="btn" name="button"/></td></tr>
 
</table>
</form>
 <br>
<%--  <% String msg=(String)request.getAttribute("msg");
 if(msg!=null && msg.equals("success")){
	 out.print("<h1 align=center>Record Inserted Successfully</h1>");
 }else if(msg !=null){
	 out.println("<h1 align=center>Insertion failure</h1>");
 }
%> --%>

 <% String msg=(String)request.getAttribute("msg");
 if(msg!=null){
	 out.print("<h1 align=center>"+msg+"</h1>");
 }
%>

</body>
</html>