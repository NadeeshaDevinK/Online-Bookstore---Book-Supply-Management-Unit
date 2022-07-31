<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<!-- Page Header Styles -->
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
</style>
<!-- Page Header Styles -->
<!-- Font-Awesome Icon pack-->
<script src="https://kit.fontawesome.com/a076d05399.js"></script>
<meta charset="ISO-8859-1">
<title>Admin Search Results</title>
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
	<h2 style="font-family:Courier New;">
	<c:forEach var="Admin" items="${adminDetails}"> 
		<c:set var="Username" value="${Admin.username}"/>
		<p>Admin:</p>${Admin.username}
	</c:forEach>
	</h2>
	</div>
</div>
<!-- Page Header section -->
<!-- Page Navigation section -->
<div class="innerpageNav" id="ul2">
	<div class="left1" id="li2">
	<a href="AdminSearchSupplyOrders.jsp">
		<font  style="font-family:Brush Script MT ; text-align:center;"><span>Book</span>Topia</font>
	</a>
    </div>
	<div  style="text-align:center;" class="right1" id="li2">
		<a id="li2 a" style="font-family:sans-serif;">
                    Placed Book Supply Orders
        </a>
    </div>
</div>
<br>
<!-- Page Navigation section -->
<!-- Page Body section -->

<div class="page-wrapper">
	<div class="container">
	<!-- Searched Data show Form -->
		<!-- Java Code for assign parameter names -->
		<%
			String orderID = request.getParameter("orderID");
			String supplyID = request.getParameter("supplyID");
			String orderTitle = request.getParameter("orderTitle");
			String supplierName = request.getParameter("supplierName");
			String orderDate = request.getParameter("orderDate");
			String bookName = request.getParameter("bookName");
			String noofBooks = request.getParameter("noofBooks");
		%>
		<!-- Java Code for assign parameter names -->
		<form action="update" method="post" >
		<fieldset > 
		<legend>Supply Request Details</legend>
		<div class="row">
			<div class="col-25" id="center">
				<label for="orderID">Order ID</label> 
			</div>
			<div class="col-75" style="width: 25%;">
				<input type="text" name="orderID" id="orderID" value="<%= orderID %>" readonly>
			</div>
		</div>
		<br>
		<!-- Supply order no -->
		<div class="row">
			<div class="col-25" id="center">
				<label for="supplyID">Supplier Order ID</label> 
			</div>
			<div class="col-75" style="width: 25%;">
				<input type="text" name="supplyID" id="supplyID" value="<%= supplyID %>">
			</div>
		</div>
		<br>
		<!-- Supply order no -->
		<!-- Supply order Title -->
		<div class="row">
			<div class="col-25" id="center">
				<label for="orderTitle">Supply Order Title</label> 
			</div>
			<div class="col-75">
				<input type="text" name="orderTitle" id="orderTitle" value="<%= orderTitle %>">
			</div>
		</div>
		<br>
		<!-- Supply order Title -->
		<!-- Supply Name -->
		<div class="row">
			<div class="col-25" id="center">
				<label for="supplierName">Publisher Name</label>
			</div>
			<div class="col-75">
				<input type="text" id="supplierName" name="supplierName" value="<%= supplierName %>" style="width: 25%;" readonly>&nbsp;&nbsp;&nbsp;<i>Book Publisher can't Change once created a Supply Order</i>
			</div>
		</div>
		<br>
		<!-- Supply Name -->
		<!-- OrderReqDate -->
		<div class="row">
			<div class="col-25" id="center">
				<label for="orderDate">Order Required Date</label> 
			</div>
			<div class="col-75" style="width:75%;">
				<input type="Date" name="orderDate" id="orderDate" value="<%= orderDate %>">
			</div>
		</div>
		<br>
		<!-- OrderReqDate -->
		</fieldset>
		<br>
		<!-- Book Details -->
		<fieldset > 
		<legend>Book Details</legend>
		<!-- Book Name -->
		<div class="row" >
			<div class="col-25" id="center">
				<label for="bookName">Book Name</label> 
			</div>
			<div class="col-75">
				<input type="text" id="bookName" name="bookName" value="<%= bookName %>">
			</div>
		<!-- Book Name -->
		</div>
		<!-- No of Books -->
		<br>
		<div class="row" >
			<div class="col-25" id="center">
				<label for="noofBooks">No of Books Ordered</label> 
			</div>
			<div class="col-75" style="width: 25%;">
				<input type="text" id="noofBooks" name="noofBooks" style="width: 25%;" value="<%= noofBooks %>">&nbsp;&nbsp;&nbsp;<i>*100,500,1000,2000,5000 </i>
			</div>
		
		</div> 
		</fieldset>
		<br>
		<!-- No of Books -->
		<!-- Book Details -->
		<!-- Update button -->
		<div class="pageNav" >
			<div class="left" id="center">
				<input type="submit" value="Update Supply order request" onclick="myFunction()">
			</div>
		<!-- Update button -->
		</div>
		</form>
		<!-- Searched Data show Form -->
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
<script>
function myFunction() {
  alert("Book Supply Order Updated Successful");
}
</script> 
</html>