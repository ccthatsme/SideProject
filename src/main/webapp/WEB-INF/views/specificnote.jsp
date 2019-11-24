<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<link href="https://stackpath.bootstrapcdn.com/bootswatch/4.3.1/litera/bootstrap.min.css" rel="stylesheet" integrity="sha384-D/7uAka7uwterkSxa2LwZR7RJqH2X6jfmhkJ0vFPGUtPyBMF2WMq9S+f9Ik5jJu1" crossorigin="anonymous">
<meta charset="ISO-8859-1">
<link rel="stylesheet" type="text/css" href="css/sample.css">

<title>View Note</title>
</head>
<body>
<h1 align="left">${User.date }</h1>

<table align="right">
  <tr>
    <th>Previous Notes(Click on link to view)</th>
    <th>Edit</th>
    
  </tr>
   <c:forEach  var="User" items="${userList }" varStatus = "i">
  <tr>
   

    <td><a href="specific?id=${User.id }">${User.date}</a></td>
    <td><a href="edit?id=${User.id }">edit</a></td>
    
    
  </tr>
  </c:forEach>
</table>

<table align="left" table" id="t01">
  <tr align="center">
    <th id="t01">Note</th>
  </tr>
  <tr>
    <td align="left" id="t01">${User.note }</td>
  </tr>
</table>
<a href="edit?id=${User.id }">Edit Note</a>



</body>
</html>