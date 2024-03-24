<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@page import="Dbconn.dbconn"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.*"%>
<%@page import="java.util.*"%>
<%@page import="embed.embedd"%>
<%@page import="java.io.FileInputStream"%>
<%@page import="java.io.IOException"%>
<%@page import="java.io.PrintWriter"%>
<%@page import="java.util.Date"%>
<%@page import="java.time.format.DateTimeFormatter"%>
<%@page import="java.time.LocalDateTime"%>


<%@page import="java.text.SimpleDateFormat"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<link rel="stylesheet" href="css/bootstrap.min.css">
<link rel="stylesheet" href="css1/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/angularjs/1.6.9/angular.min.js"></script>
<link rel="stylesheet" href="css/bootstrap.min.css">
</head>
<style>
.mydiv {
	font-size: 20px;
	text-decoration: none;
	float: right;
}

body {
	width: 90%;
	margin-left: 120px;
}

.table {
	float: right;
	margin-right: -600px;
	margin-top: -350px;
}

.card {
	border: none;
}
</style>
<div class="mydiv">
	<button class="btn btn-danger" onclick="history.back()">Go
		back</button>
	</a>
</div>
<br>
<br>
<br>
<body>
	<%
	  DateTimeFormatter dtf = DateTimeFormatter.ofPattern("dd-MM-yyyy ");  
	   LocalDateTime now = LocalDateTime.now();  
	   System.out.println(dtf.format(now)); 
	   DateTimeFormatter dt1 = DateTimeFormatter.ofPattern("HH-mm-ss");  
	   LocalDateTime now1 = LocalDateTime.now();  
	   System.out.println(dt1.format(now)); 
	   
	
	
	
	
	/* 
	embedd ab = new embedd();
		ab.connect();

		embedd a = new embedd();
  */
		String c =  "522,100.00null";/*  a.r;  */
		System.out.println("ans is" + c);
		String amount = "";
		String hh = "";
		
		String hhh = "";
		
		String id = "";
		String time = "";
		if (c.contains("null")) {
			String m[] = c.split("null");

			 StringBuffer sb= new StringBuffer();
				for(int i=0; i<m.length; i++){
			sb.append(m[i]);
			System.out.println("ft");
				} 
			 	String str=sb.toString();
			 	System.out.println(str);
			  	String d[]=str.split(",");
			  
			  	 

			for (String i : d) {

				if (d.length == 1) {
					id = i;
					System.out.println("44444");
				
					
					
					/* 	System.out.println(id);
					
					
					 StringBuffer sb= new StringBuffer();
					for(int i=0; i>i.length; i++){
				sb.append(m[i]);
				
					}  */
 			/*   	String str=id.toString();
				 	System.out.println(str);
				  	String d[]=str.split(",");
				  	System.out.println(str);
				  	 */
				 /* 	String str=id.toString();
					String d[]=str.split(",");
					d[0]=hh;
					d[1]=hhh; */
				
				
				} else if (d.length == 2) {
					id = d[0];
					amount = d[1];
					System.out.println(id);

					System.out.println(amount);
					System.out.println("rrrrrrr");

				} else if (m.length >= 2) {
					for (int j = 0; j < m.length - 3; j++) {

					}
					id = m[0];
					amount = m[m.length - 2];
					System.out.println("tgtygygg");
				}
			}
		}

		else {
			String m[] = c.split(",");
			for (String i : m) {
				if (m.length == 1) {
					id = i;
				} else if (m.length == 2) {
					id = m[0];
					amount = m[1];
					System.out.println("tttttt");
				
				} else if (m.length >= 2) {
					for (int j = 0; j < m.length - 3; j++) {

					}
					id = m[m.length - 1];
					amount = m[m.length - 1];
					time = m[m.length - 2];
					System.out.println("666666");
				}
			}
		}

		/* embedd.toclose();  */
	%>
	
	
	
	<form action="forward.jsp" ng-app="">
		<div class="choose" style="margin-left: 20px;">
			<h3>Customer Emergency Vehicle Details</h3>
			</br> USER ID :
			<div style="padding: 10px;">
				<input type="text" placeholder="Scan the Id " value="<%=id%>"
					name="voteid"><br></br>
			</div>
			AMOUNT :
			<div style="padding: 10px;">
				<input type="text" placeholder="Scan the Amount "
					value="<%=amount%>" name="amount"><br></br>
			</div>
			DATE:
			<div style="padding: 10px;">
				<input type="text" placeholder="Scan the Date "
					value="<%=dtf.format(now)%>" name="date"><br></br>
			
			
			
			</div>
			TIME:
			<div style="padding: 10px;">
				<input type="text" placeholder="Scan the Time "
					value="<%=dt1.format(now)%>" name="time"><br></br>
			
			<%--  RECHARING TIME:
 <div style="padding:10px;" >	
<input type="text" placeholder="Scan the Time" value="<%=time%>"  name="time" ><br></br>
  --%>

			<input type="submit" value="submit">

		</div>

	</form>

	<%-- <%-- <%String an=session.getAttribute("tovote").toString();%>
<%if(an.equals("hell")){ %>
<%String thumbid=session.getAttribute("thumbid").toString();%>
<%String voteid=session.getAttribute("voteid").toString();%> --%>
	</br>
	</br>
	<div class="table">

		<!-- <h3>VEHICLE DETAILS</h3> -->

		<!-- <table class="table table-bordered">
		  <thead>
		    <tr>
		    
		      <th scope="col">Period1(8.30-9.20)</th>
		      <th scope="col"> Period2(9.20-10.10)</th>
		      <th scope="col">Period3(10.10-11.00)</th>
		         <th scope="col">Period4(11.00-11.50)</th>
		         <th scope="col">Period5(11.50 - 12.40)</th>
		         <th scope="col">Period6(12.40 - 01.30)</th>
		         <th scope="col">Period7(01.30 - 02.15)</th>
		         <th scope="col">Period8(02.15 - 03:00)</th>
		         <th scope="col">Period9(03:00 - 03:45)</th>
		       
		    </tr>
		  </thead> -->

		<%--   <%
       
       Connection con;
       
      
       con=dbconn.create();
       PreparedStatement ps=con.prepareStatement("SELECT * FROM `evstation`.`userreg` where thumb='"+thumbid+"'	"  );
       
       ResultSet rs=ps.executeQuery();
     
     while(rs.next())
       {
       	     	
    	String image=rs.getString(4);
    	  System.out.println(image);
    	   
       %>  --%>
		<%-- <div class="col-md-4">
<div class="card">
	<form action="newrecharge.jsp" method="post">

	  <div class="card-body">
	   
	 <%if(id.length()>0) {%>
	  <p class="card-text"><img class="card-img-top" src="product/<%=image%>" width="-20" height="100" alt="Card image cap"></p>
	  <p class="card-text" ><b>User Name </b>:  <input type="hidden" name="name" value="<%=rs.getString(2)%>" ></p>  
	    
   <p class="card-text"><b> User Email ID	</b>:	 <input type="hidden" name="mail" value="<%=rs.getString(3)%>" ></p>
    
      <p class="card-text"><b> User Phone</b>:  <input type="hidden" name="phone" value="<%=rs.getString(4)%>" ></p> 
      
     <p class="card-text"><b>Card ID</b>: <input type="text" name="id" value="<%=rs.getString(8)%>" ></p>  
    
         <p class="card-text"><b> Address</b>: <input type="text" name="address" value="<%=rs.getString(7)%>" ></p> 
         
    <p class="card-text"><b>Vehicle </b>: <input type="text" name="vehicle" value="<%=rs.getString(5)%>" ></p> --%>
		<%-- 
    
    
    <p class="card-text"><b>Booth Name</b> :<%=rs.getString(11)%></p>
    <p class="card-text"><b>Booth Id</b> :<%=rs.getString(12)%></p>
    <p class="card-text"><b>Location </b>:<%=rs.getString(13)%></p>
         <p class="card-text"><b>Status</b> :<%=rs.getString(10)%></p> --%>

		<!-- <input type="submit" value="submit"> -->

		<%--  <% } %> --%>
		</form>


		<%-- <%if(rs.getString(10).equals("yettovote")){ %>



     
    <a href="vote.jsp?id=<%=rs.getString(1)%>&&cd=<%=1 %>"> Accept to Vote<i class='fa fa-trash-alt'></i></a>
     <%}else{ %>
 <a href="vote.jsp?id=<%=rs.getString(1) %>&&cd=<%=2 %>"><span style="color:red;	">Decline</span><i class='fa fa-trash-alt'></i></a>
    <%} %>
    --%>
	</div>
	</div>
	</div>
	</div>
	<%-- <%}%>
	<a href="vote.jsp?cd=<%=3 %>"><span style="color:red;	">Decline</span><i class='fa fa-trash-alt'></i></a>
  
     <%}%> --%>


	</table>

</body>
</html>