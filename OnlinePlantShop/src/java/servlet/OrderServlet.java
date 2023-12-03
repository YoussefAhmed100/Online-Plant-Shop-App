
package servlet;

import Service.AddOrderService;
import java.io.IOException;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet(name = "OrderServlet", urlPatterns = {"/order"})
public class OrderServlet extends HttpServlet {
@Override
     protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        
        String productName = request.getParameter("productName");
        String fullName = request.getParameter("fullName");
       AddOrderService addOrderService = new AddOrderService();
        addOrderService.addOrder(productName,fullName,100);
        RequestDispatcher dispatcher = request.getRequestDispatcher("/order.jsp");
        dispatcher.forward(request, response);
    }

        protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        
        String productId = request.getParameter("productId");
        String productName = request.getParameter("productName");
        String productPrice = request.getParameter("productPrice");

        request.setAttribute("productId", productId);
        request.setAttribute("productName", productName);
        request.setAttribute("productPrice", productPrice);

        
        RequestDispatcher dispatcher = request.getRequestDispatcher("/order.jsp");
        dispatcher.forward(request, response);
    }

}
