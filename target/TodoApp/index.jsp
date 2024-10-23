<%@ page isELIgnored="false" %> <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
    <head>
        <title>TODO List</title>
        <link
            href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css"
            rel="stylesheet"
            integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH"
            crossorigin="anonymous"
        />
    </head>
    <body>
        <div class="d-flex flex-column h-100 w-100">
            <nav class="navbar navbar-expand-lg bg-body-tertiary bg-dark" data-bs-theme="dark">
                <div class="container-fluid">
                    <a class="navbar-brand" href="tasks">TODO App</a>
                    <button
                        class="navbar-toggler"
                        type="button"
                        data-bs-toggle="collapse"
                        data-bs-target="#navbarNav"
                        aria-controls="navbarNav"
                        aria-expanded="false"
                        aria-label="Toggle navigation"
                    >
                        <span class="navbar-toggler-icon"></span>
                    </button>
                    <div class="collapse navbar-collapse" id="navbarNav">
                        <ul class="navbar-nav">
                            <li class="nav-item">
                                <a class="nav-link active" aria-current="page" href="tasks">Home</a>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link" href="tasks?action=add">Add New</a>
                            </li>
                        </ul>
                    </div>
                </div>
            </nav>
            <c:if test="${empty tasks}">
                <div class="flex-grow-1 d-flex justify-content-center align-items-center">
                    <div class="d-flex flex-column align-items-center">
                        <p class="text-center fs-1">Let's get started by adding a task.</p>
                        <a href="tasks?action=add" class="btn btn-lg btn-primary">Get Started</a>
                    </div>
                </div>
            </c:if>
            <c:if test="${not empty tasks}">
                <div class="p-4">
                    <p class="fs-2">Your Task(s)</p>
                    <table class="table table-bordered rounded">
                        <thead class="bg-secondary">
                            <th class="text-bg-light">Title</th>
                            <th class="text-bg-light">Description</th>
                            <th class="text-bg-light">Action</th>
                        </thead>
                        <tbody>
                            <c:forEach var="task" items="${tasks}">
                                <tr>
                                    <td>${task.title}</td>
                                    <td>${task.description}</td>
                                    <td>
                                        <a href="tasks?action=details&id=${task.id}" class="text-decoration-none"
                                            >View Details</a
                                        >
                                    </td>
                                </tr>
                            </c:forEach>
                        </tbody>
                    </table>
                </div>
            </c:if>
        </div>
    </body>
</html>
