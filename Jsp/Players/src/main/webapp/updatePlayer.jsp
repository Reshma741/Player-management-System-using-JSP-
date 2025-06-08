<%@ page import="java.sql.ResultSet" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Update Player Details</title>

<style>
    body {
        font-family: Arial, sans-serif;
        background-color: #e6f2ff;
        margin: 0;
        padding: 40px;
    }

    .container {
        background-color: #ffffff;
        max-width: 500px;
        margin: auto;
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

    a {
        display: inline-block;
        margin-top: 20px;
        text-align: center;
        width: 100%;
        background-color: #007bff;
        color: white;
        padding: 10px;
        text-decoration: none;
        border-radius: 6px;
        font-weight: bold;
        transition: background-color 0.3s ease;
    }

    a:hover {
        background-color: #0056b3;
    }
</style>
</head>
<body>
<%
    ResultSet rs = (ResultSet) request.getAttribute("player");
    rs.next();
%>
<div class="container">
    <h1>Enter the Updated Details</h1>

    <form action="update-player" method="post">
        <input type="number" value="<%= rs.getInt(1) %>" name="id" readonly><br>
        <input type="text" value="<%= rs.getString(2) %>" name="title"><br>
        <input type="number" value="<%= rs.getInt(3) %>" name="age"><br>
        <input type="text" value="<%= rs.getString(4) %>" name="team"><br>
        <input type="text" value="<%= rs.getString(5) %>" name="nationality"><br>
        <input type="submit" value="UPDATE"><br>
    </form>

    <a href="dispalyAllplayer.jsp">Go Back to Display All Players</a>
</div>
</body>
</html>
