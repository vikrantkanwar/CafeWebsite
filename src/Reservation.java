

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.hibernate.cfg.Configuration;

/**
 * Servlet implementation class Reservation
 */
@WebServlet("/Reservation")
public class Reservation extends HttpServlet {
	private static final long serialVersionUID = 1L;
       

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String fname = request.getParameter("data_1");
		String lname = request.getParameter("data_2");
		String phone = request.getParameter("data_3");
		String email = request.getParameter("data_4");
		String date = request.getParameter("data_5");
		String time = request.getParameter("data_6");
		String attendees = request.getParameter("data_7");
		String comments = request.getParameter("data_8");
		
		BookTable b1 = new BookTable(fname,lname,phone,email,date,time,attendees,comments);
		
		Configuration cfg = new Configuration();
        cfg.configure("hibernate.cfg.xml");
        SessionFactory factory = cfg.buildSessionFactory();
        
        Session session = factory.openSession();
        Transaction tx = session.beginTransaction();
        session.save(b1);
        tx.commit();
        
        response.setContentType("text/html");
    	PrintWriter out = response.getWriter();
    	out.print("<body><script>alert('Table Booked')</script></body>");
    	RequestDispatcher rd = request.getRequestDispatcher("reservation.jsp");
    	rd.include(request, response);
	}

}
