package utils;

import java.sql.Connection;
import java.sql.DriverManager;

public class DatabaseConnection {
    
    private static Connection connection = null;
     public static Connection connect() {
        try {
            if(connection==null){
            Class.forName("com.mysql.cj.jdbc.Driver");
            String url = "jdbc:mysql://localhost:3305/PlantShop";
            String username = "root";
            String password = "1111";
            
             connection = DriverManager.getConnection(url, username, password);
            }
             return  connection;
            
        }catch(Exception e){
           e.printStackTrace();
           return null;
        }

     }
}
