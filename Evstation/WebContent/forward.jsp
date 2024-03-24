<%@page import="java.nio.file.StandardOpenOption"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
 <%@page import="Dbconn.dbconn"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement" %>
<%@page import="java.sql.*" %>
<%@page import="java.util.*" %>
<%@page import="embed.embedd" %>
<%@page import="java.io.FileInputStream" %>
<%@page import="java.io.IOException" %>
<%@page import="java.io.PrintWriter" %>
<%@page import="java.text.SimpleDateFormat" %>
<%@page import=" java.util.Date" %>
<%@page import=" Bean.Block" %>
<%@page import=" servlet.StringUtil" %>
    <%@page import="Bean.AES2" %>
     <%@page import="java.io.File" %>
     <%@page import="java.io.FileWriter" %>
     <%@page import="java.io.*" %>
    <%@page import="Bean.randomstringgener" %>
   <%@page import="java.io.IOException" %>
   
    <%@page import="java.nio.file.Files" %>
    <%@page import="java.nio.file.Paths" %>
   
   <%@page import="java.nio.file.StandardOpenOption" %> 
   
   
   
    
   <% 
   
     
   
   %>
   
    <%
    
    String userid=request.getParameter("voteid");
	
	String amount=request.getParameter("amount");
	  String date=request.getParameter("date");
    String time=request.getParameter("time");
 	
	/*  String id=request.getParameter("id");
	String addresss=request.getParameter("address");
	String vehicle=request.getParameter("vehicle");
	System.out.println(vehicle); 
	
	
	 SimpleDateFormat formatter = new SimpleDateFormat("dd/MM/yyyy HH:mm:ss");  
	    Date date = new Date();  
	    System.out.println(formatter.format(date)); */  

	/* String vtype=session.getAttribute("voteid").toString();
	String amount=session.getAttribute("amount").toString(); */
	
	  AES2 aes = new AES2();
	
	
	
      aes.init();      
      String encrypteduserid = aes.encrypt(userid);
   System.out.println(encrypteduserid);          
	
   
   
   aes.init();
   String encryptedamount = aes.encrypt(amount);
System.out.println(encryptedamount);          
	


aes.init();
String encrypteddate = aes.encrypt(date);
System.out.println(encrypteddate);          



aes.init();
String encryptedtime = aes.encrypt(time);
System.out.println(encryptedtime);          



 
String prehash="";
String afterhash="";


Connection con;
con=dbconn.create();

try {
	PreparedStatement pa=con.prepareStatement("SELECT * FROM `evstation2`.recharge`");
	ResultSet rs=pa.executeQuery();
	while(rs.next()){
	
		afterhash=rs.getString(7);
		
	}
	 
} catch (SQLException e) {
	// TODO Auto-generated catch block
	e.printStackTrace();
}

System.out.println(afterhash);
prehash=afterhash;

 



System.out.println(afterhash);
prehash=afterhash;

 
 
  
Block genesisBlock = new Block("Hi im the first block", "0");


String phas=genesisBlock.hash;


Block secondBlock = new Block("Yo im the second block",genesisBlock.hash);
System.out.println("Hash for block 2 : " + secondBlock.hash);
String aphas=secondBlock.hash;






Connection con1=dbconn.create();

try {
	
	System.out.println("data  "+encrypteduserid);
	System.out.println(encryptedamount);
	System.out.println(encryptedtime);

	
	System.out.println(encrypteddate);
		
	
		PreparedStatement ps=con.prepareStatement("INSERT INTO chargingvehicle.emergency VALUES(id,?,?,?,?,?,?,?,?)");
		ps.setString(1, encrypteduserid);
		ps.setString(2, encryptedamount);
		ps.setString(3, encryptedtime);
		
		
		ps.setString(4, "Stored ");
		ps.setString(5, phas);
		ps.setString(6, aphas);
		ps.setString(7, encrypteddate);
		ps.setString(4, "Emergency Vehicle ");
		int n=ps.executeUpdate();

		System.out.println("data aaaaa "+encrypteduserid);

		
		
}catch(Exception e) {
e.printStackTrace();
	

}







File file=new File("C:\\Users\\Public\\Encrypted.txt");
boolean present=file.exists();
if (present==false){

try {
boolean created=file.createNewFile();

System.out.println("created");
FileWriter writer=new FileWriter(file);
writer.write(encrypteduserid+" "+encryptedamount+" "+encrypteddate+" "+encryptedtime);


writer.flush();
writer.close();
	

}catch(Exception e) {
e.printStackTrace();
	
}

}else{
	
	String path ="C:\\Users\\Public\\Encrypted.txt";
	String text=("\r\n"+(encrypteduserid+" "+encryptedamount+" "+encrypteddate+" "+encryptedtime));

	try{
		
		Files.write(Paths.get(path),text.getBytes(),StandardOpenOption.APPEND);
	}
	
	catch(IOException e)
	
	{
	}
	}
	

	
	
	response.sendRedirect("updatedsuccessfully.jsp");

	
	
		
			
			 
			 

    %>