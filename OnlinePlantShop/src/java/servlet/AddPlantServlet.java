
package servlet;

import Service.AddPlantService;
import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet(name = "AddPlantServlet", urlPatterns = {"/seller"})
public class AddPlantServlet extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
           AddPlantService addPlantServlet = new AddPlantService();
             String plantName = request.getParameter("newPlantName");
        int plantAge = Integer.parseInt(request.getParameter("newPlantAge"));
        int plantPrice = Integer.parseInt(request.getParameter("newPlantPrice"));
        String plantImage = request.getParameter("plantImage");
        String plantType = request.getParameter("newPlantType");

        boolean isPlantAdded = addPlantServlet.addPlant(plantName, plantAge, plantPrice, plantImage, plantType);
        
         if (isPlantAdded) {
            request.setAttribute("successMessage2", "Plant added successfully!");
            request.setAttribute("errorMessage2", "");
        } else {
            request.setAttribute("successMessage2", ""); 
            request.setAttribute("errorMessage2", "Failed to add the plant.");
         }
                 request.getRequestDispatcher("/seller.jsp").forward(request, response);

    }

}
