<%@ page isELIgnored="false" %> 
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
    <title>Delete Task</title>
</head>
<body>
<h1>Are you sure you want to delete "${task.title}"?</h1>
<form action="tasks?action=delete" method="post">
    <input type="hidden" name="id" value="${task.id}">
    <button type="submit">Yes, Delete</button>
</form>
<a href="tasks">Cancel</a>
</body>
</html>