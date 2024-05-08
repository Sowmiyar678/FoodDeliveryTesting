<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<style>
body{
background-image: linear-gradient(to left, grey,silver,grey);

}
a{
text-decoration: none;
color:white;
}
 
th{
background-color:black;
height:40px;
font-weight: bold;
border-radius: 10px;
}
#a1:hover{
color:blue;
height:60px;
}
h1{
color:purple;
text-shadow: 2px 2px 5px pink;
border: 2px solid none;
background-color:transparent;
}
</style>
</head>
<body> 
<img alt="" id="img" width=50px height=40px src="https://www.codester.com/static/uploads/items/000/028/28925/icon.png">
<h1 align="center" >FOOD DELIVERY MANAGEMENT SYSTEM</h1>
<table width="80%" cellspacing="15" align="center">
<th><a href="insert" target="Operation" id=a1>Insert </a></th>
<th><a href="delete"  target="Operation">Delete</a>
<th><a href="update" target="Operation">Update</a>
<th><a href="find" target="Operation">Find</a>
<th><a href="findAll" target="Operation">FindAll</a>
 
 
 
</table>

</body>
</html>