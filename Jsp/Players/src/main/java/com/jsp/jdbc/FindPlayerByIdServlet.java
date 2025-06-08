package com.jsp.jdbc;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/find-by-id")
public class FindPlayerByIdServlet  extends HttpServlet{
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
	   int playerId=Integer.parseInt(req.getParameter("id"));
	   
	   //jdbc logic 
	   Connection conn =null;
		try 
		{
			Class.forName("com.mysql.cj.jdbc.Driver");
			conn= DriverManager.getConnection(
					"jdbc:mysql://localhost:3306/servlet_playerdb?user=root&password=root");
			PreparedStatement pst =conn.prepareStatement("select * from player WHERE id=?");
			pst.setInt(1,playerId);
			ResultSet rs= pst.executeQuery();
			
			///transfering the result set display the page
			
			req.setAttribute("player", rs);//what
			req.getRequestDispatcher("updatePlayer.jsp").forward(req, resp);//WHERE
			
		
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
