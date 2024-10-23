<%@ page isELIgnored="false" %> 
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
    <head>
        <title>Task Details</title>
    </head>
    <body>
        <h1>${task.title}</h1>
        <p>${task.description}</p>
        <a href="tasks?action=update&id=${task.id}">Edit</a>
        <a href="tasks?action=delete&id=${task.id}">Delete</a>
        <a href="tasks">Back to TODO List</a>
    </body>
</html>
