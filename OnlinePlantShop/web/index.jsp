

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%@ page import="java.util.Objects" %>

<%
    String errorMessage = (String) request.getAttribute("errorMessage");
    errorMessage = Objects.requireNonNullElse(errorMessage, ""); 
%>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Login Page</title>
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
        .container {
             display: flex;
            flex-direction: column;
           
        }
        .error-container{
           background-color: rgba(255, 255, 255, 0.01);
            padding: 30px;
            border-radius: 8px;
            box-shadow: 0 0 20px rgba(0, 0, 0, 0.1);
            width: 320px;
            text-align: center;
            margin-bottom: 20px;
           display: <%= errorMessage.isEmpty() ? "none" : "block" %>;
            color: red;
        }
        .login-container {
            background-color: rgba(255, 255, 255, 0.01);
            padding: 30px;
            border-radius: 8px;
            box-shadow: 0 0 20px rgba(0, 0, 0, 0.1);
            width: 320px;
            text-align: center;
            
        }

        .login-container h2 {
            color: #333;
            margin-bottom: 20px;
        }

        .login-form {
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

        .continue-as-buyer {
            margin-top: 20px;
        }

        .continue-as-buyer a {
            text-decoration: none;
            color: rgb(20,50,255);;
            font-weight: bold;
        }

        .continue-as-buyer a:hover {
            text-decoration: underline;
        }
     
    </style>
</head>
<body>
    <div class="container"> 
    <div class="error-container">
         <%= errorMessage %>
    </div>
    <div class="login-container">
        <h2>Login</h2>
        <form class="login-form" action="LoginServlet" method="post">
            <div class="form-group">
                <label for="username">Username</label>
                <input type="text" id="username" name="username" required>
            </div>
            <div class="form-group">
                <label for="password">Password</label>
                <input type="password" id="password" name="password" required>
            </div>
            <div class="form-group">
                <button type="submit">Login</button>
            </div>
        </form>
        <div class="continue-as-buyer">
            <p>Don't have an account? <a class="buyer-link" href="register.jsp">Create Account</a></p>
        </div>
    </div>
    </div>
</body>
</html>
