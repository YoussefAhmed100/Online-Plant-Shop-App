
package servlet;

import java.io.IOException;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class HomeServlet extends HttpServlet {


  
    @Override
     protected void doPost(HttpServletRequest request, HttpServletResponse response) 
            throws ServletException, IOException {
        
        String productName = request.getParameter("productName");
        String productPrice = request.getParameter("productPrice");

        
        request.setAttribute("productName", productName);
        request.setAttribute("productPrice", productPrice);

        RequestDispatcher dispatcher = request.getRequestDispatcher("/order.jsp");
        dispatcher.forward(request, response);
    }
    

    

}
