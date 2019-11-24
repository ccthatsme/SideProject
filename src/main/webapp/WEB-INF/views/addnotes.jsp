<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<link href="https://stackpath.bootstrapcdn.com/bootswatch/4.3.1/litera/bootstrap.min.css" rel="stylesheet" integrity="sha384-D/7uAka7uwterkSxa2LwZR7RJqH2X6jfmhkJ0vFPGUtPyBMF2WMq9S+f9Ik5jJu1" crossorigin="anonymous">
<link rel="stylesheet" type="text/css" href="css/sample.css">
<title>Insert title here</title>
</head>
<body>

<h1 align="center">Field Notes</h1>


<form action="note-submission" method="post">
<input type="date" name="date" placeholder="date">
<br>
<table align="right">
  <tr>
    <th>Previous Notes(Click on link to view)</th>
    <th>EDIT</th>
    
  </tr>
   <c:forEach  var="User" items="${userList }" varStatus = "i">
  <tr>
   

    <td><a href="specific?id=${User.id }">${User.date}</a></td>
    <td><a href="edit?id=${User.id }">edit</a></td>
    
  </tr>
  </c:forEach>
</table>

<textarea name="note" placeholder="field notes" style="width: 800px; height: 500px;"></textarea>
<br>
<button type="submit" style="width: 800px;">Add note</button>
</form>


</body>
</html>