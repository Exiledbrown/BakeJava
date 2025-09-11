<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Cliente - BAKETRAK</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.11.3/font/bootstrap-icons.css" rel="stylesheet">
    <link href="https://fonts.googleapis.com/css2?family=Roboto:wght@400;700&display=swap" rel="stylesheet">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/styles.css">
</head>
<body>
    <!-- Barra de Navegación Principal -->
    <nav class="navbar navbar-expand-lg navbar-primary" id="main-nav">
        <div class="container-fluid">
            <a class="navbar-brand" href="index.jsp">BAKETRAK</a>
            <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
                <span class="navbar-toggler-icon"></span>
            </button>
            <div class="collapse navbar-collapse" id="navbarNav">
                <ul class="navbar-nav ms-auto">
                    <li class="nav-item" id="login-nav-item">
                        <a class="nav-link" href="#">${sessionScope.user.username}</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="logout">Cerrar Sesión</a>
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
                    <li class="nav-item">
                        <a class="nav-link active" aria-current="page" href="index.jsp">Inicio</a>
                    </li>
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
                    <li class="nav-item">
                        <a class="nav-link" href="#">Ordenar Online</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="#">Catálogo de Pasteles</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="#">Heladería</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="#">Creppes</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="#">Waffles</a>
                    </li>
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

    <!-- Vista Cliente -->
    <section id="cliente-view" class="container mt-5 hero">
        <h2 class="text-center mb-4">Bienvenido, ${sessionScope.user.username}</h2>
        <div class="row">
            <c:forEach var="product" items="${products}">
                <div class="col-md-4 col-sm-6 mb-4">
                    <div class="card">
                        <img src="${product.imageUrl}" class="card-img-top card-img-uniform" alt="${product.name}">
                        <div class="card-body">
                            <h5 class="card-title">${product.name}</h5>
                            <p class="card-text">$${product.price}</p>
                            <a href="#" class="btn btn-primary">Agregar al Carrito</a>
                        </div>
                    </div>
                </div>
            </c:forEach>
        </div>
        <div class="text-center">
            <a href="history.jsp" class="btn btn-primary mt-3">Ver Historial de Pedidos</a>
        </div>
    </section>

    <!-- Pie de Página -->
    <footer>
        <div class="container">
            <div class="row align-items-center mb-3">
                <div class="col-md-8">
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
                    <p>¿Tienes alguna pregunta? Siempre estamos aquí para ayudarte<br>
                    El horario del Equipo de Atención al Consumidor es de lunes a viernes, de 9 a. m. a 5 p. m.</p>
                </div>
            </div>
            <div class="row align-items-center">
                <div class="col-md-6">
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
                    <p>© 2025 BAKETRAK. Todos los derechos reservados.</p>
                </div>
            </div>
        </div>
    </footer>

    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"></script>
    <script src="${pageContext.request.contextPath}/js/script.js"></script>
</body>
</html>