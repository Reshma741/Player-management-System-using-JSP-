<%@ page import="java.sql.ResultSet" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>All Players</title>

<style>
    body {
        font-family: Arial, sans-serif;
        background-color: #f0f8ff;
        padding: 40px;
        margin: 0;
    }

    h1 {
        text-align: center;
        color: #003366;
        margin-bottom: 30px;
    }

    table {
        width: 90%;
        margin: auto;
        border-collapse: collapse;
        background-color: #ffffff;
        box-shadow: 0 0 10px rgba(0,0,0,0.1);
    }

    th, td {
        padding: 12px 15px;
        border: 1px solid #ccc;
        text-align: center;
    }

    th {
        background-color: #003366;
        color: white;
    }

    tr:nth-child(even) {
        background-color: #f2f2f2;
    }

    a.action-link {
        padding: 6px 12px;
        text-decoration: none;
        border-radius: 6px;
        font-weight: bold;
        color: white;
        transition: background-color 0.3s ease;
    }

    a.update {
        background-color: #28a745;
    }

    a.update:hover {
        background-color: #218838;
    }

    a.delete {
        background-color: #dc3545;
    }

    a.delete:hover {
        background-color: #c82333;
    }

    .back-link {
        display: block;
        width: fit-content;
        margin: 30px auto 0;
        text-align: center;
        background-color: #007bff;
        color: white;
        padding: 10px 20px;
        text-decoration: none;
        border-radius: 6px;
        font-weight: bold;
        transition: background-color 0.3s ease;
    }

    .back-link:hover {
        background-color: #0056b3;
    }
</style>
</head>
<body>

<% 
    ResultSet rs = (ResultSet) request.getAttribute("players");
%>

<h1>All Player Details</h1>

<table>
    <tr>
        <th>Player ID</th>
        <th>Title</th>
        <th>Age</th>
        <th>Team</th>
        <th>Nationality</th>
        <th>Update</th>
        <th>Delete</th>
    </tr>

    <%
        while (rs.next()) {
    %>
    <tr>
        <td><%= rs.getInt(1) %></td>
        <td><%= rs.getString(2) %></td>
        <td><%= rs.getInt(3) %></td>
        <td><%= rs.getString("team") %></td>
        <td><%= rs.getString(5) %></td>
        <td><a href="find-by-id?id=<%= rs.getInt(1) %>" class="action-link update">Update</a></td>
        <td><a href="delete-by-id?id=<%= rs.getInt(1) %>" class="action-link delete">Delete</a></td>
    </tr>
    <% } %>
</table>

<a href="index.jsp" class="back-link">Go Back to Dashboard</a>

</body>
</html>
