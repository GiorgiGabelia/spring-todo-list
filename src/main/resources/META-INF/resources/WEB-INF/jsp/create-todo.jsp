<%request.setAttribute("linkDatepicker", true);%>
<% request.setAttribute("submitBtnWording", "Add"); %>

<jsp:include page="common/html-boilerplate-start.jsp"/>

<jsp:include page="common/navigation.jsp"/>

<div class="container">
    <h1>Add a new todo</h1>
    <jsp:include page="common/todo-form.jsp"/>
</div>

<jsp:include page="common/html-boilerplate-end.jsp"/>
