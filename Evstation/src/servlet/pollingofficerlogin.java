package servlet;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import Bean.pollingofficerregBean;
import imple.Imple;

/**
 * Servlet implementation class pollingofficerlogin
 */
@WebServlet("/pollingofficerlogin")
public class pollingofficerlogin extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public pollingofficerlogin() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
		
		
		String name=request.getParameter("username");
		System.out.println(name);
		String password=request.getParameter("password");
		
		
		
		
		pollingofficerregBean ob=new pollingofficerregBean();
		ob.setEmail(name);
		ob.setPassword1(password);
	
		Imple ab=new Imple();
		boolean a=ab.polofficerlog(ob);
		
		if(a==true) {
			response.sendRedirect("mainpage.jsp");
		}else {
			response.sendRedirect("error.jsp");
		}
	}

}
