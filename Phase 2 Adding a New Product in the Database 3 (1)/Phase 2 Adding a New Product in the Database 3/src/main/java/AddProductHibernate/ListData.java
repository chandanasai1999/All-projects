package AddProductHibernate;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.hibernate.Session;
import org.hibernate.SessionFactory;


@WebServlet("/list")
public class ListData extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		PrintWriter out= response.getWriter();
		response.setContentType("text/html");
		SessionFactory factory = HibernateUtilConfig.getSessionFactory();
		Session session = factory.openSession();
		
		List<Product> list= session.createQuery("from Product").list();
 		
		out.print("<h1>product List</h1><hr>");
		for(Product p:list)
		{
			out.print(p.getId()+" "+p.getName()+" "+p.getPrice()+" "+p.getStock()+"<br><br>");
		}
		System.out.println("Product details displayed");
		
		session.close();
		
		out.print("<a href='index.jsp'>Home Page</a>");
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
