<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="ISO-8859-1">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Update Book</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f0f2f5;
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
            margin: 0;
        }
        .container {
            text-align: left;
            background-color: #fff;
            padding: 40px;
            border-radius: 10px;
            box-shadow: 0 0 15px rgba(0, 0, 0, 0.2);
            width: 90%;
            max-width: 400px;
        }
        h2 {
            color: #333;
            margin-bottom: 30px;
            text-align: center;
        }
        form {
            display: flex;
            flex-direction: column;
        }
        label {
            margin: 8px 0 4px;
            color: #555;
            font-weight: bold;
        }
        input[type="text"] {
            width: 100%;
            padding: 12px;
            margin: 8px 0 16px;
            border: 1px solid #ccc;
            border-radius: 5px;
            font-size: 16px;
        }
        input[type="submit"], input[type="reset"] {
            padding: 12px;
            margin: 10px 0;
            font-size: 16px;
            color: #fff;
            border: none;
            border-radius: 5px;
            cursor: pointer;
            transition: background-color 0.3s;
        }
        input[type="submit"] {
            background-color: #007bff;
        }
        input[type="reset"] {
            background-color: #6c757d;
        }
        input[type="submit"]:hover {
            background-color: #0056b3;
        }
        input[type="reset"]:hover {
            background-color: #5a6268;
        }
        a {
            display: block;
            margin-top: 20px;
            padding: 12px 20px;
            font-size: 16px;
            color: #fff;
            background-color: #28a745;
            text-decoration: none;
            border-radius: 5px;
            text-align: center;
            transition: background-color 0.3s;
        }
        a:hover {
            background-color: #218838;
        }
    </style>
</head>
<body>
    <div class="container">
        <h2>Update Book Here</h2>
        <form action="UpdateBookServlet" method="post">
            <label for="id">Book Id</label>
            <input type="text" id="id" name="id" placeholder="Book ID" required>
            <label for="title">Book Title</label>
            <input type="text" id="title" name="title" placeholder="Title" required>
            <label for="author">Book Author</label>
            <input type="text" id="author" name="author" placeholder="Author" required>
            <label for="price">Book Price</label>
            <input type="text" id="price" name="price" placeholder="Price" required>
            <input type="submit" value="Submit">
            <input type="reset" value="Cancel">
        </form>
        <a href="index.jsp">Go to Home</a>
    </div>
</body>
</html>
