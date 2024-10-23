package com.devops.servlets;

import com.devops.models.Task;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

@WebServlet("/tasks")
public class TaskServlet extends HttpServlet {
    private List<Task> tasks = new ArrayList<>();
    private int taskIdCounter = 1;

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String action = req.getParameter("action");

        if (action == null || action.isEmpty()) {
            action = "list";
        }

        switch (action) {
            case "add":
                showAddTaskForm(req, resp);
                break;
            case "update":
                showUpdateTaskForm(req, resp);
                break;
            case "delete":
                showDeleteTaskConfirmation(req, resp);
                break;
            case "details":
                showTaskDetails(req, resp);
                break;
            default:
                listTasks(req, resp);
                break;
        }
    }

    private void listTasks(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        req.setAttribute("tasks", tasks);
        req.getRequestDispatcher("/index.jsp").forward(req, resp);
    }

    private void showAddTaskForm(HttpServletRequest req, HttpServletResponse resp)
            throws ServletException, IOException {
        req.getRequestDispatcher("/addTask.jsp").forward(req, resp);
    }

    private void showUpdateTaskForm(HttpServletRequest req, HttpServletResponse resp)
            throws ServletException, IOException {
        int id = Integer.parseInt(req.getParameter("id"));
        Task task = getTaskById(id);
        req.setAttribute("task", task);
        req.getRequestDispatcher("/updateTask.jsp").forward(req, resp);
    }

    private void showDeleteTaskConfirmation(HttpServletRequest req, HttpServletResponse resp)
            throws ServletException, IOException {
        int id = Integer.parseInt(req.getParameter("id"));
        Task task = getTaskById(id);
        req.setAttribute("task", task);
        req.getRequestDispatcher("/deleteTask.jsp").forward(req, resp);
    }

    private void showTaskDetails(HttpServletRequest req, HttpServletResponse resp)
            throws ServletException, IOException {
        int id = Integer.parseInt(req.getParameter("id"));
        Task task = getTaskById(id);
        req.setAttribute("task", task);
        req.getRequestDispatcher("/taskDetails.jsp").forward(req, resp);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String action = req.getParameter("action");

        if ("add".equals(action)) {
            addTask(req, resp);
        } else if ("update".equals(action)) {
            updateTask(req, resp);
        } else if ("delete".equals(action)) {
            deleteTask(req, resp);
        }
    }

    private void addTask(HttpServletRequest req, HttpServletResponse resp) throws IOException {
        String title = req.getParameter("title");
        String description = req.getParameter("description");
        tasks.add(new Task(taskIdCounter++, title, description, false));
        resp.sendRedirect("tasks");
    }

    private void updateTask(HttpServletRequest req, HttpServletResponse resp) throws IOException {
        int id = Integer.parseInt(req.getParameter("id"));
        Task task = getTaskById(id);
        task.setTitle(req.getParameter("title"));
        task.setDescription(req.getParameter("description"));
        resp.sendRedirect("tasks");
    }

    private void deleteTask(HttpServletRequest req, HttpServletResponse resp) throws IOException {
        int id = Integer.parseInt(req.getParameter("id"));
        tasks.removeIf(task -> task.getId() == id);
        resp.sendRedirect("tasks");
    }

    private Task getTaskById(int id) {
        return tasks.stream().filter(task -> task.getId() == id).findFirst().orElse(null);
    }
}
