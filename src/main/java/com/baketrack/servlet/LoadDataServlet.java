package com.baketrack.servlet;

import com.baketrack.dao.OrderDAO;
import com.baketrack.dao.ProductDAO;
import com.baketrack.model.Order;
import com.baketrack.model.Product;
import com.baketrack.model.User;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.sql.SQLException;
import java.util.List;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

@WebServlet(name = "LoadDataServlet", urlPatterns = {"/loadData"})
public class LoadDataServlet extends HttpServlet {
    // Logger para registrar errores
    private static final Logger logger = LoggerFactory.getLogger(LoadDataServlet.class);

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        try {
            // Crea instancias de DAOs
            ProductDAO productDAO = new ProductDAO();
            OrderDAO orderDAO = new OrderDAO();
            // Obtiene todos los productos y pedidos
            List<Product> products = productDAO.getAllProducts();
            List<Order> orders = orderDAO.getAllOrders();
            // Establece atributos para las JSP
            request.setAttribute("products", products);
            request.setAttribute("orders", orders);

            // Obtiene el rol del usuario desde la sesión
            String role = request.getSession().getAttribute("user") != null ?
                    ((User) request.getSession().getAttribute("user")).getRole() : null;
            if (role == null) {
                // Redirige a login si no hay usuario en sesión
                response.sendRedirect("login.jsp");
                return;
            }

            // Redirige a la JSP correspondiente según el rol
            switch (role) {
                case "cliente":
                    request.getRequestDispatcher("cliente.jsp").forward(request, response);
                    break;
                case "repartidor":
                    request.getRequestDispatcher("repartidor.jsp").forward(request, response);
                    break;
                case "administrador":
                    request.getRequestDispatcher("administrador.jsp").forward(request, response);
                    break;
                default:
                    // Redirige a index si el rol no es válido
                    response.sendRedirect("index.jsp");
            }
        } catch (SQLException e) {
            // Registra error de base de datos
            logger.error("Error al cargar datos: {}", e.getMessage(), e);
            // Establece mensaje de error y redirige a error.jsp
            request.setAttribute("error", "Error en la base de datos: " + e.getMessage());
            request.getRequestDispatcher("error.jsp").forward(request, response);
        }
    }
}