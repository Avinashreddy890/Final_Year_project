<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@page import="Dbconn.dbconn"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement" %>
<%@page import="java.sql.*" %>
<%@page import="java.util.*" %>
<%@page import="java.io.FileInputStream" %>
<%@page import="java.io.IOException" %>
<%@page import="java.io.PrintWriter" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<link rel="stylesheet" href="css/bootstrap.min.css">
<link rel="stylesheet" href="css1/bootstrap.min.css">
</head>
<style>
.mydiv{
font-size:20px;
text-decoration:none;
float:right;
}
.customers
</style>
<div class="mydiv">
<!-- 
<a href="inactivevoters.jsp"><button class="btn btn-outline-warning" >Inactive Voters</button></a> -->
<button class="btn btn-danger" onclick="history.back()">Go back</button>
</div><br><br><br>
<body style="margin-left:20px;">

   <h2>  <span style="color:#86608E;"><center>DATA DECRYPTION</center>	</span></h2>
	
       <%
       
       Connection con;
       
      
       con=dbconn.create();
       PreparedStatement ps=con.prepareStatement("SELECT * FROM `evstation`.`recharge` where status3='B'  ");
       
       ResultSet rs=ps.executeQuery();
       ResultSet ra=ps.executeQuery();
       ResultSet r=ps.executeQuery();
       while(ra.next()&&r.next())
       {
    
    	 
    	
    	   int tot=r.getInt(1);
    	int image=ra.getInt(1);
    	 System.out.println(image);  
    	   
    	
    	 
    	 FileInputStream fis = new FileInputStream(file);
	        byte[] buffer = new byte[10];
	        StringBuilder sb = new StringBuilder();
	        while (fis.read(buffer) != -1) {
	        	sb.append(new String(buffer));
	        	buffer = new byte[10];
	        }
	        fis.close();

	        String content = sb.toString();   
	        
	        System.out.println(content);
	        
	        String decryptedMessage = aes.decrypt(content);

	        System.out.println(decryptedMessage);
	        
       %>
      
<h3>Total Vehicle : <span style="color:tomato"><%=tot %></span></h3>
<h3> Swapping count : <span style="color:tomato"><%=image %></span></h3>
  <h3>Others: <span style="color:tomato"><%=tot-image %></span></h3>
  <!-- <a href="forward.jsp" style="float:right;margin-top:-80px;margin-right:30px;"><button class="btn btn-outline-success" >Forward to chief</button></a>
   -->
                <table class="table table-bordered">
  <thead>
    <tr>
      <th scope="col">ID</th>
      <th scope="col">NAME</th>
      <th scope="col">EMAIL</th>
      
         <th scope="col">MOBILE NUMBER</th>
      <th scope="col">CARD ID</th>
         <th scope="col">VEHICLE</th>
         <th scope="col">LOCATION</th>
         <th scope="col">VEHICLE TYPE</th>
         <th scope="col">AMOUNT</th>
         <th scope="col">DATE-TIME</th>
    </tr>
  </thead>
   <% }%>
<%
           
   
       while(rs.next())
       {
    
    	    	
    	
    	
    	   
       %>
      

 <tbody>
    <tr>
	

	
	  <%--      <td><img src="Local/<>" width="70" height="70"/></td> --%>
     
   <td> <p class="card-text"><%=rs.getString(1)%></p></td>
       <td><p class="card-text"><%=rs.getString(2)%></p></td>

       <td><p class="card-text"><%=rs.getString(3)%></p></td>

       <td><p class="card-text"><%=rs.getString(4)%></p></td>
       <td><p class="card-text"><%=rs.getString(5)%></p></td>
       <td><p class="card-text"><%=rs.getString(6)%></p></td>
       <td><p class="card-text"><%=rs.getString(7)%></p></td>
       <td><p class="card-text"><%=rs.getString(8)%></p></td>
        <td><p class="card-text"><%=rs.getString(9)%></p></td>
        
        <td><p class="card-text"><%=rs.getString(15)%></p></td>
       <%--  <td><p class="card-text"><img class="card-img-top" src="product/<%=rs.getString(4)%>" width="-50" height="50" alt="Card image cap"></p></td>
       <td><a href="viewprofile.jsp?email=<%=rs.getString(3)%>"><button class="btn btn-danger">VIEW</button></a></td>
     --%>
 
   </tr>
   </tbody>

	<%} %>
</table>

</body>
</html>