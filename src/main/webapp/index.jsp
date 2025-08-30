<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="jakarta.tags.core" prefix="c" %>
<html>
<head>
    <title>BakeTrack - Inicio</title>
    <!-- Incluye Bootstrap CSS -->
    <link href="${pageContext.request.contextPath}/webjars/bootstrap/5.3.3/css/bootstrap.min.css" rel="stylesheet">
</head>
<body>
    <div class="container">
        <!-- Muestra mensaje de bienvenida -->
        <h1 class="mt-5">Bienvenido a BakeTrack</h1>
        <c:if test="${sessionScope.user != null}">
            <p>Bienvenido, ${sessionScope.user.username}! Rol: ${sessionScope.user.role}</p>
            <a href="logout" class="btn btn-danger">Cerrar Sesión</a>
        </c:if>
        <c:if test="${sessionScope.user == null}">
            <p>Por favor, <a href="login.jsp">inicia sesión</a>.</p>
        </c:if>
    </div>
    <!-- Incluye Bootstrap JS -->
    <script src="${pageContext.request.contextPath}/webjars/bootstrap/5.3.3/js/bootstrap.bundle.min.js"></script>
</body>
</html>