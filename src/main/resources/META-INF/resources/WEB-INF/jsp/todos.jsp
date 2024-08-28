<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<jsp:include page="common/html-boilerplate-start.jsp"/>
<jsp:include page="common/navigation.jsp"/>

<div class="container">
    <%--@elvariable id="todos" type="ArrayList<Todo>"--%>
    <div class="container">
        <%--@elvariable id="username" type="String"--%>
        <h1>${username}, Here are your todos:</h1>
        <c:choose>
            <c:when test="${todos.isEmpty()}">
                <p>You have no todos added.</p>
            </c:when>

            <c:otherwise>
                <c:forEach items="${todos}" var="todo">
                    <table class="table">
                        <thead>
                        <tr>
                            <th>Description</th>
                            <th>Completed</th>
                            <th>Due date</th>
                            <th></th>
                            <th></th>
                        </tr>
                        </thead>
                        <tbody>
                        <tr>
                            <td>${todo.description}</td>
                            <td>${todo.completed}</td>
                            <td>${todo.dueDate}</td>

                                <%-- TODO: how can we use DELETE Method here instead?--%>
                            <td>
                                <a href="delete-todo/${todo.id}" class="btn btn-danger">Remove</a>
                            </td>

                            <td>
                                <a href="update-todo/${todo.id}" class="btn btn-secondary">Edit</a>
                            </td>
                        </tr>
                        </tbody>
                    </table>
                </c:forEach>

            </c:otherwise>
        </c:choose>
        <a href="create-todo" class="btn btn-success">Add a todo</a>
    </div>


</div>

<jsp:include page="common/html-boilerplate-end.jsp"/>