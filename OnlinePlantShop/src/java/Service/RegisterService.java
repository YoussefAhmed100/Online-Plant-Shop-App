
package Service;

import java.sql.Connection;
import java.sql.PreparedStatement;
import javax.jws.WebService;
import javax.jws.WebMethod;
import utils.DatabaseConnection;


@WebService(serviceName = "RegisterService")
public class RegisterService {
    
   private  Connection connection = DatabaseConnection.connect();

 
   @WebMethod()
public void registerBuyer(String buyerUserName, String buyerPassword) {
    insertUser("buyer", buyerUserName, buyerPassword);
}

@WebMethod()
public void registerSeller(String sellerUserName, String sellerPassword) {
    insertUser("seller", sellerUserName, sellerPassword);
}

private void insertUser(String userType, String userName, String password)  {
    
        String insertQuery = "INSERT INTO " + userType + " (userName, password) VALUES (?, ?)";
        try  {
            PreparedStatement preparedStatement = connection.prepareStatement(insertQuery);
            preparedStatement.setString(1, userName);
            preparedStatement.setString(2, password);
            preparedStatement.executeUpdate();
        }
     catch (Exception e) {
        e.printStackTrace(); }
        
}
    
    
}
