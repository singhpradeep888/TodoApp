<html>
<head>
    <title>Add Task</title>
</head>
<body>
<h1>Add New Task</h1>
<form action="tasks?action=add" method="post">
    <label for="title">Title:</label>
    <input type="text" name="title" id="title" required><br>
    <label for="description">Description:</label>
    <textarea name="description" id="description" required></textarea><br>
    <button type="submit">Add Task</button>
</form>
<a href="tasks">Back to TODO List</a>
</body>
</html>