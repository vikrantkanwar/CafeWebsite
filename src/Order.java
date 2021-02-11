

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.hibernate.cfg.Configuration;

/**
 * Servlet implementation class Order
 */
@WebServlet("/Order")
public class Order extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		HttpSession hs = request.getSession();
		String email = hs.getAttribute("email").toString();
		String item = request.getParameter("item");
		String quantity = request.getParameter("quantity");
		String price = request.getParameter("price");
		
		Item i1 = new Item(email, item, quantity, price);
		
		Configuration cfg = new Configuration();
        cfg.configure("hibernate.cfg.xml");
        SessionFactory factory = cfg.buildSessionFactory();
        
        Session session = factory.openSession();
        Transaction tx = session.beginTransaction();
        session.save(i1);
        tx.commit();
        
        response.setContentType("text/html");
    	PrintWriter out = response.getWriter();
    	out.print("<body><script>alert('Added To Cart')</script></body>");
    	RequestDispatcher rd = request.getRequestDispatcher("menu.jsp");
    	rd.include(request, response);
	}

}
