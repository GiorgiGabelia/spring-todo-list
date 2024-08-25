<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<%--@elvariable id="username" type="String"--%>
<%--@elvariable id="newTodoAdded" type="boolean"--%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Todos list</title>
    <link href="webjars/bootstrap/5.1.3/css/bootstrap.min.css" rel="stylesheet">
</head>
<body>
<div class="container">
    <h1>${username}, Here are your todos:</h1>
    <div class="container">
        <c:forEach items="${todos}" var="todo">
            <table class="table">
                <thead>
                <tr>
                    <th>Id</th>
                    <th>Description</th>
                    <th>Completed</th>
                    <th>Due date</th>
                </tr>
                </thead>
                <tbody>
                <tr>
                    <td>${todo.id}</td>
                    <td>${todo.description}</td>
                    <td>${todo.completed}</td>
                    <td>${todo.dueDate}</td>
                </tr>
                </tbody>
            </table>
        </c:forEach>

        <%--        <c:if test="${newTodoAdded}">--%>
        <%--            <h3 style="color: green; font-weight: bold">New todo successfully added!</h3>--%>
        <%--        </c:if>--%>

        <a href="create-todo" class="btn btn-success">Add a todo</a>
    </div>
</div>

<script src="webjars/bootstrap/5.1.3/js/bootstrap.min.js"></script>
<script src="webjars/jquery/3.6.0/jquery.min.js"></script>
</body>
</html>