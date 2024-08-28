<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Todo app</title>
    <link href="${pageContext.request.contextPath}/webjars/bootstrap/5.1.3/css/bootstrap.min.css" rel="stylesheet">

    <%--@elvariable id="linkDatepicker" type="boolean"--%>
    <c:if test="${linkDatepicker}">
        <link href="${pageContext.request.contextPath}/webjars/bootstrap-datepicker/1.9.0/css/bootstrap-datepicker.standalone.min.css"
              rel="stylesheet">
    </c:if>

</head>

<body>