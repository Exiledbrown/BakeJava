<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="jakarta.tags.core" %>
<html lang="es">
<head>
    <!-- Establece el título de la página -->
    <title>Error - BAKETRAK</title>
    <!-- Configura la vista para dispositivos móviles -->
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <!-- Incluye Bootstrap desde Webjars -->
    <link rel="stylesheet" href="${pageContext.request.contextPath}/webjars/bootstrap/5.3.3/css/bootstrap.min.css">
    <!-- Incluye Bootstrap Icons desde CDN -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.11.3/font/bootstrap-icons.css" rel="stylesheet">
    <!-- Incluye fuente Roboto desde Google Fonts -->
    <link href="https://fonts.googleapis.com/css2?family=Roboto:wght@400;700&display=swap" rel="stylesheet">
    <!-- Incluye estilos personalizados -->
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/styles.css">
</head>
<body>
    <!-- Barra de Navegación Principal -->
    <nav class="navbar navbar-expand-lg navbar-primary" id="main-nav">
        <div class="container-fluid">
            <!-- Logo de la aplicación -->
            <a class="navbar-brand" href="index.jsp">BAKETRAK</a>
            <!-- Botón para colapsar la navegación en pantallas pequeñas -->
            <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
                <span class="navbar-toggler-icon"></span>
            </button>
            <div class="collapse navbar-collapse" id="navbarNav">
                <ul class="navbar-nav ms-auto">
                    <!-- Enlace para iniciar sesión -->
                    <li class="nav-item">
                        <a class="nav-link" href="login.jsp">Iniciar Sesión</a>
                    </li>
                    <!-- Enlace para crear cuenta -->
                    <li class="nav-item">
                        <a class="nav-link" href="register.jsp">Crear Cuenta</a>
                    </li>
                </ul>
            </div>
        </div>
    </nav>

    <!-- Vista de Error -->
    <section id="error-view" class="container mt-5">
        <div class="row justify-content-center">
            <div class="col-md-6">
                <div class="card p-4 shadow">
                    <!-- Título de la sección -->
                    <h2 class="text-center mb-4">Error</h2>
                    <!-- Muestra mensaje de error -->
                    <div class="alert alert-danger">
                        <c:out value="${error}" default="Ha ocurrido un error inesperado"/>
                    </div>
                    <!-- Enlace para volver al inicio -->
                    <div class="text-center">
                        <a href="index.jsp" class="btn btn-primary">Volver al Inicio</a>
                    </div>
                </div>
            </div>
        </div>
    </section>

    <!-- Pie de Página -->
    <footer>
        <div class="container">
            <div class="row align-items-center mb-3">
                <div class="col-md-8">
                    <!-- Enlaces del pie de página -->
                    <nav class="nav flex-row justify-content-center justify-content-md-start">
                        <a class="nav-link" href="#">Política de Privacidad</a>
                        <a class="nav-link" href="#">Condiciones de Servicio</a>
                        <a class="nav-link" href="#">Declaración de Accesibilidad</a>
                        <a class="nav-link" href="#">Al por Mayor</a>
                        <a class="nav-link" href="#">Eventos</a>
                        <a class="nav-link" href="#">Centro de Ayuda</a>
                    </nav>
                </div>
                <div class="col-md-4 contact-info text-end">
                    <!-- Información de contacto -->
                    <p>¿Tienes alguna pregunta? Siempre estamos aquí para ayudarte<br>
                    El horario del Equipo de Atención al Consumidor es de lunes a viernes, de 9 a. m. a 5 p. m.</p>
                </div>
            </div>
            <div class="row align-items-center">
                <div class="col-md-6">
                    <!-- Iconos de redes sociales -->
                    <div class="social-icons d-flex">
                        <a href="https://wa.me/+573124567890" aria-label="Contactar por WhatsApp" target="_blank">
                            <i class="bi bi-whatsapp me-2" aria-hidden="true"></i> +57 312 456 7890
                        </a>
                        <a href="https://www.facebook.com/BAKETRAKColombia" aria-label="Página de Facebook" target="_blank">
                            <i class="bi bi-facebook" aria-hidden="true"></i>
                        </a>
                        <a href="https://www.instagram.com/BAKETRAK_Colombia" aria-label="Página de Instagram" target="_blank">
                            <i class="bi bi-instagram" aria-hidden="true"></i>
                        </a>
                        <a href="https://www.twitter.com/BAKETRAKCol" aria-label="Página de Twitter" target="_blank">
                            <i class="bi bi-twitter" aria-hidden="true"></i>
                        </a>
                        <a href="https://www.youtube.com/@BAKETRAKColombia" aria-label="Canal de YouTube" target="_blank">
                            <i class="bi bi-youtube" aria-hidden="true"></i>
                        </a>
                    </div>
                </div>
                <div class="col-md-6 text-end copyright">
                    <!-- Derechos de autor -->
                    <p>© 2025 BAKETRAK. Todos los derechos reservados.</p>
                </div>
            </div>
        </div>
    </footer>

    <!-- Incluye scripts de Bootstrap desde Webjars -->
    <script src="${pageContext.request.contextPath}/webjars/bootstrap/5.3.3/js/bootstrap.bundle.min.js"></script>
    <!-- Incluye scripts personalizados -->
    <script src="${pageContext.request.contextPath}/js/script.js"></script>
</body>
</html>