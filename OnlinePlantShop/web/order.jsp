<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Plant Order Page</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            margin: 20px;
        }

        form {
            max-width: 600px;
            margin: 0 auto;
        }

        label {
            display: block;
            margin-bottom: 8px;
        }

        input,
        select {
            width: 100%;
            padding: 10px;
            margin-bottom: 15px;
            box-sizing: border-box;
        }

        button {
            background-color: #4caf50;
            color: white;
            padding: 10px 15px;
            border: none;
            border-radius: 5px;
            cursor: pointer;
        }

        button:hover {
            background-color: #45a049;
        }
    </style>
</head>

<body>
    <h2>Plant Order Form</h2>
    <form id="plantOrderForm" action="order" method="post">
        <!-- Contact Information -->
        <label for="fullName">Full Name:</label>
        <input type="text" id="fullName" name="fullName" required>


        <label for="phone">Phone:</label>
        <input type="tel" id="phone" name="phone" required>

        <!-- Plant Selection -->
        <label for="plantType">Select Plant Type:</label>
        <select id="plantType" name="plantType" required>
            <option value="rose">Rose</option>
            <option value="lily">Lily</option>
            <option value="fern">Fern</option>
        </select>

        <label for="quantity">Quantity:</label>
        <input type="number" id="quantity" name="quantity" min="1" required>

        
        

       
        <button type="submit">Place Order</button>
    </form>

    
<!--    <script>
        document.getElementById("plantOrderForm").addEventListener("submit", function (event) {
            event.preventDefault();
            
            alert("Order placed successfully!");
        });
    </script>-->

</body>

</html>
