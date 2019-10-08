<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<link href="https://stackpath.bootstrapcdn.com/bootswatch/4.3.1/litera/bootstrap.min.css" rel="stylesheet" integrity="sha384-D/7uAka7uwterkSxa2LwZR7RJqH2X6jfmhkJ0vFPGUtPyBMF2WMq9S+f9Ik5jJu1" crossorigin="anonymous">
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

<h1 align="center">Notes</h1>
<table container="table" align="center">
  <tr>
    <th>Date</th>
    <th>Note</th>
  </tr>
  <tr>
    <td>Row 1: Col 1</td>
    <td>Row 1: Col 2</td>
  </tr>
  
</table>

<form action="note-submission" method="post">
<input type="datetime-local" name="date" placeholder="date">
<input name="note" placeholder="field notes"">
<button type="submit">Add note</button>
</form>


</body>
</html>