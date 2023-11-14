<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<html>
<head>
    <title>Add/Update Employee</title>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
</head>
<body>
<div class="container mt-5">
    <h2>Add/Update Employee</h2>
    <form action="/employees/saveEmployee" method="post">
        <input type="hidden" name="id" value="${employee.id}">
        <div class="form-group">
            <label for="name">Name:</label>
            <input type="text" class="form-control" id="name" name="name" value="${employee.name}">
        </div>
        <div class="form-group">
            <label for="salary">Salary:</label>
            <input type="text" class="form-control" id="salary" name="salary" value="${employee.salary}">
        </div>
        <button type="submit" class="btn btn-primary">Save Employee</button>
    </form>
    <br>
    <a class="btn btn-secondary" href="/employees/list">Back to Employee List</a>
</div>

<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"></script>
</body>
</html>
