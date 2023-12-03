package Service;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.util.Date;
import javax.jws.WebMethod;
import javax.jws.WebService;
import utils.DatabaseConnection;



@WebService(serviceName = "AddOrderService")
public class AddOrderService {
    
 private  Connection connection = DatabaseConnection.connect();
 @WebMethod()
  public void addOrder(String plantName, String customerName, int price) {
        try {
            String sqlQuery = "INSERT INTO plantorder (plantName, customeName, price,id) VALUES (?, ?, ?,?)";
            try (PreparedStatement statement = connection.prepareStatement(sqlQuery)) {
                statement.setString(1, plantName);
                statement.setString(2, customerName);
                statement.setInt(3, price);
                statement.setInt(4, (int) new Date().getTime());
                statement.executeUpdate();
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }
}
