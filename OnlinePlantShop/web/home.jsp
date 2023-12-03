

<%@page import="Service.PlantService"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page language="java" %>
<%@page import="java.util.List, entity.Plant" %>
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>Plant Shop</title>
        <style>
            body {
                font-family: 'Arial', sans-serif;
                margin: 0;
                padding: 0;
                background-color: #f5f5f5;
            }

            header {
                background-color: #333;
                color: #fff;
                text-align: center;
                padding: 1em;
            }

            main {
                max-width: 800px;
                margin: 20px auto;
                padding: 20px;
                background-color: #fff;
                box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
            }

            .plant {
                border: 1px solid #ddd;
                padding: 10px;
                margin-bottom: 20px;
                overflow: hidden;
            }

            .plant img {
                max-width: 100%;
                height: auto;
                border-radius: 8px;
            }

            .plant-info {
                margin-top: 10px;
            }

            .buy-button {
                background-color: #4caf50;
                color: #fff;
                border: none;
                padding: 8px 12px;
                border-radius: 4px;
                cursor: pointer;
                margin-bottom: 20px;
            }

            .buy-button:hover {
                background-color: #45a049;

            }

            nav {
                text-align: center;
                margin-top: 20px;
            }

            nav a {
                text-decoration: none;
                color: #333;
                padding: 10px 20px;
                background-color: #ddd;
                border-radius: 4px;
            }

            nav a:hover {
                background-color: #ccc;
            }
        </style>
    </head>
    <body>
        <header>
            <h1>Plant Shop</h1>
        </header>
        <main>




            <div class="container">
                <h1>Products</h1>
                <div class="products">
                    <center>
                        <%
                            PlantService plantService = new PlantService();
                            List<Plant> plants = plantService.getPlants();;
                            int prodectNumber = 1;
                            for (Plant plant : plants) {
                        %>

                        <div class="product">
                            <img width="500px" height="300px" src="<%=plant.getImage()%>" alt="Product">
                            <h2>Product <%=prodectNumber++%></h2>
                            <p>Price: $<%=plant.getPrice()%></p>
                            <form action="home" method="post">

                                <input type="hidden" name="productId" value="<%=plant.getId()%>">
                                <input type="hidden" name="productName" value="<%=plant.getName()%>">
                                <input type="hidden" name="productPrice" value="<%=plant.getPrice()%>">


                                <button class="buy-button" type="submit" style="color: white;">Buy</button>
                            </form>
                        </div>
                        <% }%>
                    </center>
                </div>


            </div>
        </div>

    </div>
</div>


</main>

</body>
</html>
