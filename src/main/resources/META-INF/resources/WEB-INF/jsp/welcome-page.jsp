<%--@elvariable id="username" type="String"--%>
<%--DEPRECATED--%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Welcome ${username}</title>

</head>
<body>
<div style="display: flex; justify-content: center; align-items: center; flex-direction: column">
    <h1>Hello ${username}!</h1>
    <h3>This is welcome page.</h3>
    <p>You're very welcome.</p>

    <a href="todos-list">Go to your todos</a>

</div>

</body>
</html>