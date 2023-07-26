package profile;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
@WebServlet(name = "Color Page", urlPatterns = "/pickcolor")

public class PickColorServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String color = request.getParameter("color");
        response.sendRedirect("/view color?color=" + color);
    }

    // Since we are using POST for the form submission, we don't need the doGet method for this servlet.
}