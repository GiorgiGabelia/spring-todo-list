<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>

<%--@elvariable id="todo" type="com.myGroup.myFirstWebApp.todo.Todo"--%>
<form:form method="post" modelAttribute="todo">
    <fieldset>
        <form:label path="description">Description</form:label>
        <form:input path="description"
                    id="description"
                    required="required"
                    type="text"
                    placeholder="Describe this task"
                    style="display: block"/>
        <p class="alert-danger">
            <form:errors path="description"/>
        </p>
    </fieldset>


    <fieldset>
        <form:label path="dueDate">Due date</form:label>
        <form:input path="dueDate"
                    id="dueDate"
                    required="required"
                    style="display: block"/>
        <p class="alert-danger">
            <form:errors path="dueDate"/>
        </p>

    </fieldset>

    <%--@elvariable id="submitBtnWording" type="String"--%>
    <button type="submit" class="btn btn-success">${submitBtnWording} todo</button>
</form:form>