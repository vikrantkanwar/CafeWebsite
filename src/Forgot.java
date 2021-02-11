

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
 * Servlet implementation class Forgot
 */
@WebServlet("/Forgot")
public class Forgot extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String email = request.getParameter("email");
		String newpassword = request.getParameter("password");
		String question = request.getParameter("question");
		String answer = request.getParameter("answer");
		
		Configuration cfg = new Configuration();
        cfg.configure("hibernate.cfg.xml");
        SessionFactory factory = cfg.buildSessionFactory();
        
        Session session = factory.openSession();
        Transaction tx = session.beginTransaction();
        
        User u1 = session.get(User.class, email);
        
        if (u1 != null && u1.getQuestion().equals(question) && u1.getAnswer().equals(answer)) {
        	u1.setPassword(newpassword);
        	session.update(u1);
        	session.getTransaction().commit();
        	response.setContentType("text/html");
        	PrintWriter out = response.getWriter();
        	out.print("<body><script>alert('Password Changed')</script></body>");
        	RequestDispatcher rd = request.getRequestDispatcher("login.jsp");
        	rd.include(request, response);
        } else {
        	response.setContentType("text/html");
        	PrintWriter out = response.getWriter();
        	out.print("<body><script>alert('Incorrect details')</script></body>");
        	RequestDispatcher rd = request.getRequestDispatcher("reset.jsp");
        	rd.include(request, response);
        }
	}

}
