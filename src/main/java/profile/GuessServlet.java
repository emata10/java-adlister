package profile;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;

@WebServlet(name = "GuessServlet", urlPatterns = "/pickcolor")
public class GuessServlet extends HttpServlet {
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        RequestDispatcher view = request.getRequestDispatcher("guess.jsp");
        view.forward(request, response);
    }
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        int guess = Integer.parseInt(request.getParameter("guess"));

        if (guess >= 1 && guess <= 3) {
            if (guess == generateRandomNumber()) {
                response.sendRedirect("correct");
            } else {
                response.sendRedirect("incorrect");
            }
        } else {
            response.sendRedirect("guess");
        }
    }

    private int generateRandomNumber() {
        return (int) (Math.random() * 3) + 1;

    }
    }

