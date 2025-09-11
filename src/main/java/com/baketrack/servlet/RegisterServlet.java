package com.baketrack.servlet;

import com.baketrack.dao.UserDAO;
import com.baketrack.model.User;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.sql.SQLException;
import java.time.LocalDateTime;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

@WebServlet(name = "RegisterServlet", urlPatterns = {"/register"})
public class RegisterServlet extends HttpServlet {
    // Logger para registrar errores
    private static final Logger logger = LoggerFactory.getLogger(RegisterServlet.class);

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        // Obtiene los parámetros del formulario
        String username = request.getParameter("username");
        String password = request.getParameter("password");

        try {
            // Crea una instancia de UserDAO
            UserDAO userDAO = new UserDAO();
            // Verifica si el nombre de usuario ya existe
            User existingUser = userDAO.getUserByUsername(username);
            if (existingUser != null) {
                // Establece mensaje de error y redirige a register.jsp
                request.setAttribute("error", "El nombre de usuario ya existe");
                request.getRequestDispatcher("register.jsp").forward(request, response);
                return;
            }

            // Crea un nuevo objeto User con rol cliente
            User user = new User();
            user.setUsername(username);
            user.setPassword(password);
            user.setRole("cliente");
            user.setCreatedAt(LocalDateTime.now());
            // Inserta el usuario en la base de datos
            userDAO.createUser(user);

            // Redirige a login.jsp tras registro exitoso
            response.sendRedirect("login.jsp");
        } catch (SQLException e) {
            // Registra error de base de datos
            logger.error("Error al registrar usuario: {}", e.getMessage(), e);
            // Establece mensaje de error y redirige a error.jsp
            request.setAttribute("error", "Error en la base de datos: " + e.getMessage());
            request.getRequestDispatcher("error.jsp").forward(request, response);
        }
    }
}