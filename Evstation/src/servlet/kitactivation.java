package servlet;

import java.io.IOException;
import java.sql.Connection;
import java.sql.Statement;
import java.text.SimpleDateFormat;
import java.util.Date;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import Dbconn.dbconn;
import embed.embedd;
import embed.sendtoard;
import imple.Imple;

/**
 * Servlet implementation class kitactivation
 */
@WebServlet("/kitactivation")
public class kitactivation extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public kitactivation() {
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
		HttpSession ses=request.getSession();
		/*String num=ses.getAttribute("thumbid").toString();*/
		
		String id=request.getParameter("id");
		String thumb=request.getParameter("thumb");/*
		
		
		
		
		
		
		
		
		
		
		
		
		
		String uni=ses.getAttribute("uni").toString();
		*/
		/*String uni=request.getParameter("uni");*/
		
		
		/*try {
			
			Connection con=dbconn.create();
			Statement st=con.createStatement();
			st.executeUpdate("UPDATE jevoting.polofficereg p SET status1='"+id+"',status2='"+thumb+"' where id='"+uni+"' ");
			response.sendRedirect("completerecharge.jsp?valid");		
		}
		catch(Exception e){
			response.sendRedirect("error.jsp?invalid");
		System.out.println(e);
		}

		
		//sendtoard.go();
			
		
		}	else if(id.equals("D")){ 
			
			 SimpleDateFormat formatter = new SimpleDateFormat("dd/MM/yyyy HH:mm:ss");  
			    Date date = new Date();  
			    System.out.println(formatter.format(date));  

			try{
				
				Connection con=dbconn.create();
				Statement st=con.createStatement();
				st.executeUpdate("UPDATE evstation.recharge r SET status3='"+id+"',status4='"+thumb+"',status5='"+formatter.format(date)+"'  where id='"+uni+"' ");
				response.sendRedirect("mainpage.jsp?valid");		
			}
			catch(Exception e){
				response.sendRedirect("error.jsp?invalid");
			System.out.println(e);
			}
		}
			else if(id.equals("B")){ 

			 SimpleDateFormat formatter = new SimpleDateFormat("dd/MM/yyyy HH:mm:ss");  
			    Date date = new Date();  
			    System.out.println(formatter.format(date));  

			try{
				
				Connection con=dbconn.create();
				Statement st=con.createStatement();
				st.executeUpdate("UPDATE evstation.recharge r SET status3='"+id+"',status4='"+thumb+"',status5='"+formatter.format(date)+"'  where id='"+uni+"' ");
				response.sendRedirect("mainpage.jsp?valid");		
			}
			catch(Exception e){
				response.sendRedirect("error.jsp?invalid");
			System.out.println(e);
			}

		}
	}*/

}