package Service;

import entity.Plant;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;
import javax.ws.rs.GET;
import javax.ws.rs.Path;
import javax.ws.rs.Produces;
import javax.ws.rs.core.MediaType;
import utils.DatabaseConnection;




@Path("/plants")
public class PlantService {

    @GET
    public List<Plant> getPlants() {
       
        List<Plant> plants = retrievePlantsFromDatabase();
        return plants;
    }

   
    private List<Plant> retrievePlantsFromDatabase()   {
               String sqlQuery = "SELECT * FROM Plant";
               List<Plant> plants = new ArrayList<>();
               try{
               PreparedStatement statement = DatabaseConnection.connect().prepareStatement(sqlQuery);
               ResultSet resultSet = statement.executeQuery();
               
                 while (resultSet.next()) {
            Plant plant = new Plant(
                resultSet.getInt("id"),
                resultSet.getString("name"),
                resultSet.getInt("price"),
                resultSet.getInt("age"),
                resultSet.getString("type"),
                resultSet.getString("image"));
            plants.add(plant);
                }
                 return plants;
               }
               catch(Exception e){
                return plants;
               }
         
    }
}

