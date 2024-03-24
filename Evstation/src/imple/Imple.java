package imple;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import Bean.pollingofficerregBean;
import Dbconn.dbconn;

public class Imple {
	Connection con;

	public int polofficerreg(pollingofficerregBean tb) {
		// TODO Auto-generated method stub
		
		int reg=0;
		
		con=dbconn.create();
		
		try {
 			
				PreparedStatement ps=con.prepareStatement("INSERT INTO evstation.polofficereg VALUES(id,?,?,?,?,?,?,?,?,?)");
				ps.setString(1, tb.getName());
				ps.setString(2, tb.getEmail());
				ps.setString(3, tb.getMobile());
				ps.setString(4, tb.getPassword1());
				ps.setString(5, tb.getPassword2());
				ps.setString(6, tb.getId());
				ps.setString(7, tb.getThumb());
				ps.setString(8, "");

				ps.setString(9, "not activate");
				reg=ps.executeUpdate();

} catch (SQLException e) {
// TODO Auto-generated catch block
e.printStackTrace();
}
		return reg;
	}	
		public int userreg(pollingofficerregBean tb) {
			// TODO Auto-generated method stub
			
			int reg=0;
			
			con=dbconn.create();
			
			try {
	 			
					PreparedStatement ps=con.prepareStatement("INSERT INTO chargingvehicle.userreg VALUES(id,?,?,?,?,?,?,?,?,?,?)");
					ps.setString(1, tb.getName());
					ps.setString(2, tb.getEmail());
					ps.setString(3, tb.getMobile());
					ps.setString(4, tb.getPassword1());
					ps.setString(5, tb.getPassword2());
					ps.setString(6, tb.getId());
					ps.setString(7, tb.getThumb());
					ps.setString(8, "");
					ps.setString(10, tb.getPath());
					
					ps.setString(9, "not activate");
					reg=ps.executeUpdate();

	} catch (SQLException e) {
	// TODO Auto-generated catch block
	e.printStackTrace();
	}
			
			
return reg;
	}
	
	public boolean polofficerlog(pollingofficerregBean tb) {
		// TODO Auto-generated method stub
		boolean log=false;
		 
		con=dbconn.create();
		
		 try {
				PreparedStatement ps=con.prepareStatement("SELECT * FROM `evstation`.`polofficereg` where email=? and pass2=? ");
				
				ps.setString(1, tb.getEmail());
				System.out.println(tb.getEmail());
				ps.setString(2, tb.getPassword1());
				
				ResultSet rs=ps.executeQuery();
				log=rs.next();
				
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		 System.out.println("success");
			return log;

	}
	
	
	public boolean userlog(pollingofficerregBean tb) {
		// TODO Auto-generated method stub
		boolean log=false;
		 
		con=dbconn.create();
		
		 try {
				PreparedStatement ps=con.prepareStatement("SELECT * FROM `evstation`.`userreg` where email=? and pass2=? ");
				
				ps.setString(1, tb.getEmail());
				System.out.println(tb.getEmail());
				ps.setString(2, tb.getPassword1());
				
				ResultSet rs=ps.executeQuery();
				log=rs.next();
				
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		 System.out.println("success");
			return log;

	}
	
	
	public boolean activation(String id,String thumb) {
		// TODO Auto-generated method stub
		boolean log=false;
		 
		con=dbconn.create();
		
		 try {
				PreparedStatement ps=con.prepareStatement("SELECT * FROM `evstation`.`polofficereg` where cardid=? and thumb=? and status='activate'");
				
				ps.setString(1,id);
				
				ps.setString(2,thumb);
				
				ResultSet rs=ps.executeQuery();
				log=rs.next();
				
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		
			return log;

	}
}
