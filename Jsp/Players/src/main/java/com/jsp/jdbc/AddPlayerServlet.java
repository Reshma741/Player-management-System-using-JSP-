package com.jsp.jdbc;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/add-player")

public class AddPlayerServlet extends HttpServlet {

	@Override
		protected void doPost(HttpServletRequest req,HttpServletResponse resp) throws ServletException,IOException{ 
		int id=Integer.parseInt(req.getParameter("id"));
		String title =req.getParameter("title");
		int age=Integer.parseInt(req.getParameter("age"));
		String team =req.getParameter("team");
		String nationality=req.getParameter("nationality");
		
		//JDBC LOGIC
		Connection conn =null;
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			conn= DriverManager.getConnection(
					"jdbc:mysql://localhost:3306/servlet_playerdb?user=root&password=root");
			PreparedStatement pst =conn.prepareStatement(
					"INSERT INTO player VALUES (?,?,?,?,?)");
			pst.setInt(1,id);
			pst.setString(2,title);
			pst.setInt(3,age);
			pst.setString(4,team);
			pst.setString(5,nationality);
					
			pst.executeUpdate();
			resp.sendRedirect("index.jsp");
		}
		catch(ClassNotFoundException | SQLException e) {
			e.printStackTrace();
		}
		finally {
			if(conn!=null) {
				try {
					conn.close();
				}
				catch(SQLException e) {
					e.printStackTrace();
				}
			}
		}
		

	}

}
