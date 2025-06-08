<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Add New Player</title>

<style>
    body {
        font-family: Arial, sans-serif;
        background-color: #f0f8ff;
        margin: 0;
        padding: 40px;
    }

    .container {
        max-width: 500px;
        margin: auto;
        background-color: #ffffff;
        padding: 30px;
        border-radius: 10px;
        box-shadow: 0 0 15px rgba(0, 0, 0, 0.2);
    }

    h1 {
        text-align: center;
        color: #003366;
        margin-bottom: 30px;
    }

    input[type="text"],
    input[type="number"] {
        width: 100%;
        padding: 10px;
        margin: 10px 0;
        border: 1px solid #ccc;
        border-radius: 6px;
        box-sizing: border-box;
        font-size: 14px;
    }

    input[type="submit"] {
        width: 100%;
        padding: 12px;
        background-color: #28a745;
        color: white;
        border: none;
        border-radius: 6px;
        font-size: 16px;
        font-weight: bold;
        cursor: pointer;
        transition: background-color 0.3s ease;
    }

    input[type="submit"]:hover {
        background-color: #218838;
    }

</style>
</head>
<body>

<div class="container">
    <h1>Enter the Player Details</h1>
    <form action="add-player" method="post">
        <input type="number" placeholder="Enter the ID" name="id" required><br>
        <input type="text" placeholder="Enter the Title" name="title" required><br>
        <input type="number" placeholder="Enter the Age" name="age" required><br>
        <input type="text" placeholder="Enter the Team" name="team" required><br>
        <input type="text" placeholder="Enter the Nationality" name="nationality" required><br>
        <input type="submit" value="ADD">
    </form>
</div>

</body>
</html>
