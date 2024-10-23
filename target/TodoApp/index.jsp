<%@ page isELIgnored="false" %> 
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
    <head>
        <title>TODO List</title>
    </head>
    <body>
        <h1>TODO List</h1>
        <a href="tasks?action=add">Add New Task</a>
        <ul>
            <c:forEach var="task" items="${tasks}">
                <li>${task.title} - <a href="tasks?action=details&id=${task.id}">View Details</a></li>
            </c:forEach>
        </ul>
    </body>
</html>
