<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<link href="https://stackpath.bootstrapcdn.com/bootswatch/4.3.1/litera/bootstrap.min.css" rel="stylesheet" integrity="sha384-D/7uAka7uwterkSxa2LwZR7RJqH2X6jfmhkJ0vFPGUtPyBMF2WMq9S+f9Ik5jJu1" crossorigin="anonymous">
<meta charset="ISO-8859-1">
<link rel="stylesheet" type="text/css" href="css/sample.css">

<title>Edit Note</title>
</head>
<body>
<h1>test</h1>
<a></a>

<form action="edit-note" method="post">
<h1 href=${User.id } value="${User.id }" name=${User.id }>${User.id }</h1>
<a href="edit-note?id=${User.id }">this</a>
<input href=${User.id } name="id" value="${User.id }">
<input name="date" value="${User.date }">
<textarea name="note" placeholder="field notes" style="width: 800px; height: 500px;">${User.note }</textarea>
<br>
<button type="submit" style="width: 800px;">Save</button>
</form>

</body>
</html>