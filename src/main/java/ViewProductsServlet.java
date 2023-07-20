import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;

@WebServlet(name = "ViewProductsServlet", urlPatterns = "/products")
public class ViewProductsServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        Products products = DaoFactory.getProductsDao();
        List<Product> productList = products.all();
        req.setAttribute("products", productList);
        req.getRequestDispatcher("/products/index.jsp").forward(req, resp);
    }
}