
import java.sql.*;
import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class RemoveItem
 */
@WebServlet("/RemoveItem")
public class RemoveItem extends HttpServlet {
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String email = request.getParameter("email");
		String toRemove = request.getParameter("toRemove");
		
		try {
			
			String url = "jdbc:mysql://localhost:3306/cafe";
			String username = "root";
			String password = "1805";
			
			Connection con = DriverManager.getConnection(url, username, password);
			String query = "delete from orders where email=? and item=?";
			PreparedStatement pstmt = con.prepareStatement(query);
			pstmt.setString(1, email);
			pstmt.setString(2, toRemove);
			pstmt.executeUpdate();
			
			RequestDispatcher rd = request.getRequestDispatcher("cart.jsp");
			rd.forward(request, response);
		} catch(Exception e) {
			e.printStackTrace();
		}
		
	}

}
