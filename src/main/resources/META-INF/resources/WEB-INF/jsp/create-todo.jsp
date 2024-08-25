<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>


<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Create new todo</title>
    <link href="webjars/bootstrap/5.1.3/css/bootstrap.min.css" rel="stylesheet">
</head>
<body>

<div class="container">
    <h1>Add a new todo</h1>

    <%--@elvariable id="newTodo" type="com.myGroup.myFirstWebApp.todo.Todo"--%>
    <form:form method="post" modelAttribute="newTodo">

        <label for="description">Description</label>
        <form:input path="description"
                    id="description"
                    required="required"
                    type="text"
                    placeholder="Describe this task"
                    style="display: block"/>
        <p class="alert-danger">
            <form:errors path="description"/>
        </p>

        <label for="dueDate">Due date</label>
        <form:input path="dueDate"
                    id="dueDate"
                    required="required"
                    type="date"
                    style="display: block"/>
        <p class="alert-danger">
            <form:errors path="dueDate"/>
        </p>

        <button type="submit" class="btn btn-success">Add todo</button>
    </form:form>

</div>

<script src="webjars/bootstrap/5.1.3/js/bootstrap.min.js"></script>
<script src="webjars/jquery/3.6.0/jquery.min.js"></script>
</body>
</html>
