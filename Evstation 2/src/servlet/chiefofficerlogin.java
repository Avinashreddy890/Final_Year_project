package servlet;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import Bean.pollingofficerregBean;
import imple.Imple;

/**
 * Servlet implementation class chiefofficerlogin
 */
@WebServlet("/chiefofficerlogin")
public class chiefofficerlogin extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public chiefofficerlogin() {
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
		
		String mail=request.getParameter("name");
		HttpSession ses=request.getSession();
		ses.setAttribute("usermail", mail);
		String pass=request.getParameter("pass");
		
		pollingofficerregBean ob=new pollingofficerregBean();
		ob.setEmail(mail);
		ob.setPassword1(pass);
	
		Imple ab=new Imple();
		boolean a=ab.userlog(ob);
		
		if(a==true) {
			response.sendRedirect("chiefmainpage.jsp");
		}else {
			response.sendRedirect("error.jsp");
		}
	}

}
