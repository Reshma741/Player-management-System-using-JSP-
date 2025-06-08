<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Cricket Player Dashboard</title>

<style>
    body {
        font-family: Arial, sans-serif;
        background-color: #f0f8ff;
        margin: 0;
        padding: 40px;
    }

    .container {
        background-color: #ffffff;
        padding: 30px;
        border-radius: 12px;
        max-width: 600px;
        margin: auto;
        box-shadow: 0 0 15px rgba(0, 0, 0, 0.2);
        text-align: center;
    }

    h1 {
        color: #003366;
        margin-bottom: 30px;
    }

    a {
        background-color: green;
        color: white;
        padding: 10px 20px;
        margin: 10px;
        display: inline-block;
        text-decoration: none;
        border: none;
        border-radius: 8px;
        font-size: 16px;
        font-weight: bold;
        cursor: pointer;
        transition: background-color 0.3s ease;
    }

    a:hover {
        background-color: darkgreen;
    }

    h2 {
        margin-bottom: 20px;
    }
</style>
</head>
<body>
<div class="container">
    <h1>Player Details Dashboard</h1>

    <h2><a href="addPlayer.jsp">Add New Player</a></h2>

    <a href="display-all">Display All Players</a>
</div>
</body>
</html>
