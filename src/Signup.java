
import org.hibernate.*;
import org.hibernate.cfg.*;
import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class Signup
 */
@WebServlet("/Signup")
public class Signup extends HttpServlet {
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String question = request.getParameter("question");
		String username = request.getParameter("username");
		String email = request.getParameter("email");
		String answer = request.getParameter("answer");
		String password = request.getParameter("password");
		
		User u1 = new User(username, email, question, answer, password);
		
		Configuration cfg = new Configuration();
        cfg.configure("hibernate.cfg.xml");
        SessionFactory factory = cfg.buildSessionFactory();
        
        Session session = factory.openSession();
        Transaction tx = session.beginTransaction();
        session.save(u1);
        tx.commit();
        
        response.setContentType("text/html");
    	PrintWriter out = response.getWriter();
    	out.print("<body><script>alert('Account Created')</script></body>");
    	RequestDispatcher rd = request.getRequestDispatcher("login.jsp");
    	rd.include(request, response);
		
	}

}
