<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%
String id = request.getParameter("orderID");
String driver = "com.mysql.jdbc.Driver";
String connectionUrl = "jdbc:mysql://localhost:3306/";
String database = "onlinebookstore";
String userid = "root";
String password = "ndksliit";
try {
Class.forName(driver);
} catch (ClassNotFoundException e) {
e.printStackTrace();
}
Connection connection = null;
Statement statement = null;
ResultSet resultSet = null;
%>
<!DOCTYPE html>
<html>
<head>
<!-- Page Styles -->
<style>
        .pageHead {
            display: flex;
        }

        .left {
            flex: 25%;
            padding: 15px 0;
        }

        .center {
            flex: 50%;
            padding: 15px 0;
        }
        .right {
            flex: 25%;
            padding: 15px 0;
        }
        /*Report gen table Styles*/
		table {
		  border-collapse: collapse;
		  width: 100%;
		  
		}
		
		th, td {
		  text-align: center;
		  padding: 8px;
		}
		
		tr:nth-child(even) {background-color: #f2f2f2;}
		
		th {
		  background-color: #04AA6D;
		  color: white;
		}
		
		/*Report gen table Styles*/
        
</style>
<!-- Page Styles -->
<!-- Font-Awesome Icon pack-->
<script src="https://kit.fontawesome.com/a076d05399.js"></script>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<!-- CSS Links -->
<link rel ="stylesheet" type="text/css" href="css/Styles.css">
<link rel ="stylesheet" type="text/css" href="css/Jobs & req.css">
<!-- CSS Links -->
</head>
<body>
<!-- Page Header section -->
<div class="pageHead">
	<div class="left">
		<img src = "images/logo.jpg" height="100px" width="150px" class="Logo" >
	</div>
	<div class="center" align="center">
		<h1 style="font-family:Brush Script MT;"><span>Book</span>Topia</h1>
		<h2 style="font-family:Courier New;">Your One stop BookStore</h2>
	</div >
	<div class="right">
	<h2 style="font-family:Courier New;"></h2>
	</div>
</div>
<!-- Page Header section -->
<!-- Page Navigation section -->
<div class="innerpageNav" id="ul2">
	<div class="left1" id="li2">
		<a href="PublisherHomePage.jsp">
		<font  style="font-family:Brush Script MT ; text-align:center;"><span>Book</span>Topia</font>
		</a>
    </div>
	<div  style="text-align:center;" class="right1" id="li2">
		<a id="li2 a" style="font-family:sans-serif;">
                    All Requested Book Supply Orders
        </a>
    </div>
</div>
<!-- Page Navigation section -->
<!-- Page Body section -->
<!-- Report gen Table section -->
<div class="page-wrapper">
	<div class="container">
		<div style="overflow-x: auto;" id="center">
		  <table border="1">
		    <tr>
		      <th>Supply Order No</th>
		      <th>Supply Order Title</th>
		      <th>Publisher Name</th>

		    </tr>
			    <%
				try{
				connection = DriverManager.getConnection(connectionUrl+database, userid, password);
				statement=connection.createStatement();
				String sql ="select * from bookorders";
				resultSet = statement.executeQuery(sql);
				while(resultSet.next()){
				%>
		      <tr>
		      <td><%=resultSet.getString("supplyID") %></td>
		      <td><%=resultSet.getString("orderTitle") %></td>
		      <td><%=resultSet.getString("supplierName") %></td>
		      </tr>
		      <%
			}
				
			connection.close();
			
			} 
		    catch (Exception e) {
		    	System.out.println("Exception:"+e.getMessage());
				e.printStackTrace();
			}
			%>
		    
	     </table>
		</div>
	<!-- Report Gen Table section -->
	<br>
	<br>
	<br>
	<br>
	<br>
	<br>
	<br>
	<br>
	<br>
	<br>
	<br>
	<br>
	<br>
	<br>
	<br>
	<br>
	<br>
	<br>
	<br>
	<br>
	<br>
	<br>
	</div>
</div>
<!-- Page Body section -->
<hr>
<!-- Footer -->
<div class="footer">
	
	<div class="footer-content">
		
		<div class="footer-section-about">
			
			<h1 style="font-family:Brush Script MT;"><span>Book</span>Topia</h1>
			
			<p>Experience online shopping in Sri Lanka with Upzing.com by purchasing genuine quality products 
			   showcased by verified sellers across the country that will ensure safe and swift deliveries of your orders.
			</p>
			
			<h3> Our Location </h3>
			<font size="3">No 220.<br> Malwaththa Rd, <br> Colombo 03 <br> E-Mail :- BookTopia@Gmail.com 
			
			</font>
			
			
			
			
			
			
		</div>	
			
		<div class="footer-section-links">
			<h2>Quick Links</h2>
			<br>
			<ul class="b">
				<a href="#"><li>Home</li></a>
				<a href="#"><li>About US</li></a>
				<a href="#"><li>Contact US</li></a>
				<a href="TermsConditions.jsp"><li>Terms & Conditions</li></a>
			</ul>
		</div>
		
		
		
		<div class="footer-section-contact-form">
			<h2>Contact Us</h2>
			
			<h3> Hotline : 011-289-566-1</h3>
		
			<div class="socials">
				<a href="#"><i class="fab fa-facebook"></i></a>
				<a href="#"><i class="fab fa-instagram"></i></a>
				<a href="#"><i class="fab fa-twitter"></i></a>
				<a href="#"><i class="fab fa-youtube"></i></a>
			</div>
			
			<form action="index.html" method"post">
			<input type="email" name="email" class="input" placeholder="Your email address...">
			<textarea name="Message" class="input" placeholder="Your message..."></textarea>
			
			<button type="submit" class="inputbutton"> 
			<i class="fas fa-envelope"></i>
			Send 
			</button>
		</div>
	</div>
	

	<div class="footer-bottom">
		
		&copy; BookTopia.com | Designed by KRLN Designers
	</div>

</div>
<!-- /Footer-->
</body>
</html>