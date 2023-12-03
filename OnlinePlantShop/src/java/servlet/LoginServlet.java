
package servlet;

import Service.AdminLoginService;
import Service.BuyerLoginService;
import Service.SellerLoginService;
import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;



public class LoginServlet extends HttpServlet {


    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
     String userName = request.getParameter("username");
     String password = request.getParameter("password");
   
     if(isAdministrator(userName,password)){
         setSessionLoginState(request,"admin",true);
         response.sendRedirect("admin.jsp");
     }
     else if(isSeller(userName,password)){
         setSessionLoginState(request,"seller",true);
         response.sendRedirect("seller.jsp");}
     else if(isBuyer(userName,password))
         response.sendRedirect("home.jsp");
     else {
          request.setAttribute("errorMessage", "Please check your password or user name");
            request.getRequestDispatcher("/index.jsp").forward(request, response);}
    }

   

  

    private boolean isAdministrator(String userName, String password) {
      AdminLoginService service =  new AdminLoginService();
      return service.loginAsAdmin(userName, password);
    }

    private boolean isSeller(String userName, String password) {
      SellerLoginService service =  new SellerLoginService();
      return service.loginAsSeller(userName, password);
    }

    private boolean isBuyer(String userName, String password) {
      BuyerLoginService service =  new BuyerLoginService();
      return service.loginAsBuyer(userName, password);
    }
    
    private void setSessionLoginState(HttpServletRequest request,String name, boolean state){
      HttpSession session = request.getSession();
      session.setAttribute(name, state);
    }
}
