import javax.servlet.*;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.*;
import java.io.*;
//@WebServlet(name = "ProfileServlet", urlPatterns = {"/profile"})
public class ProfileServlet<User> extends HttpServlet {
    public ProfileServlet() {
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        HttpSession session = request.getSession();
        User user = (User) session.getAttribute("user");

        if (user != null) {
            // If the user is logged in, render the profile page with a welcome message
            request.setAttribute("username", request.isUserInRole("username"));

            request.getRequestDispatcher("/WEB-INF/profile.jsp").forward(request, response);
        } else {
            // If the user is not logged in, redirect them to the login page
            response.sendRedirect(request.getContextPath() + "/login");
        }
    }
}