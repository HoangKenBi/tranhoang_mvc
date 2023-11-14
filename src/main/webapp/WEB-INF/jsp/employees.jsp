<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<html>
<head>
    <title>Employee List</title>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
</head>
<body>
<div class="container mt-5">
    <h2>Employee List</h2>
    <table class="table table-bordered">
        <thead>
        <tr>
            <th>ID</th>
            <th>Name</th>
            <th>Salary</th>
        </tr>
        </thead>
        <tbody>
        <c:forEach var="employee" items="${employees}" varStatus="loop">
            <tr>
                <td>${employee.id}</td>
                <td>${employee.name}</td>
                <td>${employee.salary}</td>
            </tr>
        </c:forEach>
        </tbody>
    </table>
    <br>
    <a class="btn btn-primary" href="/employees/showFormForAdd">Add Employee</a>
</div>

<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"></script>
</body>
</html>
