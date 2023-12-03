
<%@page import="java.util.Objects"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%
    String errorMessage1 = (String) request.getAttribute("errorMessage1");
    errorMessage1 = Objects.requireNonNullElse(errorMessage1, "");
    String successMessage1 = (String) request.getAttribute("successMessage1");
    successMessage1 = Objects.requireNonNullElse(successMessage1, "");
    String errorMessage2 = (String) request.getAttribute("errorMessage2");
    errorMessage2 = Objects.requireNonNullElse(errorMessage2, "");
    String successMessage2 = (String) request.getAttribute("successMessage2");
    successMessage2 = Objects.requireNonNullElse(successMessage2, "");
%>



<html lang="en">
    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>Seller Dashboard</title>
        <style>
            body {
                margin: 0;
                padding: 0;
                font-family: Arial, sans-serif;
                background: url('https://png.pngtree.com/background/20210709/original/pngtree-pink-flower-plant-floral-background-picture-image_280966.jpg') ;
                background-size: cover;

                display: flex;
                flex-direction: column;

            }

            header {
                background-color: #F1D1C8;
                color: #000000;
                padding: 20px;
                text-align: center;
            }

            h3 {
                text-align: center;
            }


            .container {
                display: flex;
                justify-content: space-around;
                flex-direction: row;
                margin-top: 50px;
            }

            .form-container {
                background-color: rgba(255, 255, 255, 0.8);
                padding: 20px;
                border-radius: 8px;
                box-shadow: 0 0 10px rgba(0, 0, 0, 0.3);
                width: 320px;
                display: flex;
                flex-direction: column;
            }

            .form-group {
                margin-bottom: 15px;
            }

            .form-group label {
                display: block;
                font-weight: bold;
                margin-bottom: 5px;
                text-align: left;
            }

            .form-group input {
                width: 100%;
                padding: 10px;
                box-sizing: border-box;
                border: 1px solid #ccc;
                border-radius: 4px;
                margin-bottom: 10px;
            }

            .form-group button {
                width: 100%;
                padding: 12px;
                background-color: #4caf50;
                color: #fff;
                border: none;
                border-radius: 4px;
                cursor: pointer;
            }

            .form-group button:hover {
                background-color: #45a049;
            }

            .error-container{
                margin-bottom: 20px;
                color: red;
            }
            .error-container{
                margin-bottom: 20px;
                color: green;
            }

        </style>
    </head>
    <body>
        <%
            if (session.getAttribute("seller") == null || !((boolean) session.getAttribute("seller"))) {
                response.sendRedirect("index.jsp");
            }


        %>
        <header>
            <h1>Seller Dashboard</h1>
        </header>







        <div class="container">
            <div class="form-container">

                <div class="error-container">
                    <%=errorMessage1%>
                </div>
                <div class="success-container">
                    <%=successMessage1%>
                </div>

                <form action="ReceiptServlet" method="post">

                    <h3>Issue Receipt</h3>
                    <div class="form-group">
                        <label for="plantName">Plant Name:</label>
                        <input type="text" id="plantName" name="plantName" required>
                    </div>
                    <div class="form-group">
                        <label for="plantAge">Plant Age:</label>
                        <input type="number" id="plantAge" name="plantAge" required>
                    </div>
                    <div class="form-group">
                        <label for="plantPrice">Plant Price:</label>
                        <input type="number" id="plantPrice" name="plantPrice" required>
                    </div>

                    <div class="form-group">
                        <button type="submit">Issue Receipt</button>
                    </div>
                </form>
            </div>




            <div class="form-container">

                <div class="error-container">
                    <%=errorMessage2%>
                </div>
                <div class="success-container">
                    <%=successMessage2%>
                </div>

                <form action="seller" method="post">
                    <h3>Add Plant</h3>
                    <div class="form-group">
                        <label for="newPlantName">Plant Name:</label>
                        <input type="text" id="newPlantName" name="newPlantName" required>
                    </div>
                    <div class="form-group">
                        <label for="newPlantAge">Plant Age:</label>
                        <input type="number" id="newPlantAge" name="newPlantAge" required>
                    </div>
                    <div class="form-group">
                        <label for="newPlantPrice">Plant Price:</label>
                        <input type="number" id="newPlantPrice" name="newPlantPrice" required>
                    </div>
                    <div class="form-group">
                        <label for="newPlantType">Plant Type</label>
                        <input type="text" id="newPlantPrice" name="newPlanttype" required>
                    </div>
                    <div class="form-group">
                        <label for="plantImage">Plant Image Link:</label>
                        <input type="text" id="plantImage" name="plantImage" required>
                    </div>
                    <div class="form-group">
                        <button type="submit">Add Plant</button>
                    </div>
                </form>
            </div>
        </div>



    </body>
</html>

