<jsp:include page="common/html-boilerplate-start.jsp"/>
<jsp:include page="common/navigation.jsp"/>

<%--@elvariable id="username" type="String"--%>
<div style="display: flex; justify-content: center; align-items: center; flex-direction: column">
    <h1>Hello ${username}!</h1>
    <h3>This is welcome page.</h3>
    <p>You're very welcome.</p>

    <a href="todos-list">Go to your todos</a>

</div>

<jsp:include page="common/html-boilerplate-end.jsp"/>