
package servlet;

import Service.RegisterService;
import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

@WebServlet(name = "RegisterServlet", urlPatterns = {"/register"})
public class RegisterServlet extends HttpServlet {

  
       protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        RegisterService registrationService = new RegisterService();
        String username = request.getParameter("username");
        String password = request.getParameter("password");
        String confirmPassword = request.getParameter("confirmPassword");
        String role = request.getParameter("role");

    
           
        if ( !password.equals(confirmPassword) || password.length()<8  ) {
           
            request.setAttribute("errorMessage", "Please check your password at least 8 charcaters.");
            request.getRequestDispatcher("/register.jsp").forward(request, response);
            return;
        }
         if ("seller".equals(role)) {
            registrationService.registerSeller(username, password);
            setSessionLoginState(request,"seller",true);
            request.getRequestDispatcher("/seller.jsp").forward(request, response);
         }
         else if ("buyer".equals(role)) {
            registrationService.registerBuyer(username, password);
          
            request.getRequestDispatcher("/home.jsp").forward(request, response);
         }
    }
        private void setSessionLoginState(HttpServletRequest request,String name, boolean state){
      HttpSession session = request.getSession();
      session.setAttribute(name, state);
    }
}




  
