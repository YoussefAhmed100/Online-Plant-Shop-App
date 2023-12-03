package Service;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import javax.jws.WebService;
import javax.jws.WebMethod;
import javax.jws.WebParam;
import utils.DatabaseConnection;


@WebService(serviceName = "BuyerLoginService")
public class BuyerLoginService {

      @WebMethod(operationName = "loginAsSeller")
   public boolean loginAsBuyer(
            @WebParam(name = "useName")String useName ,
            @WebParam(name = "password")String password){
            String sqlQuery = "SELECT * FROM buyer";
              
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
