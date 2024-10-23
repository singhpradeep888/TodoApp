<html>
    <head>
        <title>Add Task</title>
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
                    <a class="navbar-brand" href="#">TODO App</a>
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
                                <a class="nav-link" aria-current="page" href="tasks">Home</a>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link active" href="#">Add New</a>
                            </li>
                        </ul>
                    </div>
                </div>
            </nav>
            <div class="flex-grow-1 d-flex justify-content-center align-items-center">
                <div class="border rounded p-4 w-25">
                    <h1 class="title-1 fw-semibold">Add Task</h1>
                    <p class="text-muted border-bottom pb-4">Let's add a new goal to the life.</p>
                    <form action="tasks?action=add" method="post" class="d-flex flex-column gap-3 mb-0">
                        <div>
                            <label for="title">Title</label>
                            <input
                                type="text"
                                name="title"
                                id="title"
                                class="form-control"
                                required
                                aria-required="true"
                            />
                        </div>
                        <div>
                            <label for="description">Description</label>
                            <textarea
                                type="text"
                                name="description"
                                id="description"
                                class="form-control"
                                required
                                aria-required="true"
                            ></textarea>
                        </div>
                        <button type="submit" class="btn btn-primary">Add Task</button>
                        <a href="tasks" class="text-center text-decoration-none">Back to TODO List</a>
                    </form>
                </div>
            </div>
        </div>
        <script
            src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"
            integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz"
            crossorigin="anonymous"
        ></script>
    </body>
</html>
