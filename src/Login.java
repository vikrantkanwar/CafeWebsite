

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
 * Servlet implementation class Login
 */
@WebServlet("/Login")
public class Login extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String email = request.getParameter("email");
		String password = request.getParameter("password");
		
		Configuration cfg = new Configuration();
        cfg.configure("hibernate.cfg.xml");
        SessionFactory factory = cfg.buildSessionFactory();
        
        Session session = factory.openSession();
        Transaction tx = session.beginTransaction();
        
        User u1 = session.get(User.class, email);
        
        if (u1 != null && u1.getPassword().equals(password)) {
        	HttpSession hs = request.getSession();
        	hs.setAttribute("username", u1.getUsername());
        	hs.setAttribute("email", u1.getEmail());
        	hs.setAttribute("password", u1.getPassword());
        	hs.setAttribute("question", u1.getQuestion());
        	hs.setAttribute("answer", u1.getAnswer());
        	
        	response.setContentType("text/html");
        	PrintWriter out = response.getWriter();
        	out.print("<body><script>alert('Login Successful')</script></body>");
        	RequestDispatcher rd = request.getRequestDispatcher("Welcome.jsp");
        	rd.include(request, response);
        } else {
        	response.setContentType("text/html");
        	PrintWriter out = response.getWriter();
        	out.print("<body><script>alert('Incorrect Details')</script></body>");
        	RequestDispatcher rd = request.getRequestDispatcher("login.jsp");
        	rd.include(request, response);
        }
	}
}


