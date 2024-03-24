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
.res{
margin-left:40px;
}
body{
background-image: url(css/istockphoto-483320707-612x612.jpg);

background-size:cover;

}
</style>
<div class="mydiv">
<!-- 
<a href="inactivevoters.jsp"><button class="btn btn-outline-warning" >Inactive Voters</button></a> -->
<button class="btn btn-danger" onclick="history.back()">Go back</button>
</div><br><br><br>
<body style="margin-left:20px;">

   <h2>  <span style="color:#86608E;"><center>VOTING COUNT RESULT</center>	</span></h2>
	
       <%
       
       Connection con;
       
      
       con=dbconn.create();
       PreparedStatement ps=con.prepareStatement("SELECT * FROM `jevoting`.`votinglist` where status='Voted' and forward='Forward' ");
       PreparedStatement pa=con.prepareStatement("SELECT count(*) FROM `jevoting`.`votinglist` where  status='Voted' and forward='Forward'");
       PreparedStatement dmk=con.prepareStatement("SELECT count(*) FROM `jevoting`.`votinglist` where  status='Voted' and forward='Forward' and Partiesname='DMK'");
       
       PreparedStatement admk=con.prepareStatement("SELECT count(*) FROM `jevoting`.`votinglist` where  status='Voted' and forward='Forward' and Partiesname='ADMK'");
       PreparedStatement bjp=con.prepareStatement("SELECT count(*) FROM `jevoting`.`votinglist` where  status='Voted' and forward='Forward' and Partiesname='BJP'");
       PreparedStatement nota=con.prepareStatement("SELECT count(*) FROM `jevoting`.`votinglist` where  status='Voted' and forward='Forward' and Partiesname='NOTA'");
       
       PreparedStatement p=con.prepareStatement("SELECT count(*) FROM `jevoting`.`votinglist`  ");
       ResultSet rs=ps.executeQuery();
       ResultSet ra=pa.executeQuery();
       ResultSet dm=dmk.executeQuery();
       ResultSet adm=admk.executeQuery();
       ResultSet bj=bjp.executeQuery();
       ResultSet not=nota.executeQuery();
      
       ResultSet r=p.executeQuery();
       while(ra.next()&&r.next()&&dm.next()&&adm.next()&&bj.next()&&not.next())
       {
    	   int image=ra.getInt(1);
    	   if(image>0){
    	 
    	   int dmtot=dm.getInt(1);
    	   int admtot=adm.getInt(1);
    	   int bjtot=bj.getInt(1);
    	   int nottot=not.getInt(1);
    	   int tot=r.getInt(1);
    	  
    	 System.out.println(image);  
    	   
    	 int a=(int) dmtot*100/tot;
    	 int b= (int)admtot*100/tot;
    	 int c=(int)bjtot*100/tot;
    	 int d= (int)nottot*100/tot;
    	 
    	 int temp;
    	 int large;
    	 int largest;
       %>
      <div class="res">
<h3> Voters Total : <span style="color:tomato;margin-left:250px;"><%=tot %></span></h3>
<h3> Voted persons count : <span style="color:tomato;margin-left:140px;"><%=image %></span></h3>
  <h3> Did not vote : <span style="color:tomato;margin-left:250px;"><%=tot-image %></span></h3>
   <h3> For DMK: <span style="color:tomato;margin-left:300px;"><%=dmtot*100/tot %>%</span></h3>
    <h3> For ADMK: <span style="color:tomato;margin-left:280px;"><%=admtot*100/tot %>%</span></h3>
     <h3> For BJP: <span style="color:tomato;margin-left:320px;"><%=bjtot*100/tot %>%</span></h3>
          <h3> For NOTA: <span style="color:tomato;margin-left:290px;"><%=nottot*100/tot %>%</span></h3>
          
     
         <center>
          <%if(a>b&&a>c&&a>d){%>
        	  <h2 style="color:green">The Winners is: DMK</h2>
        <%  }
          else if(b>c&&b>d){%>
        	  <h2 style="color:green">The Winners is: ADMK</h2>
        <%  }
          else if(c>d){%>
        	  <h2 style="color:green">The Winners is: BJP</h2>
        <%  }
          else{%>
        	  <h2 style="color:green">The NOTA voting value is greater than Others....</h2>
        <%  }
          %></center> 
  <!-- <a href="forward.jsp" style="float:right;margin-top:-80px;margin-right:30px;"><button class="btn btn-outline-success" >Inactive Voters</button></a>
   -->
              <%--   <table class="table table-bordered">
  <thead>
    <tr>
      <th scope="col">ID</th>
      <th scope="col">NAME</th>
      <th scope="col">EMAIL</th>
      <th scope="col">MOBILE</th>
         <th scope="col">VOTER ID</th>
         <th scope="col">THUMB ID</th>
          <th scope="col">WARD NUMBER</th>
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
	

	
	       <td><img src="Local/<>" width="70" height="70"/></td>
     
   <td> <p class="card-text"><%=rs.getString(1)%></p></td>
       <td><p class="card-text"><%=rs.getString(2)%></p></td>


       <td><p class="card-text"><%=rs.getString(3)%></p></td>
       <td><p class="card-text"><%=rs.getString(5)%></p></td>
       <td><p class="card-text"><%=rs.getString(6)%></p></td>
       <td><p class="card-text"><%=rs.getString(7)%></p></td>
           <td><p class="card-text"><%=rs.getString(21)%></p></td>
       <td><p class="card-text"><%=rs.getString(8)%></p></td>
        <td><p class="card-text"><%=rs.getString(9)%></p></td>
        <td><p class="card-text"><img class="card-img-top" src="product/<%=rs.getString(4)%>" width="-50" height="50" alt="Card image cap"></p></td>
      <td><a href="warningac.jsp?email=<%=rs.getString(7)%>"><button class="btn btn-danger">Warning</button></a></td>
     
 
   </tr>
   </tbody>
 --%>
	<%}} %>
</table>
</div>
</body>
</html>