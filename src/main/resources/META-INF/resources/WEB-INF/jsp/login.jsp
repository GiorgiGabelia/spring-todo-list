<%--@elvariable id="authErrorMessage" type="String"--%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <link href="webjars/bootstrap/5.1.3/css/bootstrap.min.css" rel="stylesheet">
    <title>Login</title>

</head>
<body>
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

    <p style="color: red; font-weight: bold">${authErrorMessage}</p>
</div>

<script src="webjars/bootstrap/5.1.3/js/bootstrap.min.js"></script>
<script src="webjars/jquery/3.6.0/jquery.min.js"></script>
</body>
</html>