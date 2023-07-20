import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.Arrays;
@WebServlet(name = "PizzaOrderServlet.java", urlPatterns = "/pizza-order")
public class PizzaOrderServlet<toppings> extends HttpServlet {
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.getRequestDispatcher("/pizza-order.jsp").forward(request, response);
    }

    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String crustType = req.getParameter("crustTYpe");
        String sauceType = req.getParameter("sauceType");
        String sizeType = req.getParameter("sizeType");
        String[] topping = req.getParameterValues("toppings");
        String deliveryAddress = req.getParameter("address");
        
        System.out.println("Crust Type: " + crustType);
        System.out.println("Sauce Type: " + sauceType);
        System.out.println("Size Type: " + sizeType);
        System.out.println("Toppings: " + Arrays.toString(topping));
        System.out.println("Delivery Address: " + deliveryAddress);
        if(topping != null) {
            System.out.println("Toppings: ");
            Object toppings;
            for (String Topping : topping) {
                System.out.println(" - " + Arrays.toString(topping));
            }
        } else {
            System.out.println("No toppings selected.");
            }
        System.out.println("Delivery Address: " + deliveryAddress);

        req.getRequestDispatcher("/order-confirmation.jsp").forward(req, resp);
        }
       
    }

