<%@page import="Service.PlantService"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page language="java" %>
<%@page import="java.util.List, entity.Plant"%>

<!DOCTYPE html>
<html lang="en">

    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>Products</title>
        <style>
            body {
                font-family: Arial, sans-serif;
            }

            .container {
                max-width: 1200px;
                margin: 0 auto;
                padding: 20px;
            }

            .products {
                display: grid;
                grid-template-columns: repeat(auto-fit, minmax(250px, 1fr));
                grid-gap: 20px;
            }

            .product {
                border: 1px solid #ddd;
                padding: 20px;
                border-radius: 5px;
                transition: all 0.3s ease;
            }

            .product:hover {
                transform: translateY(-10px);
                box-shadow: 0 20px 30px rgba(0, 0, 0, 0.1);
            }

            .product img {
                max-width: 100%;
                height: auto;
            }

            .product h2 {
                margin: 20px 0;
            }

            .product p {
                margin: 0;
            }

            .product button {
                display: block;
                width: 100%;
                padding: 10px;
                background-color: #007bff;
                color: #fff;
                text-align: center;
                border: none;
                border-radius: 5px;
                cursor: pointer;
                transition: all 0.3s ease;
            }


            .product button:hover {
                background-color: #0056b3;
            }
            .available-products {
                width: 100%;
                align-items: center;
                justify-content: center;
                text-align: center;
            }
        </style>
    </head>

    <body>
        <div class="container">
            <h1>Example of Our Products</h1>
            <div class="products">
                <div class="product">
                    <img src="img/IMG-20231202-WA0012.jpg" alt="Product">
                    <h2>Product 1</h2>
                    <p>Price: $100</p>
                    <button>buy</button>
                </div>
                <div class="product">
                    <img src="img/IMG-20231202-WA0013.jpg" alt="Product">
                    <h2>Product 2</h2>
                    <p>Price: $200</p>
                    <button>buy</button>
                </div>
                <div class="product">
                    <img src="img/IMG-20231202-WA0014.jpg" alt="Product">
                    <h2>Product 3</h2>
                    <p>Price: $300</p>
                    <button>buy</button>
                </div>
                <div class="product">
                    <img src="img/IMG-20231202-WA0015.jpg" alt="Product">
                    <h2>Product 4</h2>
                    <p>Price: $400</p>
                    <button>buy</button>
                </div>


            </div>
        </div>

        <div class="container">

            <div class="products">
                <div class="product">
                    <img src="img/IMG-20231202-WA0016.jpg" alt="Product">
                    <h2>Product 1</h2>
                    <p>Price: $100</p>
                    <button>buy</button>
                </div>
                <div class="product">
                    <img src="img/IMG-20231202-WA0017.jpg" alt="Product">
                    <h2>Product 2</h2>
                    <p>Price: $200</p>
                    <button>buy</button>
                </div>
                <div class="product">
                    <img src="img/IMG-20231202-WA0012.jpg" alt="Product">>
                    <h2>Product 3</h2>
                    <p>Price: $300</p>
                    <button>buy</button>
                </div>
                <div class="product">
                    <img src="img/IMG-20231202-WA0013.jpg" alt="Product">
                    <h2>Product 4</h2>
                    <p>Price: $400</p>
                    <button>buy</button>
                </div>
            </div>
        </div>
        <h2>current available products</h1>
        <div class="available-products">
            <%
                PlantService plantService = new PlantService();
                List<Plant> plants = plantService.getPlants();;
                int prodectNumber = 1;
                for (Plant plant : plants) {
            %>

            <div >
                <img width="500px" height="300px" src="<%=plant.getImage()%>" alt="Product">
                <h2>Product <%=prodectNumber++%></h2>
                <p>Price: $<%=plant.getPrice()%></p>

            </div>

            <% }%>
        </div>

</body>

</html>
