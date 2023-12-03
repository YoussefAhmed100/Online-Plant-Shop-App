package Service;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import javax.jws.WebService;
import javax.jws.WebMethod;
import javax.jws.WebParam;
import utils.DatabaseConnection;


@WebService(serviceName = "AddPlantService")
public class AddPlantService {
    

  
  @WebMethod(operationName = "addPlant")
    public boolean addPlant(
        @WebParam(name = "plantName") String plantName,
        @WebParam(name = "plantAge") int plantAge,
        @WebParam(name = "plantPrice") int plantPrice,
        @WebParam(name = "plantImage") String plantImage,
        @WebParam(name = "plantType") String type) {
          Connection connection = DatabaseConnection.connect();

        String sqlQuery = "INSERT INTO plant (name, age, price, image,type) VALUES (?,?, ?, ?, ?)";

        try  {
            PreparedStatement statement = connection.prepareStatement(sqlQuery);
            statement.setString(1, plantName);
            statement.setInt(2, plantAge);
            statement.setInt(3, plantPrice);
            statement.setString(4, plantImage);
            statement.setString(5, type);
                statement.executeUpdate();

           return true;
        } catch (SQLException e) {
            e.printStackTrace();
            return false;
        }
    }
}
