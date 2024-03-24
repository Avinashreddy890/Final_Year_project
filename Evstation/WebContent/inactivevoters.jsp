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

<button class="btn btn-danger" onclick="history.back()">Go back</button>
</div><br><br><br>
<body style="margin-left:20px;">

   <h2>  <span style="color:#86608E;"><center>INACTIVE VOTERS LIST</center>	</span></h2>
	
       <%
       
       Connection con;
       
      
       con=dbconn.create();
       PreparedStatement ps=con.prepareStatement("SELECT * FROM `jevoting`.`votinglist` where status='yettovote'  ");
       PreparedStatement pa=con.prepareStatement("SELECT count(*) FROM `jevoting`.`votinglist` where  status='Voted' ");
       PreparedStatement p=con.prepareStatement("SELECT count(*) FROM `jevoting`.`votinglist`  ");
       ResultSet rs=ps.executeQuery();
       ResultSet ra=pa.executeQuery();
       ResultSet r=p.executeQuery();
       while(ra.next()&&r.next())
       {
    
    	 
    	
    	   int tot=r.getInt(1);
    	int image=ra.getInt(1);
    	 System.out.println(image);  
    	   
    	 if(image>0){
       %>
      

<h3> Voters Total : <span style="color:tomato"><%=tot %></span></h3>
<%-- <h3> Voted persons count : <span style="color:tomato"><%=image %></span></h3> --%>
  <h3> Did not vote : <span style="color:tomato"><%=tot-image %></span></h3>
                <table class="table table-bordered">
  <thead>
    <tr>
      <th scope="col">ID</th>
      <th scope="col">NAME</th>
      <th scope="col">EMAIL</th>
      <th scope="col">MOBILE</th>
         <th scope="col">VOTER ID</th>
         <th scope="col">THUMB ID</th>
         <th scope="col">AADHAR NUMBER</th>
         <th scope="col">ADDRESS</th>
         <th scope="col">IMAGE</th>
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
       <td><p class="card-text"><%=rs.getString(5)%></p></td>
       <td><p class="card-text"><%=rs.getString(6)%></p></td>
       <td><p class="card-text"><%=rs.getString(7)%></p></td>
       <td><p class="card-text"><%=rs.getString(8)%></p></td>
        <td><p class="card-text"><%=rs.getString(9)%></p></td>
        <td><p class="card-text"><img class="card-img-top" src="product/<%=rs.getString(4)%>" width="-50" height="50" alt="Card image cap"></p></td>
      <%-- <td><a href="warningac.jsp?email=<%=rs.getString(7)%>"><button class="btn btn-danger">Warning</button></a></td>
      --%>
 
   </tr>
   </tbody>

	<%}} %>
</table>

</body>
</html>