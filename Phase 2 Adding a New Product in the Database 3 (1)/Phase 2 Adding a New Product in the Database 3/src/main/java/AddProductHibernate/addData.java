package AddProductHibernate;

import java.io.IOException;
import java.io.PrintWriter;
import java.math.BigDecimal;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;

@WebServlet("/add")
public class addData extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		
		response.setContentType("text/html");
		PrintWriter out = response.getWriter();

		String name= request.getParameter("name");
		String pprice= request.getParameter("price");
		BigDecimal price= new BigDecimal(pprice);
		String stockk= request.getParameter("stock");
		int stock= Integer.parseInt(stockk);
	
		
		SessionFactory factory = HibernateUtilConfig.getSessionFactory();
		Session session = factory.openSession();

		Transaction t = session.beginTransaction();
		Product p1= new Product(name, price, stock);
		session.save(p1);
		t.commit();
		session.close();
		response.getWriter().print("<h1 align='center'>Data Inserted Successfully</h1>");
		
		out.print("<a href='list'>Click here for the list</a>");
		

	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}
