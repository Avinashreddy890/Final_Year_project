<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<style>
@import url("https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.2/css/all.min.css");
* {
    margin:0;
    padding:0;
    box-sizing:border-box;
}
body {
    width:100%;
    height:80vh;
}

.header {
    border:1px solid black;
    width:100%;
    height:750px;
  bockground-position:center;
  background-size:cover;
    background-image: linear-gradient(rgba(0,0,0,0.5), rgba(0,0,0,0.5)),url("images/homepage.avif");
    color: rgba(255,255,255,1);
    font-family: -apple-system, BlinkMacSystemFont, 'Segoe UI', Roboto, Oxygen, Ubuntu, Cantarell, 'Open Sans', 'Helvetica Neue', sans-serif;
}
.nav-menu {
    width:95%;
    height: 50px;
    display:flex;
    flex-direction:row;
    flex-wrap:wrap;
    justify-content: space-between;
    align-items:center;
    margin-top:6%;
    margin-left: 50px;
}
.nav-menu .logo {
    font-size: 45px;
    font-weight:600;
    padding-left: 20px;
}

.nav-menu .menu ul {
    list-style:none;
    display:flex;
    height:100%;
   
}
.nav-menu .menu ul li a {
    text-decoration:none;
    color: rgba(255,255,255,1);
    padding: 1em 1.5em;
    line-height: 1px;
    font-size:15px;
    text-transform: uppercase;
    
}
.nav-menu .menu li a:hover,
.nav-menu .menu li a.active {
    border:2px solid white;
    border-radius: 5px;
}
.banner {
    height: 400px;
    width: 60%;
    text-align: center;
    margin: 13% auto;
    font-family: 'Didact Gothic', sans-serif;
}
.banner h1 {
    font-size: 60px;
    font-weight:bold;

}
.banner p {
    padding-top:20px;
    font-size: 30px;
    color: rgba(255,255,255,0.60);
    font-weight:200;
    word-spacing: 1px;
}
.banner a {
    text-decoration: none;
    font-size:18px;
    color: rgba(255,255,255,1);
    margin: 90px auto;
    display: block;
    font-weight: bold;
    border: 2px solid rgba(255,255,255,1);
    width: 27%;
    height: 70px;
    line-height: 70px;
    text-align: center;
    border-radius: 7px;
}
.container {
    width:100%;
    height:600px;
    text-align:center;
    font-family: 'Didact Gothic', sans-serif;
}
.text {
    padding-top: 50px;
    margin-top:40px;
    
}
.text h1 {
    font-size: 30px;
    font-weight: 700;
    color: rgba(0,0,0,0.8);
}
.text p {
    font-size: 18px;
    color: rgba(0,0,0,.5);
    padding-top: 4px;

}
.main {
    width:90%;
    height: 400px;
    margin:50px 5%;
    display:flex;
    flex-direction: row;
    flex-wrap:wrap;
}
.single {
    width:33%;
    height:100%;
    text-align:center;
    padding: 40px 20px;
}
.single i {
    font-size: 45px;
}
.single p {
    padding-top:40px;
    color: rgba(0,0,0,0.6);
    display:block;
    line-height:180%;
    font-size: 14px;
}
.single a {
    text-decoration: none;
    color: rgba(0,0,0,0.8);
    font-size:18px;
    font-weight:700;
    width:45%;
    height:55px;
    line-height: 55px;
    border: 2px solid rgba(0,0,0,0.8);
    display:block;
    border-radius: 5px;
    margin: 40px auto;
}
footer {
    width:100%;
    height:600px;
    background-color: rgba(0,0,0,0.9);
    color: rgba(255,255,255,0.60);
    text-align:center;
}
footer h1 {
    font-size: 40px;
    font-weight: bold;
    color: rgba(255,255,255,0.9);
    padding-top: 30px;

}
footer p {
    font-size: 19px;
    padding-top: 4px;
    word-spacing: 2px;
}
footer .txt {
    display: inline-block;
    width:78%;
    height:86px;
    margin-top: 70px;
    font-weight: normal;
    font-size:16px;
    line-height: 180%;
    color: rgba(255,255,255,0.8);
}

footer a {
    text-decoration: none;
    font-size:18px;
    color: rgba(255,255,255,1);
    margin: 90px auto;
    display: block;
    font-weight: bold;
    border: 2px solid rgba(255,255,255,1);
    width: 18%;
    height: 75px;
    line-height: 75px;
    text-align: center;
    border-radius: 7px;
}</style>
</head>
<body>
<%session.setAttribute("tovote","hi"); %>
 <div class="header">
        <div class="nav-menu">
            <div class="logo">CHARGE HERE</div>
            <div class="menu">
                <ul>
                    <li><a href="index.jsp" class="active">Home page</a></li><!-- 
                    <li><a href="toactivatekit.jsp">To Activate Kit</a></li> -->
                    <li><a href="voting.jsp">Normal Vehicle</a></li>
                    <li><a href="readyvoting.jsp">Emergency Vehicle</a></li>
                 <!--    <li><a href="voteddetails.jsp">Battery Swapping List</a></li>
                    <li><a href="datadecryption.jsp">Data Decryption	</a></li> -->
                     <li><a href="index.jsp">Logout</a></li>
                </ul>
            </div>
        </div>
        <div class="banner"> 
            <h1>ELECTRIC CHARGING STATION </h1>
            <p>EVs are now a viable, everyday mode of transport, offering many benefits to individuals and businesses alike.</p>
            
        </div>
</div>
  
      
</div>
</body>
</html>