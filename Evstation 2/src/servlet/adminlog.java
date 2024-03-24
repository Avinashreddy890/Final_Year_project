package servlet;

import java.io.IOException;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import Dbconn.dbconn;

/**
 * Servlet implementation class Adminlogin
 */
@WebServlet("/adminlog")
public class adminlog extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public adminlog() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		// TODO Auto-generated method stub
		Connection con;
		String email = req.getParameter("username");
		
		
		String ps = req.getParameter("password");
		
		if(email.equals("admin")&&ps.equals("admin")){

			resp.sendRedirect("mainpage.jsp");
			
			}else{
			
				resp.sendRedirect("error.jsp");
				
			}
	}
}
/* writer.write(encrypteduserid+" "+encryptedamount+" "+encrypteddate+" "+encryptedtime); */


/* writer.flush();
writer.close(); */
	
