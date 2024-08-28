<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<script src="${pageContext.request.contextPath}/webjars/bootstrap/5.1.3/js/bootstrap.min.js"></script>
<script src="${pageContext.request.contextPath}/webjars/jquery/3.6.0/jquery.min.js"></script>

<%--@elvariable id="linkDatepicker" type="boolean"--%>
<c:if test="${linkDatepicker}">
    <script src="${pageContext.request.contextPath}/webjars/bootstrap-datepicker/1.9.0/js/bootstrap-datepicker.min.js"></script>
    <script type="text/javascript">
        $('#dueDate').datepicker({
            format: 'yyyy-mm-dd'
        });
    </script>
</c:if>

</body>
</html>