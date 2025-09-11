<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Seguimiento de Pedido - BAKETRAK</title>
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
                        <a class="nav-link" href="index.jsp">Inicio</a>
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

    <!-- Vista Seguimiento de Pedido -->
    <section id="tracking-view" class="container mt-5">
        <h2 class="text-center mb-4">BAKETRAK - Seguimiento de Pedido</h2>
        <div class="mb-3">
            <a href="history.jsp" class="btn btn-primary">Volver a Historial de Pedidos</a>
        </div>
        <div class="accordion" id="trackingAccordion">
            <div class="accordion-item">
                <h2 class="accordion-header" id="trackingHeader">
                    <button class="accordion-button" type="button" data-bs-toggle="collapse" data-bs-target="#trackingCollapse" aria-expanded="true" aria-controls="trackingCollapse">
                        Pedido #${order.id}
                    </button>
                </h2>
                <div id="trackingCollapse" class="accordion-collapse collapse show" aria-labelledby="trackingHeader">
                    <div class="accordion-body">
                        <table class="table table-striped">
                            <thead>
                                <tr>
                                    <th>Estado Actual</th>
                                    <th>Dirección de Entrega</th>
                                </tr>
                            </thead>
                            <tbody>
                                <tr>
                                    <td>${order.status}</td>
                                    <td>${order.address}</td>
                                </tr>
                            </tbody>
                        </table>
                    </div>
                </div>
            </div>
        </div>
        <div class="mt-4">
            <h5>Mapa en Tiempo Real</h5>
            <div id="map" style="height: 400px; background-color: #E0E0E0; display: flex; align-items: center; justify-content: center;">
                <p>Placeholder para mapa en tiempo real (por ejemplo, Google Maps)</p>
            </div>
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