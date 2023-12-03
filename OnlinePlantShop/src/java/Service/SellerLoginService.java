
package Service;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import javax.jws.WebService;
import javax.jws.WebMethod;
import javax.jws.WebParam;
import utils.DatabaseConnection;


@WebService(serviceName = "SellerLoginService")
public class SellerLoginService {

     @WebMethod(operationName = "loginAsSeller")
   public boolean loginAsSeller(
            @WebParam(name = "useName")String useName ,
            @WebParam(name = "password")String password){
            String sqlQuery = "SELECT * FROM seller";
              
               try{
               PreparedStatement statement = DatabaseConnection.connect().prepareStatement(sqlQuery);
               ResultSet resultSet = statement.executeQuery();
               
                 while (resultSet.next()) 
                   if( resultSet.getString("userName").equals(useName) && resultSet.getString("password").equals(password) )
                      return true;
           return false;
               }
               catch(Exception e){
               return false;
               }
    }
}
