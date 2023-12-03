<%@page import="java.util.Objects"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <%
        String errorMessage = (String) request.getAttribute("errorMessage");
        errorMessage = Objects.requireNonNullElse(errorMessage, "");
    %>
    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">

        <title>User Registration</title>

        <style>
            body {
                margin: 0;
                padding: 0;
                font-family: Arial, sans-serif;
                background: url('https://png.pngtree.com/background/20210709/original/pngtree-pink-flower-plant-floral-background-picture-image_280966.jpg') ;
                background-size: cover;
                height: 100vh;
                display: flex;
                align-items: center;
                justify-content: center;
            }


            .registration-container {
                background-color: rgba(255, 255, 255, 0.01);
                padding: 30px;
                border-radius: 8px;
                box-shadow: 0 0 20px rgba(0, 0, 0, 0.1);
                width: 320px;
                text-align: center;
            }
            .container {
                display: flex;
                flex-direction: column;


            }

            .error-container{
                margin-bottom: 20px;
                color: red;
            }
            .registration-container h2 {
                color: #333;
                margin-bottom: 20px;
            }

            .registration-form {
                margin-top: 20px;
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

            .form-group input[type="radio"] {
                width: auto;
                margin-right: 5px;
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
        </style>
    </head>
    <body>
        <div class="container"> 
            <div class="error-container">
                <%= errorMessage%>
            </div>
            <div class="registration-container">
                <h2>User Registration</h2>
                <form class="registration-form" action="register" method="post">
                    <div class="form-group">
                        <label for="username">Username</label>
                        <input type="text" id="username" name="username" required>
                    </div>
                    <div class="form-group">
                        <label for="password">Password</label>
                        <input type="password" id="password" name="password" required>
                    </div>
                    <div class="form-group">
                        <label for="confirmPassword">Confirm Password</label>
                        <input type="password" id="confirmPassword" name="confirmPassword" required>

                    </div>
                    <div class="form-group">
                        Seller
                        <input type="radio" id="seller" name="role" value="seller" required>
                        Buyer
                        <input type="radio" id="buyer" name="role" value="buyer" required>

                    </div>
                    <div class="form-group">
                        <button type="submit">Register</button>
                    </div>
                </form>
            </div>
        </div> 
    </body>
</html>
