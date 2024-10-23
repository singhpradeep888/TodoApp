<%@ page isELIgnored="false" %> 
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
    <title>Update Task</title>
</head>
<body>
<h1>Update Task</h1>
<form action="tasks?action=update" method="post">
    <input type="hidden" name="id" value="${task.id}">
    <label for="title">Title:</label>
    <input type="text" name="title" id="title" value="${task.title}" required><br>
    <label for="description">Description:</label>
    <textarea name="description" id="description" required>${task.description}</textarea><br>
    <button type="submit">Update Task</button>
</form>
<a href="tasks">Back to TODO List</a>
</body>
</html>