<jsp:include page="common/html-boilerplate-start.jsp"/>

<div style="display: flex; justify-content: center; align-items: center; flex-direction: column">
    <h1>Hello user!</h1>
    <h3>Saying hello from a Java/Jakarta server page aka JSP</h3>
    <h3>Login</h3>

    <form style="display: flex; flex-direction: column; gap: 1rem" method="post">
        <label for="username">
            <input name="username" id="username" type="text" required placeholder="User name"/>
        </label>
        <label for="password">
            <input name="password" id="password" type="password" required placeholder="User password"/>
        </label>

        <button class="btn btn-success" type="submit">Login</button>
    </form>

    <%--@elvariable id="authErrorMessage" type="String"--%>
    <p style="color: red; font-weight: bold">${authErrorMessage}</p>
</div>

<jsp:include page="common/html-boilerplate-end.jsp"/>