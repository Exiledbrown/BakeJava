<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="jakarta.tags.core" %>
<html lang="es">
<head>
    <!-- Establece el título de la página -->
    <title>Crear Cuenta - BAKETRAK</title>
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
                </ul>
            </div>
        </div>
    </nav>

    <!-- Barra de Navegación Secundaria -->
    <nav class="navbar navbar-expand-lg navbar-secondary" id="secondary-nav">
        <div class="container-fluid">
            <div class="collapse navbar-collapse" id="navbarSecondary">
                <ul class="navbar-nav mx-auto">
                    <!-- Enlace a la página de inicio -->
                    <li class="nav-item">
                        <a class="nav-link" href="index.jsp">Inicio</a>
                    </li>
                    <!-- Menú desplegable de combos -->
                    <li class="nav-item dropdown">
                        <a class="nav-link dropdown-toggle" href="#" id="combosDropdown" role="button" data-bs-toggle="dropdown" aria-expanded="false">
                            Combos
                        </a>
                        <ul class="dropdown-menu" aria-labelledby="combosDropdown">
                            <li><a class="dropdown-item" href="#">Combo 1: Pan Artesanal + Pastel de Chocolate + Café</a></li>
                            <li><a class="dropdown-item" href="#">Combo 2: Croissant + Tarta de Fresa + Jugo Natural</a></li>
                            <li><a class="dropdown-item" href="#">Combo 3: Creppe de Nutella + Waffle con Frutas + Batido</a></li>
                            <li><a class="dropdown-item" href="#">Combo 4: Pan Integral + Cupcake Vainilla + Té</a></li>
                            <li><a class="dropdown-item" href="#">Combo 5: Creppe Salado + Galleta Integral + Smoothie</a></li>
                        </ul>
                    </li>
                    <!-- Enlace para ordenar online -->
                    <li class="nav-item">
                        <a class="nav-link" href="#">Ordenar Online</a>
                    </li>
                    <!-- Enlace al catálogo de pasteles -->
                    <li class="nav-item">
                        <a class="nav-link" href="#">Catálogo de Pasteles</a>
                    </li>
                    <!-- Enlace a la sección de heladería -->
                    <li class="nav-item">
                        <a class="nav-link" href="#">Heladería</a>
                    </li>
                    <!-- Enlace a la sección de creppes -->
                    <li class="nav-item">
                        <a class="nav-link" href="#">Creppes</a>
                    </li>
                    <!-- Enlace a la sección de waffles -->
                    <li class="nav-item">
                        <a class="nav-link" href="#">Waffles</a>
                    </li>
                    <!-- Menú desplegable de acerca de nosotros -->
                    <li class="nav-item dropdown">
                        <a class="nav-link dropdown-toggle" href="#" id="aboutDropdown" role="button" data-bs-toggle="dropdown" aria-expanded="false">
                            Acerca de Nosotros
                        </a>
                        <ul class="dropdown-menu" aria-labelledby="aboutDropdown">
                            <li><a class="dropdown-item" href="about.jsp">Nuestra Historia</a></li>
                            <li><a class="dropdown-item" href="#">Equipo</a></li>
                            <li><a class="dropdown-item" href="#">Contáctenos</a></li>
                        </ul>
                    </li>
                </ul>
            </div>
        </div>
    </nav>

    <!-- Vista Registro -->
    <section id="register-view" class="container mt-5">
        <div class="row justify-content-center">
            <div class="col-md-6 col-lg-4">
                <div class="card p-4 shadow">
                    <!-- Título de la sección -->
                    <h2 class="text-center mb-4">Crear Cuenta</h2>
                    <!-- Muestra mensaje de error si existe -->
                    <c:if test="${not empty error}">
                        <div class="alert alert-danger">${error}</div>
                    </c:if>
                    <!-- Formulario de registro -->
                    <form id="register-form" action="register" method="post">
                        <div class="mb-3">
                            <!-- Campo para el nombre de usuario -->
                            <label for="username" class="form-label">Usuario</label>
                            <input type="text" class="form-control" id="username" name="username" placeholder="Ingresa tu usuario" required>
                        </div>
                        <div class="mb-3">
                            <!-- Campo para la contraseña -->
                            <label for="password" class="form-label">Contraseña</label>
                            <input type="password" class="form-control" id="password" name="password" placeholder="Ingresa tu contraseña" required>
                        </div>
                        <!-- Botón de envío -->
                        <div class="d-grid">
                            <button type="submit" class="btn btn-primary">Crear Cuenta</button>
                        </div>
                    </form>
                    <!-- Enlace para iniciar sesión -->
                    <div class="text-center mt-3">
                        <a href="login.jsp" class="text-primary">¿Ya tienes cuenta? Inicia sesión</a>
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